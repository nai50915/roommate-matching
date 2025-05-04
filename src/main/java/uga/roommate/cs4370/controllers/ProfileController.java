package uga.roommate.cs4370.controllers;

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

import uga.roommate.cs4370.models.Attribute;
import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.services.AttributeService;
import uga.roommate.cs4370.services.UserService;
import uga.roommate.cs4370.services.ProfileService;
<<<<<<< HEAD
import uga.roommate.cs4370.models.ProfileReview;
import uga.roommate.cs4370.models.Rate;
=======
import uga.roommate.cs4370.services.AttributeService;
import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.models.Attribute;
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8

@Controller
@RequestMapping("/Profile")
public class ProfileController {

    // UserService has user login and registration related functions.
    private final UserService userService;
    private final ProfileService profileService;
    private final AttributeService attributeService;

    /**
     * See notes in AuthInterceptor.java regarding how this works
     * through dependency injection and inversion of control.
     */
    @Autowired
    public ProfileController(UserService userService, ProfileService profileService,
            AttributeService attributeService) {
        this.userService = userService;
        this.profileService = profileService;
        this.attributeService = attributeService;
    }

    @GetMapping
    public ModelAndView profileOfLoggedInUser() throws SQLException {
<<<<<<< HEAD
        String userId = userService.getLoggedInUser().getUserId();
        System.out.println("Logged-in userId: " + userId);

        try {
            ModelAndView mv = profileOfSpecificUser(userId);
            mv.addObject("isOwnProfile", true);
            return mv;
        } catch (SQLException e) {
            System.err.println("Failed to load profile for userId: " + userId);
            e.printStackTrace();
            return new ModelAndView("error_message").addObject("errorMessage", "User profile not found.");
        }
=======
        System.out.println("User is attempting to view profile of the logged in user.");
        String userId = userService.getLoggedInUser().getUserId();
        ModelAndView mv = profileOfSpecificUser(userId);
        mv.addObject("isOwnProfile", true);
        return mv;
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
    }

    @GetMapping("/{userId}")
    public ModelAndView profileOfSpecificUser(@PathVariable("userId") String userId) throws SQLException {
        System.out.println("User is attempting to view profile: " + userId);
        ModelAndView mv = new ModelAndView("profile_page");

        User user = profileService.getUser(userId); // Replace this with real service call
        double rating = profileService.getRating(userId);
        Rate profileRating = new Rate(rating);
        List<String> tags = profileService.getTags(userId);
        List<ProfileReview> reviews = profileService.getReviews(userId);

        // Add user object to the model
        mv.addObject("user", user);
        mv.addObject("tags", tags);
        mv.addObject("rate", profileRating);
        mv.addObject("reviews", reviews);

        // Optional error message
        // mv.addObject("errorMessage", error);
        boolean isOwn = userService.getLoggedInUser().getUserId().equals(userId);
        mv.addObject("isOwnProfile", isOwn);
        return mv;
    }

    @GetMapping("/attributes")
    public ModelAndView showAttributeEditor() throws SQLException {
        String userId = userService.getLoggedInUser().getUserId();
        List<Attribute> allAttrs = attributeService.getAllAttributesWithSelection(userId);
<<<<<<< HEAD
=======
        List<Integer> selected = attributeService.getUserAttributeIds(userId);
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
        User user = profileService.getUser(userId);

        ModelAndView mv = new ModelAndView("edit_attributes");
        mv.addObject("allAttributes", allAttrs);
<<<<<<< HEAD
=======
        mv.addObject("selectedAttributeIds", selected);
>>>>>>> 79cfbe088a68deff5a8d4215c9f139f85dfafaa8
        mv.addObject("user", user);
        return mv;
    }

    @PostMapping("/attributes")
    public String updateAttributes(@RequestParam("attributes") List<Integer> attributes) throws SQLException {
        String userId = userService.getLoggedInUser().getUserId();
        attributeService.updateUserAttributes(userId, attributes);
        return "redirect:/profile";
    }

}
