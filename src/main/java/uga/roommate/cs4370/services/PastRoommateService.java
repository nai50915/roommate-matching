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
public class PastRoommateService {
    private final DataSource dataSource;

    @Autowired
    public PastRoommateService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void addPastRoommate(int userId1, int userId2) throws SQLException {
        int userA = Math.min(userId1, userId2);
        int userB = Math.max(userId1, userId2);

        String sql = "INSERT INTO pastRoommate (userA, userB) VALUES (?, ?)";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userA);
            stmt.setInt(2, userB);
            stmt.executeUpdate();
        }
    }

    public void removePastRoommate(int userId1, int userId2) throws SQLException {
        int userA = Math.min(userId1, userId2);
        int userB = Math.max(userId1, userId2);

        String sql = "DELETE FROM pastRoommate WHERE userA = ? AND userB = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userA);
            stmt.setInt(2, userB);
            stmt.executeUpdate();
        }
    }

    public List<User> getPastRoommates(String userId) throws SQLException {
        List<User> pastRoommates = new ArrayList<>();
        String sql = "SELECT u.* FROM user u " +
                     "JOIN pastRoommate pr ON (pr.userA = ? AND u.userId = pr.userB) " +
                     "OR (pr.userB = ? AND u.userId = pr.userA)";

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, userId);
            stmt.setString(2, userId);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String firstName = rs.getString("firstName");
                String lastName = rs.getString("lastName");
                String userIdStr = rs.getString("userId");
                User user = new User(userIdStr, firstName, lastName);

                pastRoommates.add(user);
            }
        }
        return pastRoommates;
    }
}
