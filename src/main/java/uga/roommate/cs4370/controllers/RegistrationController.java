package uga.roommate.cs4370.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.UserService;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@Controller
@RequestMapping("/register")
public class RegistrationController {
    private final UserService userService;

    @Autowired
    public RegistrationController (UserService userService) {
        this.userService = userService;
    }

    /**
     * Serves /register page
     * See further notes in LoginController.java
     */
    @GetMapping 
    public ModelAndView webpage (@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("registration_page");
        mv.addObject("errorMessage", error);
        return mv;
    }

    /**
     * Handles user registration from form submissions
     * See further notes in LoginController.java
     */
    @PostMapping
    public String register (@RequestParam("username") String username,
            @RequestParam("password") String password, 
            @RequestParam("passwordRepeat" String passwordRepeat,
            @RequestParam("firstName") String firstName, 
            @RequestParam("lastName") String lastName) throws UnsupportedEncodingException) {
        System.out.println("To be implemented.");
        return null;
    }
}
