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
    public ProfileService (DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * Retrieve the information for the current user.
     * @param userId
     * @return
     */
    private User getUser (String userId) {
        /*
        We have the user's userId. we use this to get the 
        profile picture, first name, last name, bio, and tags of the user
        we also need to calculate the overall rating of the user. 
        (done in a helper function)
         */
        System.out.println("To be implemented.");
        return null;
    }

    /**
     * Calculate the current user's overall rating from reviews
     * @param userId
     * @return
     */
    private int getRating (String userId) {
        /*
        we have the user's userId. we use this and the review table
        to get all the reviews written for this user. 
        then we add up all the ratings from these reviews and take the
        average 
        */
        System.out.println("To be implemented.");
        return -1;
    }

    /**
     * Retrieve the reviews for a user 
     * @return
     */
    private List<Review> getReviews (String userId) {
        /*
        So we have the user's userId. we use this to find all the 
        reviews written about them. then from those reviews, we take
        the content, reviewerId, and get the upvote count and downvote
        count.
        using the reviewerId, we get the profilepicture, firstname, and
        lastname 
        */
        System.out.println("To be implemented.");
        return null;
    }


}
