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
     * Retrieve the reviews for a user for their profile
     * @return
     */
    public List<Review> getProfile () {
        System.out.println("To be implemented.");
        return null;
    }
}
