package uga.roommate.cs4370.models;

/**
 * Represents a user of the roommate review platform.
 */

public class User {

  private final String userId;
  private final String firstName;
  private final String lastName; 

  public User (String userId, String firstName, String lastName) {
    this.userId = userId;
    this.firstName = firstName;
    this.lastName = lastName;
  }

  public String getUserId() {
    return userId;
  }

  public String getFirstName() {
    return firstName;
  } 
  
  public String getLastName() {
    return lastName;
  } 
  
}
