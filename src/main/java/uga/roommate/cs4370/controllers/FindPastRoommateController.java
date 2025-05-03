package uga.roommate.cs4370.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.FindPastRoommateService;
import uga.roommate.cs4370.models.User;

@Controller
@RequestMapping("/Find-Past-Roommate")
public class FindPastRoommateController {

    private final FindPastRoommateService findPastRoommateService;

    @Autowired
    public FindPastRoommateController(FindPastRoommateService findPastRoommateService) {
        this.findPastRoommateService = findPastRoommateService;
    }

    @GetMapping
    public ModelAndView showAllUsers(@RequestParam int userId) {
        ModelAndView mv = new ModelAndView("find_past_roommates_page");
        try {
            List<User> users = findPastRoommateService.getAllUsersExcept(userId);
            mv.addObject("users", users);
        } catch (SQLException e) {
            mv.addObject("error", "Could not load users.");
        }
        return mv;
    }
}
