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
 * This is a service class to assist in building the home page.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class HomeService {
    private final DataSource dataSource;

    @Autowired
    public HomeService (DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * Retrieve ALL reviews ordered from most popular to least 
     * @return
     */
    public List<Review> getHomeFeed () {
        System.out.println("To be implemented.");
        return null;
    }
}
