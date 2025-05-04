package uga.roommate.cs4370.controllers;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.MatchService;
import uga.roommate.cs4370.services.UserService;
import uga.roommate.cs4370.models.MatchedUser;

/**
 * Handles /Matches URL
 */
@Controller
@RequestMapping("/matches")
public class MatchesController {

    private final MatchService matchService;
    private final UserService userService;

    @Autowired
    public MatchesController(MatchService matchService, UserService userService) {
        this.matchService = matchService;
        this.userService = userService;
    }

    /**
     * Serves /Matches page
     */
    @GetMapping
    public ModelAndView webpage(@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("matches");
        String userId = userService.getLoggedInUser().getUserId();
        ArrayList<MatchedUser> matches = matchService.getAllMatches(userId);
        mv.addObject("matches", matches);
        mv.addObject("errorMessage", error);
        System.out.println("Going to matches page...");
        return mv;
    }

}
