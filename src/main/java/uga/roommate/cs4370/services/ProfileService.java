package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.ArrayList;

import uga.roommate.cs4370.models.Review;
import uga.roommate.cs4370.models.User;

/**
 * This is a service class to assist in building the profile page.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class ProfileService {
    private final DataSource dataSource;

    @Autowired
    public ProfileService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * Retrieve the information for the user.
     * 
     * @param userId
     * @return
     */
    public User getUser(String userId) throws SQLException {
        System.out.println("GETUSER: To be tested.");
        String sql = "SELECT username, firstName, lastName, description, imageUrl FROM user WHERE userId = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String username = rs.getString("username");
                    String firstName = rs.getString("firstName");
                    String lastName = rs.getString("lastName");
                    String bio = rs.getString("description");
                    String imagePath = rs.getString("imageUrl");
                    List<String> attributes = getAttributes(userId);
                    List<String> tags = getTags(userId);
                    User user = new User(userId, username, firstName, lastName, bio, imagePath, tags, attributes);
                    return user;
                }
            }
        }
        /*
         * We have the user's userId. we use this to get the
         * profile picture, first name, last name, bio, attributes, and tags of the user
         * we also need to calculate the overall rating of the user.
         * (done in a helper function)
         */
        return null;
    }

    /**
     * Retrieves personally prescribed attributes of user
     * 
     * @param userId
     * @return attributes
     * @throws SQLException
     */
    private List<String> getAttributes(String userId) throws SQLException {
        List<String> attributes = new ArrayList<>();
        String sql = "SELECT a.name FROM userAttributes ua " +
                "JOIN allUserAttributes a ON ua.attrId = a.attrId " +
                "WHERE ua.userId = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    attributes.add(rs.getString("name"));
                }
            }
        }
        return attributes;
    }

    /**
     * Retrieves the tags for a user (from reviews)
     * 
     * @param userId
     * @return tags
     * @throws SQLException
     */
    private List<String> getTags(String userId) throws SQLException {
        System.out.println("GETTAGS: To be tested.");
        List<String> tags = new ArrayList<>();
        String sql = "SELECT t.tagName FROM userTag u, tag t WHERE userId = ? AND u.tagId = t.tagId";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String tag = rs.getString("tagName");
                    tags.add(tag);
                }
            }
        }
        System.out.println(tags);
        return tags;
    }

    /**
     * Calculate the current user's overall rating from reviews
     * 
     * @param userId
     * @return double representing average user rating
     * @throws SQLException
     */
    private double getRating(String userId) throws SQLException {
        System.out.println("GETRATING: To be tested.");
        String sql = "SELECT AVG(rating) FROM review WHERE revieweeId = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble(1);
                }
            }
        }
        return -1;
    }

    /**
     * Retrieve the reviews for a user
     * 
     * @return
     */
    private List<Review> getReviews(String userId) {
        /*
         * we have the user's userId. we use this to find all the
         * reviews written about them. then from those reviews, we take
         * the content, reviewerId, and get the upvote count and downvote
         * count.
         * using the reviewerId, we get the profilepicture, firstname, and
         * lastname
         */
        System.out.println("To be implemented.");
        return null;
    }

}
