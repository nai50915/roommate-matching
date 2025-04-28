package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpvoteService {
  private final DataSource dataSource;

  @Autowired
  public UpvoteService (DataSource dataSource) {
    this.dataSource = dataSource;
  }

  public void upvotePost () throws SQLException {
    System.out.println("To be implemented.");
  }

  public void removeUpvote () throws SQLException {
    System.out.println("To be implemented.");
  }

  public boolean isUpvoted () throws SQLException {
    System.out.println("To be implemented.");
    return false;
  }

  public int countUpvotes () throws SQLException {
    System.out.println("To be implemented.");
    return -1;
  }

}
