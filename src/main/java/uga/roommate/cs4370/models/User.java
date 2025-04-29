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
