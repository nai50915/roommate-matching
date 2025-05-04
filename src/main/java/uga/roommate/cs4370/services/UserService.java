package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import uga.roommate.cs4370.models.User;

/**
 * This is a service class that enables user related functions.
 * The class interacts with the database through a dataSource instance.
 * See authenticate and registerUser functions for examples.
 * This service object is spcial. It's lifetime is limited to a user session.
 * Usual services generally have application lifetime.
 */
@Service
@SessionScope
public class UserService {

    // dataSource enables talking to the database.
    private final DataSource dataSource;
    // passwordEncoder is used for password security.
    private final BCryptPasswordEncoder passwordEncoder;
    private User loggedInUser = null;

    /**
     * See AuthInterceptor notes regarding dependency injection and
     * inversion of control.
     */
    @Autowired
    public UserService(DataSource dataSource) {
        this.dataSource = dataSource;
        this.passwordEncoder = new BCryptPasswordEncoder();
    }

    /**
     * Authenticate user given the username and the password and
     * stores user object for the logged in user in session scope.
     * Returns true if authentication is succesful. False otherwise.
     */
    public boolean authenticate(String username, String password) throws SQLException {
        final String sql = "select * from user where username = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, username);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    String storedPasswordHash = rs.getString("password");
                    boolean isPassMatch = passwordEncoder.matches(password, storedPasswordHash);
                    if (isPassMatch) {
                        String userId = rs.getString("userId");
                        String firstName = rs.getString("firstName");
                        String lastName = rs.getString("lastName");
                        loggedInUser = new User(userId, null, firstName, lastName, null, null, null, null);
                    }
                    return isPassMatch;
                }
            }
        }
        return false;
    }

    /**
     * Logs out the user.
     */
    public void unAuthenticate() {
        loggedInUser = null;
    }

    /**
     * Checks if a user is currently authenticated.
     */
    public boolean isAuthenticated() {
        return loggedInUser != null;
    }

    /**
     * Retrieves the currently logged-in user.
     */
    public User getLoggedInUser() {
        return loggedInUser;
    }

    /**
     * Registers a new user with the given details.
     * Returns true if registration is successful. If the username already exists,
     * a SQLException is thrown due to the unique constraint violation, which should
     * be handled by the caller.
     */
    public boolean registerUser(String username, String password, String firstName, String lastName, String description,
            String imageUrl)
            throws SQLException {
        final String registerSql = "insert into user (username, password, firstName, lastName, description, imageUrl) values (?, ?, ?, ?, ?, ?)";

        try (Connection conn = dataSource.getConnection();
                PreparedStatement registerStmt = conn.prepareStatement(registerSql)) {
            registerStmt.setString(1, username);
            registerStmt.setString(2, passwordEncoder.encode(password));
            registerStmt.setString(3, firstName);
            registerStmt.setString(4, lastName);
            registerStmt.setString(5, description);
            registerStmt.setString(6, imageUrl);

            int rowsAffected = registerStmt.executeUpdate();
            return rowsAffected > 0;
        }
    }

    /**
     * Finds a user based on their first and last name
     * 
     * @param firstName
     * @param lastName
     * @return user if found
     */
    public User findByFirstAndLastName(String firstName, String lastName) {
        String sql = "SELECT * FROM user WHERE firstName = ? AND lastName = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, firstName);
            stmt.setString(2, lastName);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    String userId = rs.getString("userId");
                    String username = rs.getString("username");
                    String firstNameFound = rs.getString("firstName");
                    String lastNameFound = rs.getString("lastName");
                    String bio = rs.getString("description");
                    String imagePath = rs.getString("imageUrl");
                    User user = new User(userId, username, firstNameFound, lastNameFound, bio, imagePath, null, null);
                    return user;
                } else {
                    return null;
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error finding user", e);
        }
    }

}