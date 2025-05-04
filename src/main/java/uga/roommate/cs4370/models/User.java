package uga.roommate.cs4370.models;

import java.util.List;
import java.util.ArrayList;

/**
 * Represents a user of the roommate review platform.
 */

public class User {
  private String userId;
  private String username;
  private String firstName;
  private String lastName;
  private String bio;
  private String imagePath;
  private List<String> tags;
  private List<Attribute> attributes;

  public User(String userId, String username, String firstName, String lastName,
      String bio, String imagePath,
      List<String> tags, List<Attribute> attributes) {
    this.userId = userId;
    this.username = username;
    this.firstName = firstName;
    this.lastName = lastName;
    this.bio = bio;
    this.imagePath = imagePath;
    this.tags = (tags != null) ? tags : new ArrayList<>();
    this.attributes = (attributes != null) ? attributes : new ArrayList<>();
  }

  // Getters and Setters
  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getBio() {
    return bio;
  }

  public void setBio(String bio) {
    this.bio = bio;
  }

  public String getImagePath() {
    return imagePath;
  }

  public void setImagePath(String imagePath) {
    this.imagePath = imagePath;
  }

  public List<String> getTags() {
    return tags;
  }

  public void setTags(List<String> tags) {
    this.tags = (tags != null) ? tags : new ArrayList<>();
  }

  public List<Attribute> getAttributes() {
    return attributes;
  }

  public void setAttributes(List<Attribute> attributes) {
    this.attributes = (attributes != null) ? attributes : new ArrayList<>();
  }
}