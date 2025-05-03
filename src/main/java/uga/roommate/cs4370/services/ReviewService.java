package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

@Service
public class ReviewService {
    private final DataSource dataSource;

    @Autowired
    public ReviewService(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    /**
     * Create a new review in the database
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
        List<Review> reviews = new ArrayList<>();
        /*
        for this, we need to make sure we account for the loggedInUser to see if
        they have voted on a review 
        */
        System.out.println("To be implemented.");
        return null;
    }

}
