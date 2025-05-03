package uga.roommate.cs4370.controllers;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.UserService;
import uga.roommate.cs4370.services.ProfileService;
import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.models.Rate;

@Controller
@RequestMapping("/Profile")
public class ProfileController {

   // UserService has user login and registration related functions.
   private final UserService userService;
   private final ProfileService profileService;

   /**
    * See notes in AuthInterceptor.java regarding how this works 
    * through dependency injection and inversion of control.
    */
   @Autowired
   public ProfileController(UserService userService, ProfileService profileService) {
       this.userService = userService;
       this.profileService = profileService;
   }

   @GetMapping
    public ModelAndView profileOfLoggedInUser() throws SQLException {
        System.out.println("User is attempting to view profile of the logged in user.");
        return profileOfSpecificUser(userService.getLoggedInUser().getUserId());
   }

    @GetMapping("/{userId}")
    public ModelAndView profileOfSpecificUser(@PathVariable("userId") String userId) throws SQLException {
        System.out.println("User is attempting to view profile: " + userId);
        ModelAndView mv = new ModelAndView("profile_page");

        User user = profileService.getUser(userId); // Replace this with real service call
        double rating = profileService.getRating(userId);
        Rate profileRating = new Rate(rating);
        List<String> tags = profileService.getTags(userId);
        
        // Add user object to the model
        mv.addObject("tags", tags);
        mv.addObject("user", user);
        mv.addObject("rate", profileRating);

        // Optional error message
        // mv.addObject("errorMessage", error);
        return mv;
    }

}
