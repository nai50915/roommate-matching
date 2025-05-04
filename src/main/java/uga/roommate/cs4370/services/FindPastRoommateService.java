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

    public List<User> getAllUsersExcept(String userId) throws SQLException {
        List<User> allUsers = new ArrayList<>();
        String sql = "SELECT * FROM user " +
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
                    String firstName = rs.getString("firstName");
                    String lastName = rs.getString("lastName");
                    String userIdStr = rs.getString("userId");
                    // String username = rs.getString("username");
                    // String bio = rs.getString("bio");
                    // String imagePath = rs.getString("imagePath");
                    // List<String> tags = new ArrayList<>();
                    // String tagsStr = rs.getString("tags");
                    
                    User user = new User(userIdStr, null, firstName, lastName, null, null, null, null);

                    allUsers.add(user);
                }
            }
        }
        return allUsers;
    }

    // Add method to add a past roommate
    public void addPastRoommate(int currentUserId, int newRoommateId) throws SQLException {
        System.out.println("Adding past roommate: " + currentUserId + " witth " + newRoommateId);
        pastRoommateService.addPastRoommate(currentUserId, newRoommateId); // Call the method in PastRoommateService
    }
}
