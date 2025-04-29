package uga.roommate.cs4370.controllers;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.UserService;

/**
 * Handles /login URL
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    private final UserService userService;

    @Autowired
    public LoginController (UserService userService) {
        this.userService = userService;
    }

    /**
     * Serves login page at /login URL 
     */
    @GetMapping
    public ModelAndView webpage(@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("login_page");
        userService.unAuthenticate(); // Logout if user is already logged in
        mv.addObject("errorMessage", error);
        return mv;
    }

    /**
     * Handle /login form submissions
     */
    @GetMapping
    public String login(@RequestParam("username") String username, 
            @RequestParam("password") String password) {
        System.out.println("To be implemented.");
        return null; 
    }
    
}
