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
import uga.roommate.cs4370.services.VoteService;
import uga.roommate.cs4370.models.ProfileReview;
import uga.roommate.cs4370.models.Rate;

@Controller
@RequestMapping("/Profile")
public class ProfileController {

    // UserService has user login and registration related functions.
    private final UserService userService;
    private final ProfileService profileService;
    private final AttributeService attributeService;
    private final VoteService voteService;

    /**
     * See notes in AuthInterceptor.java regarding how this works
     * through dependency injection and inversion of control.
     */
    @Autowired
    public ProfileController(UserService userService, ProfileService profileService,
            AttributeService attributeService, VoteService voteService) {
        this.userService = userService;
        this.profileService = profileService;
        this.attributeService = attributeService;
        this.voteService = voteService;
    }

    @GetMapping
    public ModelAndView profileOfLoggedInUser() throws SQLException {
        String userId = userService.getLoggedInUser().getUserId();

        try {
            ModelAndView mv = profileOfSpecificUser(userId);
            mv.addObject("isOwnProfile", true);
            return mv;
        } catch (SQLException e) {
            e.printStackTrace();
            return new ModelAndView("error_message").addObject("errorMessage", "User profile not found.");
        }
    }

    @GetMapping("/{userId}")
    public ModelAndView profileOfSpecificUser(@PathVariable("userId") String userId) throws SQLException {
        ModelAndView mv = new ModelAndView("profile_page");

        User user = profileService.getUser(userId);
        double rating = profileService.getRating(userId);
        Rate profileRating = new Rate(rating);
        List<String> tags = profileService.getTags(userId);
        List<ProfileReview> reviews = profileService.getReviews(userId);

        mv.addObject("user", user);
        mv.addObject("tags", tags);
        mv.addObject("rate", profileRating);
        mv.addObject("reviews", reviews);

        boolean isOwn = userService.getLoggedInUser().getUserId().equals(userId);
        mv.addObject("isOwnProfile", isOwn);
        return mv;
    }

    @GetMapping("/Attributes")
    public ModelAndView showAttributeEditor() throws SQLException {
        String userId = userService.getLoggedInUser().getUserId();
        List<Attribute> allAttrs = attributeService.getAllAttributesWithSelection(userId);
        User user = profileService.getUser(userId);

        ModelAndView mv = new ModelAndView("edit_attributes");
        mv.addObject("allAttributes", allAttrs);
        mv.addObject("user", user);
        return mv;
    }

    @PostMapping("/Attributes")
    public String updateAttributes(@RequestParam("attributes") List<Integer> attributes) throws SQLException {
        String userId = userService.getLoggedInUser().getUserId();
        attributeService.updateUserAttributes(userId, attributes);
        return "redirect:/Profile";
    }

    @RequestMapping("/Vote/{reviewId}/{isAdd}/{isUpVote}")
    public String vote(@PathVariable("reviewId") String reviewId,
        @PathVariable("isAdd") Boolean isAdd,
        @PathVariable("isUpVote") Boolean isUpVote) {
        System.out.println("User attempts to vote on: " + reviewId);
        String userId = userService.getLoggedInUser().getUserId();
        try {
            if (isAdd) {
                if (isUpVote) {
                    voteService.upvotePost(userId, reviewId);
                } else {
                    voteService.downvotePost(userId, reviewId);
                }
            } else {
                voteService.removeVote(userId, reviewId);
            }
            return "redirect:/Profile";
        } catch (Exception e) {
            return "redirect:/Profile";         
        }
    }
}