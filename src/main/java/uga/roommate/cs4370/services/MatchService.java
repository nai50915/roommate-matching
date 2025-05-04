package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.naming.spi.DirStateFactory.Result;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import uga.roommate.cs4370.services.ProfileService;

import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.models.MatchedUser;

/**
 * This is a service class enabling match-related functions.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class MatchService {
    private final DataSource dataSource; 
    private final ProfileService profileService;

    @Autowired
    public MatchService(DataSource dataSource, ProfileService profileService) {
        this.dataSource = dataSource;
        this.profileService = profileService;
    }

    public ArrayList<MatchedUser> getAllMatches(String userId) {
        ArrayList<MatchedUser> matches = new ArrayList<>();
        List<String> allUserIds = new ArrayList<>();

        String sql = "SELECT userId FROM user WHERE userId != ?";
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, userId);

                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        allUserIds.add(rs.getString("userId"));
                    }
                }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        for (String potentialMatch : allUserIds) {
            matchUser(userId, potentialMatch);

            try {
                if (isMatched(userId, potentialMatch)) {
                    List<String> tagsA = profileService.getTags(userId);
                    List<String> tagsB = profileService.getTags(potentialMatch);    
                    double percentage = calculatePercentageMatch(tagsA, tagsB);
                    User user = profileService.getUser(potentialMatch);
                    MatchedUser matchedUser = new MatchedUser
                        (potentialMatch, user.username(), user.getFirstName(), user.getLastName(),
                         user.getBio(), user.getImagePath(), tagsB, true, percentage);
                    matches.add(matchedUser);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return matches;
    }

    /**
     * Establish a match between two users if they have more than 50%
     * of their tags in common 
     */
    public void matchUser(String matchAId, String matchBId) {
        System.out.println("Attempting to match " + matchAId + " and " + matchBId);

        List<String> tagsA = profileService.getTags(matchAId);
        List<String> tagsB = profileService.getTags(matchBId);

        System.out.println("Tags for " + matchAId + ": " + tagsA);
        System.out.println("Tags for " + matchBId + ": " + tagsB);
    

        double percentageMatch = calculatePercentageMatch(tagsA, tagsB);
        if (percentageMatch < 0.5) {
            System.out.println("Users do not meet 50%% threshold. No match inserted.");
            return;
        }

        Set<String> intersection = new HashSet<>(tagsA);
        intersection.retainAll(tagsB);
        int commonTags = intersection.size();    
    
        boolean formatFollowed = checkFormat(matchAId, matchBId);
        if (!formatFollowed) {
            System.out.println("Swapping user IDs to maintain (min, max) format.");
            String temp = matchBId;
            matchBId = matchAId;
            matchAId = temp;
        }

        String sql = "INSERT INTO matches (userA, userB, tags_match) VALUES (?, ?, ?)";
        
        try (Connection conn = dataSource.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, matchAId);
                ps.setString(2, matchBId);
                ps.setInt(3, commonTags);
                System.out.println("Executing match insert: [" + matchAId + ", " + matchBId + ", " + commonTags + "]");
                ps.executeUpdate();
                System.out.println("Match successfully inserted.");
        } catch (SQLException e) {
                System.err.println("SQL Exception during match insertion: " + e.getMessage());
                e.printStackTrace();
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

    public double calculatePercentageMatch(List<String> tagsA, List<String> tagsB) {

        System.out.println("AAAAAAAAAASJZHDSHDFSKHSFKH: " + tagsA);
        System.out.println("AAAAAAAAAASJZHDSHDFSKHSFKH: " + tagsB);

        if (tagsA.get(0).equals("No tags yet") || tagsB.get(0).equals("No tags yet")) {
            return 0.0;
        }  
        Set<String> setA = new HashSet<>(tagsA);
        Set<String> setB = new HashSet<>(tagsB);
    
        Set<String> intersection = new HashSet<>(setA);
        intersection.retainAll(setB);
        int commonTags = intersection.size();
    
        double percentA = (double) commonTags / setA.size();
        double percentB = (double) commonTags / setB.size();
        System.out.printf("Common tags: %d. MatchA %.2f%%, MatchB %.2f%%\n", commonTags, percentA * 100, percentB * 100);
       
        return Math.max(percentA, percentB);
    }

}
