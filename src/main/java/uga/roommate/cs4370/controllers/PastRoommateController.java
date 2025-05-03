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

@Controller
@RequestMapping("/Your-Past-Roommate")
public class PastRoommateController {

    private final PastRoommateService pastRoommateService;
    private final UserService userService;

    @Autowired
    public PastRoommateController(PastRoommateService pastRoommateService, UserService userService) {
        this.pastRoommateService = pastRoommateService;
        this.userService = userService;
    }

    @GetMapping
public ModelAndView viewPastRoommates(@RequestParam(required = false) String error) {
    ModelAndView mav = new ModelAndView("past_roommates_page"); 
    try {
        String userId = userService.getLoggedInUser().getUserId();
        List<User> pastRoommates = pastRoommateService.getPastRoommates(userId);
        mav.addObject("pastRoommates", pastRoommates);
        mav.addObject("userId", userId);
    } catch (SQLException e) {
        mav.addObject("error", "Failed to load past roommates.");
    }

    if (error != null) {
        mav.addObject("error", error);
    }

    return mav;
}



    // @PostMapping("/add")
    // public String addPastRoommate(@RequestParam int currentUserId, @RequestParam int targetUserId) {
    //     try {
    //         pastRoommateService.addPastRoommate(currentUserId, targetUserId);
    //     } catch (SQLException e) {
    //         return "redirect:/Find-Past-Roommate?userId=" + currentUserId + "&error=Add failed";
    //     }
    //     return "redirect:/Your-Past-Roommate?userId=" + currentUserId;
    // }

    // @PostMapping("/remove")
    // public String removePastRoommate(@RequestParam int currentUserId, @RequestParam int targetUserId) {
    //     try {
    //         pastRoommateService.removePastRoommate(currentUserId, targetUserId);
    //     } catch (SQLException e) {
    //         return "redirect:/Your-Past-Roommate?userId=" + currentUserId + "&error=Remove failed";
    //     }
    //     return "redirect:/Your-Past-Roommate?userId=" + currentUserId;
    // }
}
