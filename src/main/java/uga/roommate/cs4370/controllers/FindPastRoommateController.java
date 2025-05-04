package uga.roommate.cs4370.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.FindPastRoommateService;
import uga.roommate.cs4370.services.UserService;
import uga.roommate.cs4370.models.User;

@Controller
@RequestMapping("/Find-Past-Roommate")
public class FindPastRoommateController {

    private final FindPastRoommateService findPastRoommateService;
    private final UserService userService;

    @Autowired
    public FindPastRoommateController(FindPastRoommateService findPastRoommateService, UserService userService) {
        this.findPastRoommateService = findPastRoommateService;
        this.userService = userService;
    }

    @GetMapping
    public ModelAndView showAllUsers(@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("find_past_roommates_page");

        try {
            String userId =userService.getLoggedInUser().getUserId();
            System.out.println("User ID: " + userId);
            List<User> users = findPastRoommateService.getAllUsersExcept(userId);
            System.out.println("Users: " + users.size());
            // System.out.println("Users: " + users.get(0).getFirstName());
            // System.out.println("Users: " + users.get(1).getFirstName());
            // System.out.println("Users: " + users.get(1).getImagePath());
            
            if (error != null) {

                mv.addObject("error", error);
            }
            mv.addObject("users", users);
            mv.addObject("currentUserId", userId); 
        } catch (SQLException e) {
            mv.addObject("error", "Could not load users.");
        }
        return mv;
    }

    @PostMapping("/addPastRoommate")
    public String addPastRoommate(@RequestParam("currentUserId") String currentUserId,
                                  @RequestParam("newRoommateId") String newRoommateId) {
                                    System.out.println("Adding past roommate:");;
        try {
            findPastRoommateService.addPastRoommate(Integer.parseInt(currentUserId), Integer.parseInt(newRoommateId));
            return "redirect:/Your-Past-Roommate"; // Redirect back to the "Find Past Roommate" page after adding the roommate
        } catch (SQLException e) {
            e.printStackTrace();
            return "redirect:/Your-Past-Roommate?error=Could%20not%20add%20past%20roommate"; // Redirect with error message
        }
    }
}

