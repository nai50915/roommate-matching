package uga.roommate.cs4370.models;

import java.util.List;
import java.util.ArrayList;

/**
 * Represents a user of the roommate review platform.
 */

public class User {

  private final String userId;
  private final String username;
  private final String firstName;
  private final String lastName; 
  private final String bio;
  private final String imagePath;
  private final List<String> tags;

  public User (String userId, String username, String firstName, String lastName, String bio, String imagePath) {
    this.userId = userId;
    this.username = username;
    this.firstName = firstName;
    this.lastName = lastName;
    this.bio = bio; 
    this.imagePath = imagePath;
    tags = new ArrayList<>();
  }

  // Temporary constructor 
  public User (String userId, String firstName, String lastName) {
    this.userId = userId;
    this.firstName = firstName;
    this.lastName = lastName;
    this.username = "";
    this.bio = "Hi! I just joined Rate my Roommate";
    this.imagePath = getAvatarPath(userId);
    tags = new ArrayList<>();
  }

  private static String getAvatarPath(String userId) {
    int fileNo = (userId.hashCode() % 20) + 1;
    String avatarFileName = String.format("avatar_%d.png", fileNo);
    return "/avatars/" + avatarFileName;
  }

  public String getUserId() {
    return userId;
  }

  public String username() {
    return username;
  }

  public String getFirstName() {
    return firstName;
  } 
  
  public String getLastName() {
    return lastName;
  } 

  public String getBio() {
    return bio;
  }

  public String getImage() {
    return imagePath;
  }

  public List<String> getTags() {
    return tags;
  }
  
}
