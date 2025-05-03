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

import uga.roommate.cs4370.services.PastRoommateService;
import uga.roommate.cs4370.models.User;
@Controller
@RequestMapping("/pastroommate")
public class PastRoommateController {

   @Autowired
    private final PastRoommateService pastRoommateService;

    @Autowired
    public PastRoommateController(PastRoommateService pastRoommateService) {
        this.pastRoommateService = pastRoommateService;
    }

    // @GetMapping 
    // public ModelAndView webpage (@RequestParam(name = "error", required = false) String error) {
    //     ModelAndView mv = new ModelAndView("pastroommate");
    //     mv.addObject("errorMessage", error);
    //     System.out.println("Going to pastroommate page...");
    //     return mv;
    // }

    @GetMapping
    public ModelAndView showAllUsers(@RequestParam int userId) {
        ModelAndView mv = new ModelAndView("findPastRoommates"); // findPastRoommates.html
        try {
            List<User> users = pastRoommateService.getAllUsersExcept(userId);
            mv.addObject("users", users);
        } catch (SQLException e) {
            mv.addObject("error", "Could not load users.");
        }
        return mv;
    }

    @PostMapping("/add")
    public String addPastRoommate(@RequestParam int currentUserId, @RequestParam int targetUserId) {
        try {
            pastRoommateService.addPastRoommate(currentUserId, targetUserId);
        } catch (SQLException e) {
            return "redirect:/findPastRoommates?userId=" + currentUserId + "&error=Add failed";
        }
        return "redirect:/pastRoommates?userId=" + currentUserId;
    }

   
    
}
