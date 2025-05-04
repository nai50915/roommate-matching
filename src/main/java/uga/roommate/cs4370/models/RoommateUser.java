package uga.roommate.cs4370.models;

/**
 * Extends the User class to include a roommate status,
 * indicating whether the current session user is or has been roommates with
 * this user
 */
public class RoommateUser extends User {
    private final boolean isRoommate; // Whether user is or was a roommate of current session user

    public RoommateUser(String userId, String username, String firstName, String lastName, String bio, String imagePath,
            boolean isRoommate) {
        super(userId, username, firstName, lastName, bio, imagePath, null, null);
        this.isRoommate = isRoommate;
    }

    public boolean isRoommate() {
        return isRoommate;
    }

}
