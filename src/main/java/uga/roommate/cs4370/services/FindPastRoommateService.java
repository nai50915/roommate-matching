package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uga.roommate.cs4370.models.User;

/**
 * This is a service class to assist in building the find past-roommate page.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class FindPastRoommateService {
    private final DataSource dataSource;
    private final PastRoommateService pastRoommateService;
    private final ProfileService profileService;

    @Autowired
    public FindPastRoommateService(DataSource dataSource, PastRoommateService pastRoommateService,
            ProfileService profileService) {
        this.profileService = profileService;
        this.pastRoommateService = pastRoommateService;
        this.dataSource = dataSource;
    }

    /**
     * Retrieve all the users except logged-in user
     * 
     * @param userId logged in user
     * @return allUsers list of all users
     * @throws SQLException
     */
    public List<User> getAllUsersExcept(String userId) throws SQLException {
        List<User> allUsers = new ArrayList<>();
        String sql = "SELECT userId FROM user " +
                "WHERE userId != ? " +
                "AND userId NOT IN ( " +
                "    SELECT userB FROM pastRoommate WHERE userA = ? " +
                "    UNION " +
                "    SELECT userA FROM pastRoommate WHERE userB = ? " +
                ")";

        try (Connection conn = dataSource.getConnection();
                PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, userId);
            stmt.setString(2, userId);
            stmt.setString(3, userId);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    String newUserId = rs.getString("userId");
                    User user = profileService.getUser(newUserId);
                    allUsers.add(user);
                }
            }
        }
        return allUsers;
    }

    /**
     * Add a past roommate 
     * 
     * @param currentUserId logged in user
     * @param newRoommateId user to add as roommmate
     * @throws SQLException
     */
    public void addPastRoommate(int currentUserId, int newRoommateId) throws SQLException {
        System.out.println("Adding past roommate: " + currentUserId + " witth " + newRoommateId);
        pastRoommateService.addPastRoommate(currentUserId, newRoommateId); // Call the method in PastRoommateService
    }
}
