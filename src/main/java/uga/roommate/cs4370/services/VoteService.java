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
   * @throws SQLException
   */
  public void upvotePost (String userId, String reviewId) throws SQLException {
    /*
    before inserting into the vote table, check if the user previously
    downvoted that post. if so, delete that (call removevote) then insert the upvote 
     */
    System.out.println("To be implemented.");
  }


  /**
   * Downvotes a post 
   * @throws SQLException
   */
  public void downvotePost () throws SQLException {
    /*
    before inserting into the vote table, check if the user previously
    upvoted that post. if so, delete that (call removevote) then insert the downvote 
     */
    System.out.println("To be implemented.");
  }

  /**
   * Removes a user's vote for a post 
   * @throws SQLException
   */
  public void removeVote(String userId, String reviewId) throws SQLException {
    String sql = "DELETE FROM vote WHERE userId = ? AND reviewId = ?";
    try (Connection conn = dataSource.getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
          ps.setString(1, userId);
          ps.setString(2, reviewId);
          ps.executeUpdate();
    }
    System.out.println("To be tested.");
  }

  /**
   * Checks if a user has voted on a post 
   * @return "upvote", "downvote" or null if no vote exists 
   * @throws SQLException
   */
  public String hasVoted (String userId, String reviewId) throws SQLException {
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
    }
    
    System.out.println("To be tested.");
    return "no-vote";
  }

/* PROBABLY NOT NEEDED -- REDUNDANT
  
   * Checks if a user has upvoted a post 
   * @return
   * @throws SQLException
   
  public boolean isUpvoted () throws SQLException {
    System.out.println("To be implemented.");
    return false;
  }

  
   * Checks if a user has downvoted a post 
   * @return
   * @throws SQLException
  
  public boolean isDownvoted () throws SQLException {
    System.out.println("To be implemented.");
    return false;
  }
*/ 
  /**
   * Counts all the upvotes for a given post
   * @return
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
    System.out.println("To be tested.");
    return 0;
  }


  /**
   * Counts all the downvotes for a given post
   * @return
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
    System.out.println("To be tested.");
    return 0;
  }

}
