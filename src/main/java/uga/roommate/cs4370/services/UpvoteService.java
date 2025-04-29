package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * This is a service class enabling upvote-related functions.
 * This class interacts with the database through a dataSource instance.
 */
@Service
public class UpvoteService {
  private final DataSource dataSource;

  @Autowired
  public UpvoteService (DataSource dataSource) {
    this.dataSource = dataSource;
  }

  /**
   * Upvotes a post 
   * @throws SQLException
   */
  public void upvotePost () throws SQLException {
    System.out.println("To be implemented.");
  }

  /**
   * Removes a user's upvote for a post 
   * @throws SQLException
   */
  public void removeUpvote () throws SQLException {
    System.out.println("To be implemented.");
  }

  /**
   * Checks if a user has upvoted a post 
   * @return
   * @throws SQLException
   */
  public boolean isUpvoted () throws SQLException {
    System.out.println("To be implemented.");
    return false;
  }

  /**
   * Checks if a user has upvoted a post 
   * @return
   * @throws SQLException
   */
  public int countUpvotes () throws SQLException {
    System.out.println("To be implemented.");
    return -1;
  }

}
