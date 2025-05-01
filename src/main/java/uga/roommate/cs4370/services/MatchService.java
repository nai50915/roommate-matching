package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * This is a service class enabling match-related functions.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class MatchService {
    private final DataSource dataSource; 

    @Autowired
    public MatchService(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    /**
     * Establish a match between two users 
     */
    public void matchUser() {
        System.out.println("To be implemented.");
    }
    
    /**
     * Check if two users are matched
     * @return true if matched, false otherwise
     */
    public boolean isMatched() {
        System.out.println("To be implemented.");
        return false;
    }

}
