package uga.roommate.cs4370.models;

import java.util.List;

/**
 * Extends the User class to include a match status, 
 * indicating whether the current session user is matched with this user
 */
public class MatchedUser extends User {
    private final boolean isMatched; // Whether user is a match of current session user
    private final double percentageMatch;

    public MatchedUser (String userId, String username, String firstName, String lastName, String bio, String imagePath, List<String> tags, boolean isMatched, double percentageMatch) {
        super(userId, username, firstName, lastName, bio, imagePath);
        this.isMatched = isMatched;
        this.percentageMatch = percentageMatch;
    }

    public String getFormattedPercentage() {
        return String.format("%.0f%%", percentageMatch * 100);
    }

    public boolean isMatched() {
        return isMatched;
    }

    public double getPercentageMatch() {
        return percentageMatch;
    }

}
