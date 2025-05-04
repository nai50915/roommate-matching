package uga.roommate.cs4370.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.services.PastRoommateService;
import uga.roommate.cs4370.services.UserService;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles /Your-Past-Roommate URL
 */
@Controller
public class PastRoommateController {
   
    private PastRoommateService pastRoommateService;
    private UserService userService;

    @Autowired
    public PastRoommateController(PastRoommateService pastRoommateService, UserService userService) {
        this.pastRoommateService = pastRoommateService;
        this.userService = userService;
    }

    @GetMapping("/Your-Past-Roommate")
    public ModelAndView showPastRoommates() {
        ModelAndView mv = new ModelAndView("past_roommates_page");
        try {
            String currentUserId = userService.getLoggedInUser().getUserId();
            List<User> pastRoommates = pastRoommateService.getPastRoommates(currentUserId);
            mv.addObject("pastRoommates", pastRoommates);
        } catch (SQLException e) {
            mv.addObject("error", "Could not load past roommates.");
        }
        return mv;
    }
}
