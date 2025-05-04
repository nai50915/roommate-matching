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

import uga.roommate.cs4370.services.ReviewService;
import uga.roommate.cs4370.services.VoteService;
import uga.roommate.cs4370.services.UserService;

import uga.roommate.cs4370.models.Review;

/**
 * Handles /Feed URL
 */
@Controller
@RequestMapping("/Feed")
public class FeedController {

    private final ReviewService reviewService;
    private final VoteService voteService;
    private final UserService userService;

    @Autowired
    public FeedController(ReviewService reviewService, VoteService voteService, UserService userService) {
        this.reviewService = reviewService;
        this.voteService = voteService;
        this.userService = userService;
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
        return mv;
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
            return "redirect:/Feed";
        } catch (Exception e) {
            return "redirect:/Feed";         
        }
    }
}
