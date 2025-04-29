package uga.roommate.cs4370.models;

public class Review {
  private final String reviewId;
  private final String content;
  private final User reviewer;
  private final User reviewee; 
  private final String reviewDate;
  private final int upvoteCount;
  private final int downvoteCount;
  private final int rating;

  public Review (String reviewId, String content, User reviewer, User reviewee, String reviewDate, int upvoteCount, int downvoteCount, int rating) {
    this.reviewId = reviewId;
    this.content = content;
    this.reviewer = reviewer;
    this.reviewee = reviewee;
    this.reviewDate = reviewDate;
    this.upvoteCount = upvoteCount;
    this.downvoteCount = downvoteCount; 
    this.rating = rating;
  }

  public String getReviewId() {
    return reviewId;
  }

  public String getContent() {
    return content;
  }

  public User getReviewer() {
    return reviewer;
  }

  public User getReviewee() {
    return reviewee;
  }

  public String getDate() {
    return reviewDate;
  }

  public int getUpvoteCount() {
    return upvoteCount;
  }

  public int getDownvoteCount() {
    return downvoteCount;
  }

  public int getRating() {
    return rating;
  }
}
