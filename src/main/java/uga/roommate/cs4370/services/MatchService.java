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
     * Establish a match between two users if they have more than 50%
     * of their tags in common 
     */
    public void matchUser(String matchAId, String matchBId) throws SQLException {
        System.out.println("To be tested.");
        // TODO: Calculate the amount of tags in common between the two users 
        boolean formatFollowed = checkFormat(matchAId, matchBId);
        if (!formatFollowed) {
            String temp = matchBId;
            matchBId = matchAId;
            matchAId = temp;
        }
        String sql = "INSERT INTO matches (userA, userB, tags_match) VALUES (?, ?, 0)";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, matchAId);
                ps.setString(2, matchBId);
                ps.executeUpdate();
          }
    }
    
    /**
     * Check if two users are matched
     * NOTE: This follows a (min, max) formatting, so matchAId < matchBId
     * @return true if matched, false otherwise
     */
    public boolean isMatched(String matchAId, String matchBId) throws SQLException {
        System.out.println("To be tested.");  
        boolean formatFollowed = checkFormat(matchAId, matchBId);
        if (!formatFollowed) {
            String temp = matchBId;
            matchBId = matchAId;
            matchAId = temp;
        }
        String sql = "SELECT COUNT(*) FROM matches WHERE userA = ? AND userB = ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, matchAId);
                ps.setString(2, matchBId);

                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        return rs.getInt(1) > 0;
                    }
                }
          }
        return false;
    }

    /**
     * Helper method to determine if (min, max) format is adhered to
     * 
     * @param matchAId 
     * @param matchBId
     * @return true if (min, max) format is satisfied, false otherwise.
     */
    public boolean checkFormat(String matchAId, String matchBId) {
        int aId, bId; 
        try {
            aId = Integer.parseInt(matchAId);
            bId = Integer.parseInt(matchBId);
            if (aId > bId) {
                return false;
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return true;
    }

    /**
     * Takes two userIds and calculates how many tags the two users have
     * in common
     * 
     * @param matchAId
     * @param matchBId
     * @return count of tags in common 
     */
    public int tagsInCommon(String matchAId, String matchBId) {
        /*
         * we have the userTag table. so find all the tags for a user 
         * then repeat this process for the second user
         * then count how many tags they have in common 
         */
        System.out.println("To be implemented.");
        return -1;
    }

}
