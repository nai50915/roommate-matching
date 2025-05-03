package uga.roommate.cs4370.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.PastRoommateService;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Your-Past-Roommate")
public class PastRoommateController {

    private final PastRoommateService pastRoommateService;

    @Autowired
    public PastRoommateController(PastRoommateService pastRoommateService) {
        this.pastRoommateService = pastRoommateService;
    }

    @PostMapping("/add")
    public String addPastRoommate(@RequestParam int currentUserId, @RequestParam int targetUserId) {
        try {
            pastRoommateService.addPastRoommate(currentUserId, targetUserId);
        } catch (SQLException e) {
            return "redirect:/findPastRoommates?userId=" + currentUserId + "&error=Add failed";
        }
        return "redirect:/Your-Past-Roommate?userId=" + currentUserId;
    }

    @PostMapping("/remove")
    public String removePastRoommate(@RequestParam int currentUserId, @RequestParam int targetUserId) {
        try {
            pastRoommateService.removePastRoommate(currentUserId, targetUserId);
        } catch (SQLException e) {
            return "redirect:/Your-Past-Roommate?userId=" + currentUserId + "&error=Remove failed";
        }
        return "redirect:/Your-Past-Roommate?userId=" + currentUserId;
    }
}
