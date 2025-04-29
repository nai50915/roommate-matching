package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * This is a service class enabling downvote-related functions.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class DownvoteService {
  private final DataSource dataSource;

  @Autowired
  public DownvoteService (DataSource dataSource) {
    this.dataSource = dataSource;
  }

  /**
   * Downvotes a post 
   * @throws SQLException
   */
  public void downvotePost () throws SQLException {
    System.out.println("To be implemented.");
  }

  /**
   * Removes a user's downvote for a post 
   * @throws SQLException
   */
  public void removeDownvote () throws SQLException {
    System.out.println("To be implemented.");
  }

  /**
   * Checks if a user has downvoted a post 
   * @return
   * @throws SQLException
   */
  public boolean isDownvoted () throws SQLException {
    System.out.println("To be implemented.");
    return false;
  }

  /**
   * Counts all the downvotes for a given post
   * @return
   * @throws SQLException
   */
  public int countDownvotes () throws SQLException {
    System.out.println("To be implemented.");
    return -1;
  }

}
