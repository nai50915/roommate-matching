package uga.roommate.cs4370.controllers;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.services.ReviewService;
import uga.roommate.cs4370.services.UserService;

/**
 * Handles /Review URL
 */
@Controller
@RequestMapping("/Review")
public class ReviewController {

    private final UserService userService;
    private final ReviewService reviewService;

    @Autowired
    public ReviewController(UserService userService, ReviewService reviewService) {
        this.userService = userService;
        this.reviewService = reviewService;
    }

    /**
     * Serves /Review page
     */
    @GetMapping 
    public ModelAndView webpage (@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("review_page");
        mv.addObject("errorMessage", error);
        return mv;
    }

    @PostMapping
    public String submitReview(
        @RequestParam String firstName,
        @RequestParam String lastName,
        @RequestParam int rating,
        @RequestParam String review,
        @RequestParam(required = false) List<String> Clean,
        @RequestParam(required = false) List<String> Messy,
        @RequestParam(required = false) List<String> EB,
        @RequestParam(required = false) List<String> NO,
        @RequestParam(required = false) List<String> LS,
        @RequestParam(required = false) List<String> Smoker,
        @RequestParam(required = false) List<String> Drinker,
        @RequestParam(required = false) List<String> Pets,
        @RequestParam(required = false) List<String> NP,
        HttpSession session) throws UnsupportedEncodingException {

        System.out.println("First Name: " + firstName);
        System.out.println("Last Name: " + lastName);
        System.out.println("Rating: " + rating);
        System.out.println("Review: " + review);
            
    User reviewee = userService.findByFirstAndLastName(firstName, lastName);
    if (reviewee == null) {
        String message = URLEncoder.encode("User not found.", "UTF-8");
        return "redirect:/Feed?error=" + message;
    }

    User currentUser = userService.getLoggedInUser();

    int reviewerId = Integer.parseInt(currentUser.getUserId());
    int revieweeId = Integer.parseInt(reviewee.getUserId());

    List<String> selectedTags = new ArrayList<>();
    if (Clean != null) selectedTags.add("Clean");
    if (Messy != null) selectedTags.add("Messy");
    if (EB != null) selectedTags.add("EB");
    if (NO != null) selectedTags.add("NO");
    if (LS != null) selectedTags.add("LS");
    if (Smoker != null) selectedTags.add("Smoker");
    if (Drinker != null) selectedTags.add("Drinker");
    if (Pets != null) selectedTags.add("Pets");
    if (NP != null) selectedTags.add("NP");

    boolean success = reviewService.createReview(reviewerId, revieweeId, review, rating, selectedTags);

    if (success) {
        return "redirect:/Profile?success=true";
    } else {
        String message = URLEncoder.encode("Failed to submit review.", "UTF-8");
        return "redirect:/Feed?error=" + message;
    }
    }


}
