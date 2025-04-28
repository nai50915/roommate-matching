package uga.roommate.cs4370.models;

public class BasicPost {
  private final String postId;
  private final String content;
  private final User user; 
  private final int upvoteCount;
  private final int downvoteCount;

  public BasicPost (String postId, String content, User user, int upvoteCount, int downvoteCount) {
    this.postId = postId;
    this.content = content;
    this.User = user;
    this.upvoteCount = upvoteCount;
    this.downvoteCount = downvoteCount; 
  }

  public String getPostId() {
    return postId;
  }

  public String getContent() {
    return content;
  }

  public User getUser() {
    return user;
  }

  public int getUpvoteCount() {
    return upvoteCount;
  }

  public int getDownvoteCount() {
    return downvoteCount;
  }
  
}
