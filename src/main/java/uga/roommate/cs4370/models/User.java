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
  private String imagePath; // profile picture path
  private List<String> tags; // user tags derived from reviews
  private List<Attribute> attributes; // user selected attributes

<<<<<<< HEAD
  public User(String userId, String username, String firstName, String lastName,
      String bio, String imagePath,
      List<String> tags, List<Attribute> attributes) {
=======
  private final String userId;
  private final String username;
  private final String firstName;
  private final String lastName;
  private final String bio;
  private final String imagePath;
  private final List<String> tags;
  private final List<String> attributes;

  public User(String userId, String username, String firstName, String lastName, String bio, String imagePath) {
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
    this.userId = userId;
    this.username = username;
    this.firstName = firstName;
    this.lastName = lastName;
    this.bio = bio;
    this.imagePath = imagePath;
<<<<<<< HEAD
    this.tags = (tags != null) ? tags : new ArrayList<>();
    this.attributes = (attributes != null) ? attributes : new ArrayList<>();
=======
    tags = new ArrayList<>();
    attributes = new ArrayList<>();
  }

  // Temporary constructor
  public User(String userId, String firstName, String lastName) {
    this.userId = userId;
    this.firstName = firstName;
    this.lastName = lastName;
    this.username = "";
    this.bio = "Hi! I just joined Rate my Roommate";
    this.imagePath = getAvatarPath(userId);
    tags = new ArrayList<>();
    attributes = new ArrayList<>();
  }

  public User(String userId, String username, String firstName, String lastName, String bio, String imagePath,
      List<String> tags, List<String> attributes) {
    this.userId = userId;
    this.username = username;
    this.firstName = firstName;
    this.lastName = lastName;
    this.bio = bio;
    this.imagePath = imagePath;
    this.tags = tags;
    this.attributes = attributes;
  }

  private static String getAvatarPath(String userId) {
    int fileNo = (userId.hashCode() % 20) + 1;
    String avatarFileName = String.format("avatar_%d.png", fileNo);
    return "/avatars/" + avatarFileName;
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
  }

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

<<<<<<< HEAD
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }
=======
  public String getLastName() {
    return lastName;
  }
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8

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

<<<<<<< HEAD
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
=======
  public List<String> getAttributes() {
    return attributes;
  }

}
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
