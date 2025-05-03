package uga.roommate.cs4370.controllers;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.ReviewService;

import uga.roommate.cs4370.models.Review;

/**
 * Handles /Feed URL
 */
@Controller
@RequestMapping("/Feed")
public class FeedController {

    private final ReviewService reviewService;

    @Autowired
    public FeedController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    /**
     * Serves /Feed page
     */
    @GetMapping 
    public ModelAndView webpage (@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("feed_page");
        List<Review> reviews = reviewService.getAllReviews();
        mv.addObject("reviews", reviews);
        mv.addObject("errorMessage", error);
        System.out.println("Going to feed page...");
        return mv;
    }

}
