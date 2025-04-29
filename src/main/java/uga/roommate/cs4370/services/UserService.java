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

/**
 * This is a service class enabling user-related functions.
 * This class interacts with the database through a dataSource instance.
 * The lifetime of this service obejct is limited to a user session.
 */
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
    
    /**
     * Register new user with given details
     * @return true if registration is successful, false otherwise 
     * @throws SQLException
     */
    public boolean registerUser () throws SQLException {
        System.out.println("To be implemented.");
        return false;
    }

    /**
     * Authenticate  given the username and password, stores user object for logged-in
     * user in session scope. 
     * @param username
     * @param password
     * @return true if authentication is successful, false otherwise 
     * @throws SQLException
     */
    public boolean authenticate (String username, String password) throws SQLException {
        System.out.println("To be implemented.");
        return false;
    }

    /**
     * Logs out the user 
     */
    public void unAuthenticate () {
        loggedInUser = null;
    }

    /**
     * Checks if the user is authenticated currently
     * @return true if the user is authenticated, false otherwise
     */
    public boolean isAuthenticated () {
        return loggedInUser != null;
    }

    /**
     * Retrieves current logged-in user
     * @return logged-in User 
     */
    public User getLoggedInUser () {
        return loggedInUser;
    }

}