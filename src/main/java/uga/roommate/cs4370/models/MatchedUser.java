package uga.roommate.cs4370.models;

/**
 * Extends the User class to include a match status, 
 * indicating whether the current session user is matched with this user
 */
public class MatchedUser extends User {
    private final boolean isMatched;

    public MatchedUser (String userId, String username, String firstName, String lastName, String bio, String imagePath, boolean isMatched) {
        super(userId, username, firstName, lastName, bio, imagePath);
        this.isMatched = isMatched;
    }

    public boolean isMatched() {
        return isMatched;
    }
}
