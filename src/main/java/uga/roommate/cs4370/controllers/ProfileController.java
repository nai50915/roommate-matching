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
import uga.roommate.cs4370.models.User;

@Controller
@RequestMapping("/profile")
public class ProfileController {

   // UserService has user login and registration related functions.
   private final UserService userService;

   /**
    * See notes in AuthInterceptor.java regarding how this works 
    * through dependency injection and inversion of control.
    */
   @Autowired
   public ProfileController(UserService userService) {
       this.userService = userService;
   }

    @GetMapping
    public ModelAndView profilePage(@RequestParam(name = "error", required = false) String error) {
    ModelAndView mv = new ModelAndView("profile_page");

    User loggedInUser = userService.getLoggedInUser(); // Replace this with real service call

    // Add user object to the model
    mv.addObject("user", loggedInUser);

    // Optional error message
    mv.addObject("errorMessage", error);

    return mv;
    }

}
