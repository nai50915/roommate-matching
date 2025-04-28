package uga.roommate.cs4370.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import uga.roommate.cs4370.models.User;

@Service 
@SessionScope
public class UserService {
    private final DataSource dataSource;
    private final BCryptPasswordEncoder passwordEncoder;
    private User loggedInUser = null; 

    @Autowired
    public UserService (DataSource dataSource) {
        this.dataSource = dataSource;
        this.passwordEncoder = new BCryptPasswordEncoder();
    }
    
    public boolean registerUser () throws SQLException {
        System.out.println("To be implemented.");
        return false;
    }

    public boolean authenticate (String username, String password) throws SQLException {
        System.out.println("To be implemented.");
        return false;
    }

    public void unAuthenticate () {
        loggedInUser = null;
    }

    public boolean isAuthenticated () {
        return loggedInUser != null;
    }

    public User getLoggedInUser () {
        return loggedInUser;
    }

}