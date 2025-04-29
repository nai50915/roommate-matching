package uga.roommate.cs4370.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.core.model.Model;

import uga.roommate.cs4370.services.HomeService;

@Controller
@RequestMapping
public class HomeController {
    private final HomeService homeService;

    @Autowired
    public HomeController (HomeService homeService) {
        this.homeService = homeService;
    }

    /**
     * Handles root URL 
     */
    @GetMapping
    public ModelAndView webpage(@RequestMapping(name = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("home_page");
        mv.addObject("errorMessage", error);
        return mv;
    }
}
