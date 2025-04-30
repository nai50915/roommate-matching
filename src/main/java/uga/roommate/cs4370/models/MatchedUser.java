package uga.roommate.cs4370.models;

/**
 * Extends the User class to include a match status, 
 * indicating whether the current session user is matched with this user
 */
public class MatchedUser extends User {
    private final boolean isMatched; // Whether user is a match of current session user
    private final double percentageMatch;

    public MatchedUser (String userId, String username, String firstName, String lastName, String bio, String imagePath, boolean isMatched, double percentageMatch) {
        super(userId, username, firstName, lastName, bio, imagePath);
        this.isMatched = isMatched;
        this.percentageMatch = percentageMatch;
    }

    public boolean isMatched() {
        return isMatched;
    }

    public double getPercentageMatch() {
        return percentageMatch;
    }

}
