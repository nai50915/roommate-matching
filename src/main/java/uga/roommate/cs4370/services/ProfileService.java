package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import uga.roommate.cs4370.models.ProfileReview;
import uga.roommate.cs4370.models.Review;
import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.models.ProfileReview;
import uga.roommate.cs4370.models.Attribute;

import uga.roommate.cs4370.services.VoteService;

/**
 * This is a service class to assist in building the profile page.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class ProfileService {
    private final DataSource dataSource;
    private final VoteService voteService;

    private static final Map<String, String> TAG_MAP = Map.of(
            "Clean", "Clean",
            "Messy", "Messy",
            "EB", "Early Bird",
            "NO", "Night Owl",
            "LS", "Light Sleeper",
            "Smoker", "Smoker",
            "Drinker", "Drinker",
            "Pets", "Pets",
            "NP", "No Pets");

    @Autowired
    public ProfileService(DataSource dataSource, VoteService voteService) {
        this.dataSource = dataSource;
        this.voteService = voteService;
    }

    /**
     * Retrieve the information for the user.
     * 
     * @param userId
     * @return user user object with information
     * @throws SQLException
     */
    public User getUser(String userId) throws SQLException {
        System.out.println("GETUSER: Attempting to fetch user with ID: " + userId);

        String sql = "SELECT username, firstName, lastName, description, imageUrl FROM user WHERE userId = ?";

        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, userId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String username = rs.getString("username");
                    String firstName = rs.getString("firstName");
                    String lastName = rs.getString("lastName");
                    String bio = rs.getString("description");
                    String imagePath = rs.getString("imageUrl");

                    List<Attribute> attributes = getAttributes(userId);
                    ArrayList<String> tags = getTags(userId);

                    User user = new User(userId, username, firstName, lastName, bio, imagePath, tags, attributes);
                    System.out.println("GETUSER: Successfully created User object: " + username);
                    return user;
                } else {
                    System.err.println("GETUSER ERROR: No user found with ID: " + userId);
                    throw new SQLException("No user found for userId: " + userId);
                }
            }
        }
    }

    /**
     * Retrieves personally prescribed attributes of user
     * 
     * @param userId
     * @return attributes
     */
    public List<Attribute> getAttributes(String userId) {
        List<Attribute> attributes = new ArrayList<>();

        String sql = "SELECT a.attrId, a.name, a.category " +
                "FROM userAttributes ua " +
                "JOIN allUserAttributes a ON ua.attrId = a.attrId " +
                "WHERE ua.userId = ?";

        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, userId);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Attribute attr = new Attribute(
                            rs.getInt("attrId"),
                            rs.getString("name"),
                            rs.getString("category"));
                    attributes.add(attr);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return attributes;
    }

    /**
     * Retrieves the tags for a user (from reviews)
     * 
     * @param userId
     * @return tags
     */
    public ArrayList<String> getTags(String userId) {
        ArrayList<String> tags = new ArrayList<>();
        String sql = "SELECT DISTINCT t.tagName " +
                "FROM user u, tag t, reviewTag tg, review r " +
                "WHERE userId = ? AND u.userId = r.revieweeId AND " +
                "r.reviewId = tg.reviewId AND tg.tagId = t.tagId";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String tag = rs.getString("tagName");
                    String tagFull = TAG_MAP.getOrDefault(tag, tag);
                    tags.add(tagFull);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (tags.isEmpty()) {
            tags.add("No tags yet");
        }

        System.out.println(tags);
        return tags;
    }

    /**
     * Calculate the current user's overall rating from reviews
     * 
     * @param userId
     * @return double representing average user rating
     */
    public double getRating(String userId) {
        System.out.println("GETRATING: To be tested.");
        String sql = "SELECT AVG(ratingValue) FROM review WHERE revieweeId = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble(1);
                } else
                    return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    /**
     * Retrieve the reviews for a user
     * 
     * @param userId user
     * @return reviews list of reviews for the user
     */
    public List<ProfileReview> getReviews(String userId) {
        System.out.println("GETREVIEW: To be tested.");
        List<ProfileReview> reviews = new ArrayList<>();

        String sql = "SELECT r.reviewId AS reviewId, " +
                "ee.firstName AS revieweeFirstName, " +
                "er.firstName AS reviewerFirstName, " +
                "er.imageUrl AS reviewerImg, " +
                "r.content AS content " +
                "FROM review r " +
                "JOIN user er ON r.reviewerId = er.userId " +
                "JOIN user ee ON r.revieweeId = ee.userId " +
                "WHERE r.revieweeId = ? " +
                "ORDER BY r.createdAt DESC";

        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String reviewId = rs.getString("reviewId");
                    String revieweeFirstName = rs.getString("revieweeFirstName");
                    String reviewerFirstName = rs.getString("reviewerFirstName");
                    String reviewerImg = rs.getString("reviewerImg");
                    String content = rs.getString("content");
                    int upvoteCount = voteService.countUpvotes(reviewId);
                    int downvoteCount = voteService.countDownvotes(reviewId);

                    ProfileReview review = new ProfileReview(
                            reviewId, revieweeFirstName, reviewerFirstName, reviewerImg, content, upvoteCount, downvoteCount);
                    reviews.add(review);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(reviews);
        return reviews;
    }
}