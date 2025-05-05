package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.cj.protocol.Resultset;

/**
 * This is a service class enabling vote-related functions.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class VoteService {
  private final DataSource dataSource;

  @Autowired
  public VoteService (DataSource dataSource) {
    this.dataSource = dataSource;
  }

  /**
   * Upvotes a post 
   */
  public void upvotePost (String userId, String reviewId) {
    /*
    before inserting into the vote table, check if the user previously
    downvoted that post. if so, delete that (call removevote) then insert the upvote 
     */
    String hasVoted = hasVoted(userId, reviewId);
    if (hasVoted.equals("downvote")) {
      removeVote(userId, reviewId);
    } else if (hasVoted.equals("upvote")) {
      return;
    }
    String sql = "INSERT INTO vote (userId, reviewId, type) VALUES (?, ?, 'upvote')";
    try (Connection conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
          ps.setString(1, userId);
          ps.setString(2, reviewId);
          ps.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
    }
    System.out.println("To be tested.");
  }


  /**
   * Downvotes a post 
   */
  public void downvotePost(String userId, String reviewId) {
    String hasVoted = hasVoted(userId, reviewId);
    /*
    before inserting into the vote table, check if the user previously
    upvoted that post. if so, delete that (call removevote) then insert the downvote 
    */
    if (hasVoted.equals("upvote")) {
      removeVote(userId, reviewId);
    } else if (hasVoted.equals("downvote")) {
      return;
    }
    String sql = "INSERT INTO vote (userId, reviewId, type) VALUES (?, ?, 'downvote')";
    try (Connection conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
          ps.setString(1, userId);
          ps.setString(2, reviewId);
          ps.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
    }
    System.out.println("To be tested.");
  }

  /**
   * Removes a user's vote for a post 
   */
  public void removeVote(String userId, String reviewId) {
    String sql = "DELETE FROM vote WHERE userId = ? AND reviewId = ?";
    try (Connection conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
          ps.setString(1, userId);
          ps.setString(2, reviewId);
          ps.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
    }
    System.out.println("To be tested.");
  }

  /**
   * Checks if a user has voted on a post 
   * @return "upvote", "downvote" or null if no vote exists 
   */
  public String hasVoted (String userId, String reviewId) {
    String sql = "SELECT type FROM vote WHERE userId = ? AND reviewId = ?";
    try (Connection conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
          ps.setString(1, userId);
          ps.setString(2, reviewId);

          try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
              return rs.getString("type");
            }
          }
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return "no-vote";
  }

  /**
   * Counts all the upvotes for a given post
   * @return number of upvotes 
   * @throws SQLException
   */
  public int countUpvotes(String reviewId) throws SQLException {
    String sql = "SELECT COUNT(*) FROM vote WHERE reviewId = ? and type = 'upvote'";
    try (Connection conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
          ps.setString(1, reviewId);
          try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
              return rs.getInt(1);
            }
          }
    }
    return 0;
  }

  /**
   * Counts all the downvotes for a given post
   * @return number of downvotes
   * @throws SQLException
   */
  public int countDownvotes(String reviewId) throws SQLException {
    String sql = "SELECT COUNT(*) FROM vote WHERE reviewId = ? and type = 'downvote'";
    try (Connection conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
          ps.setString(1, reviewId);
          try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
              return rs.getInt(1);
            }
          }
    }
    return 0;
  }

}
