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

    @Autowired
    public FindPastRoommateService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<User> getAllUsersExcept(int userId) throws SQLException {
        List<User> allUsers = new ArrayList<>();
        String sql = """
            SELECT * FROM user
            WHERE userId != ?
              AND userId NOT IN (
                  SELECT userB FROM pastRoommate WHERE userA = ?
                  UNION
                  SELECT userA FROM pastRoommate WHERE userB = ?
              )
        """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            stmt.setInt(2, userId);
            stmt.setInt(3, userId);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    String firstName = rs.getString("firstName");
                    String lastName = rs.getString("lastName");
                    String userIdStr = rs.getString("userId");
                    User user = new User(userIdStr, firstName, lastName);

                    allUsers.add(user);
                }
            }
        }
        return allUsers;
    }
}
