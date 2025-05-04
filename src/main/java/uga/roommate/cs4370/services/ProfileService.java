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
        System.out.println("GETUSER: Attempting to fetch user with ID: " + userId);

        String sql = "SELECT username, firstName, lastName, description, imageUrl FROM user WHERE userId = ?";

        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
<<<<<<< HEAD

            ps.setString(1, userId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
=======
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
                    String username = rs.getString("username");
                    String firstName = rs.getString("firstName");
                    String lastName = rs.getString("lastName");
                    String bio = rs.getString("description");
                    String imagePath = rs.getString("imageUrl");
<<<<<<< HEAD

                    List<Attribute> attributes = getAttributes(userId);
                    ArrayList<String> tags = getTags(userId);

                    User user = new User(userId, username, firstName, lastName, bio, imagePath, tags, attributes);
                    System.out.println("GETUSER: Successfully created User object: " + username);
                    return user;
                } else {
                    System.err.println("GETUSER ERROR: No user found with ID: " + userId);
                    throw new SQLException("No user found for userId: " + userId);
=======
                    List<String> attributes = getAttributes(userId);
                    List<String> tags = getTags(userId);
                    User user = new User(userId, username, firstName, lastName, bio, imagePath, tags, attributes);
                    return user;
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
                }
            }
        }
        /*
         * We have the user's userId. we use this to get the
         * profile picture, first name, last name, bio, attributes, and tags of the user
         * we also need to calculate the overall rating of the user.
         * (done in a helper function)
         */
    }

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

    /**
     * Retrieves personally prescribed attributes of user
     * 
     * @param userId
     * @return attributes
     * @throws SQLException
     */
    public List<Attribute> getAttributes(String userId) throws SQLException {
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
        }

        return attributes;
    }

    /**
<<<<<<< HEAD
     * Retrieves the tags for a user (from reviews)
     * 
     * @param userId
=======
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
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
     * @return tags
     * @throws SQLException
     */
    public ArrayList<String> getTags(String userId) {
        System.out.println("GETTAGS: To be tested.");
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
<<<<<<< HEAD
                    String tagFull = TAG_MAP.getOrDefault(tag, tag);
                    tags.add(tag);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
=======
                    tags.add(tag);
                }
            }
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
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
     * @throws SQLException
     */
    public double getRating(String userId) throws SQLException {
        System.out.println("GETRATING: To be tested.");
        String sql = "SELECT AVG(ratingValue) FROM review WHERE revieweeId = ?";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble(1);
<<<<<<< HEAD
                } else
                    return 0;
=======
                }
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
            }
        }
    }

    /**
     * Retrieve the reviews for a user
     * 
     * @return
     */
<<<<<<< HEAD
    public List<ProfileReview> getReviews(String userId) throws SQLException {
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

                    ProfileReview review = new ProfileReview(
                            reviewId, revieweeFirstName, reviewerFirstName, reviewerImg, content);
                    reviews.add(review);
                }
            }
        }

        System.out.println(reviews);
        return reviews;
    }
=======
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

>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
}
