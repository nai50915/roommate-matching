package uga.roommate.cs4370.models;

/**
 * Represents a profile review 
 */
public class ProfileReview {
    private final String reviewId;
    private final String revieweeFirstName;
    private final String reviewerFirstName;
    private final String reviewerImg;
    private final String content;

    public ProfileReview (String reviewId, String revieweeFirstName, String reviewerFirstName, String reviewerImg, String content) {
        this.reviewId = reviewId;
        this.revieweeFirstName = revieweeFirstName;
        this.reviewerFirstName = reviewerFirstName;
        this.reviewerImg = reviewerImg;
        this.content = content;
    }

    public String getReviewId() {
        return reviewId;
    }

    public String getRevieweeFirstName() {
        return revieweeFirstName;
    }

    public String getReviewerFirstName() {
        return reviewerFirstName;
    }

    public String getReviewerImg() {
        return reviewerImg;
    }

    public String getContent() {
        return content;
    }


}
