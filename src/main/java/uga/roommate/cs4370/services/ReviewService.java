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
    public Review createReview() throws SQLException {
        System.out.println("To be implemented.");
        return null;
    }

    private List<String> extractTags() {
        System.out.println("To be implemented.");
        return null;
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
