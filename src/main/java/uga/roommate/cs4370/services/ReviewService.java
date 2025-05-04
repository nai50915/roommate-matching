package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.sql.DataSource;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uga.roommate.cs4370.models.Review;
import uga.roommate.cs4370.models.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static java.sql.Statement.RETURN_GENERATED_KEYS;

/**
 * This is a service class to assist in building the review page.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class ReviewService {
    private final DataSource dataSource;
    private final VoteService voteService;
    private final ProfileService profileService;

    @Autowired
    public ReviewService(DataSource dataSource, VoteService voteService, ProfileService profileService) {
        this.dataSource = dataSource;
        this.voteService = voteService;
        this.profileService = profileService;
    }
    
    /**
     * Create review in database
     * 
     * @param reviewerId reviewer
     * @param revieweeId reviewee
     * @param content content of review
     * @param ratingValue rating, 1-5
     * @param selectedTags tags for reviewee by reviewer
     * @return true if created successfully, false if not 
     */
    public boolean createReview(int reviewerId, int revieweeId, String content, int ratingValue, List<String> selectedTags) {
        Connection conn = null;
    
        try {
            conn = dataSource.getConnection();
            conn.setAutoCommit(false); 
    
            String reviewSql = "INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (?, ?, ?, ?)";
            try (PreparedStatement reviewStmt = conn.prepareStatement(reviewSql, RETURN_GENERATED_KEYS)) {
                reviewStmt.setInt(1, reviewerId);
                reviewStmt.setInt(2, revieweeId);
                reviewStmt.setString(3, content);
                reviewStmt.setInt(4, ratingValue);
    
                int affectedRows = reviewStmt.executeUpdate();
                if (affectedRows == 0) {
                    throw new SQLException("Creating review failed, no rows affected.");
                }
    
                int reviewId;
                try (ResultSet generatedKeys = reviewStmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        reviewId = generatedKeys.getInt(1);
                    } else {
                        throw new SQLException("Creating review failed, no ID obtained.");
                    }
                }
    
                String tagSql = "INSERT INTO reviewTag (tagId, reviewId) VALUES ((SELECT tagId FROM tag WHERE tagName = ?), ?)";
                try (PreparedStatement tagStmt = conn.prepareStatement(tagSql)) {
                    for (String tagName : selectedTags) {
                        tagStmt.setString(1, tagName);
                        tagStmt.setInt(2, reviewId);
                        tagStmt.addBatch();
                    }
                    tagStmt.executeBatch();
                }
            }
    
            conn.commit(); 
            return true;
    
        } catch (SQLException e) {
            if (conn != null) {
                try {
                    conn.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            e.printStackTrace();
            return false;
    
        } finally {
            if (conn != null) {
                try {
                    conn.setAutoCommit(true);
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    
    /**
     * Retrieve all reviews from the database
     * @return reviews A list of all the reviews 
     */
    public List<Review> getAllReviews() {
        System.out.println("Getting reviews...");
        List<Review> reviews = new ArrayList<>();
        String sql = "SELECT * FROM review ORDER BY createdAt DESC";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    String reviewId = rs.getString("reviewId");
                    String reviewerId = rs.getString("reviewerId");
                    String revieweeId = rs.getString("revieweeId");
                    String content = rs.getString("content");
                    String ratingValue = rs.getString("ratingValue");
                    String reviewDate = rs.getString("createdAt");

                    int upvoteCount = voteService.countUpvotes(reviewId);
                    int downvoteCount = voteService.countDownvotes(reviewId);

                    User reviewer = profileService.getUser(reviewerId);
                    User reviewee = profileService.getUser(revieweeId);

                    if (reviewer.getImagePath() == null || reviewer.getImagePath().isEmpty()) {
                        reviewer.setImagePath("/images/default.png");
                    }
                    if (reviewee.getImagePath() == null || reviewee.getImagePath().isEmpty()) {
                        reviewee.setImagePath("/images/default.png");
                    }
    

                    ArrayList<String> tags = getReviewTags(reviewId);

                    DateTimeFormatter parser = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                    LocalDateTime localDateTime = LocalDateTime.parse(reviewDate, parser);
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMM dd, yyyy, hh:mm a");
                    String formattedPostDate = formatter.format(localDateTime);

                    int rating = Integer.valueOf(ratingValue);

                    Review review = new Review (reviewId, content, reviewer, reviewee,
                                                formattedPostDate, upvoteCount, downvoteCount, rating, tags);
                    
                    System.out.println(review);

                    reviews.add(review);
                }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reviews;
    }

    /**
     * Retrieves the tags for a review 
     * 
     * @param userId
     * @return tags 
     * @throws SQLException
     */
    private ArrayList<String> getReviewTags(String reviewId) {
        System.out.println("GETTAGS: To be tested.");
        ArrayList<String> tags = new ArrayList<>();
        String sql = "SELECT t.tagName FROM reviewTag r, tag t WHERE r.reviewId = ? AND r.tagId = t.tagId";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, reviewId);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        String tag = rs.getString("tagName");
                        tags.add(tag);
                    }
                }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(tags);
        return tags;
    }

}
