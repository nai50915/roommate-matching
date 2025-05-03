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

import uga.roommate.cs4370.services.ReviewService;
import uga.roommate.cs4370.services.FeedService;

/**
 * Handles /Feed URL
 */
@Controller
@RequestMapping("/Feed")
public class FeedController {

    /**
     * Serves /Feed page
     */
    @GetMapping 
    public ModelAndView webpage (@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("feed_page");
        mv.addObject("errorMessage", error);
        System.out.println("Going to feed page...");
        return mv;
    }

}
