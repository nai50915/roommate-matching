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

/**
 * Handles /Matches URL
 */
@Controller
@RequestMapping("/Your-Past-Roommate")
public class PastRoommateController {

    /**
     * Serves /Your-Past-Roommate page
     */
    @GetMapping 
    public ModelAndView webpage (@RequestParam(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("past_roommates_page");
        mv.addObject("errorMessage", error);
        System.out.println("Going to past roommates page...");
        return mv;
    }

}

