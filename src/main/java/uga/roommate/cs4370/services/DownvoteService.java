package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DownvoteService {
  private final DataSource dataSource;

  @Autowired
  public DownvoteService (DataSource dataSource) {
    this.dataSource = dataSource;
  }

  public void downvotePost () throws SQLException {
    System.out.println("To be implemented.");
  }

  public void removeDownvote () throws SQLException {
    System.out.println("To be implemented.");
  }

  public boolean isDownvoted () throws SQLException {
    System.out.println("To be implemented.");
    return false;
  }

  public int countDownvotes () throws SQLException {
    System.out.println("To be implemented.");
    return -1;
  }

}
