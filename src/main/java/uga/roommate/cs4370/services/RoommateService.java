package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * This is a service class enabling roommate-related functions.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class RoommateService {
    private final DataSource dataSource; 

    @Autowired
    public RoommateService (DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * Add a current or past roommate
     */
    public void addRoommate () {
        System.out.println("To be implemented.");
    }

    /**
     * Remove a current or past ex-roommate
     */
    public void removeRoommate () {
        System.out.println("To be implemented.");
    }

    /**
     * Finds if users were or are roommates
     */
    public void isRoommate () {
        System.out.println("To be implemented.");
    }

}
