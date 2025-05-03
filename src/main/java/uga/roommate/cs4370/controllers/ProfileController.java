package uga.roommate.cs4370.controllers;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import uga.roommate.cs4370.services.UserService;
import uga.roommate.cs4370.services.ProfileService;
import uga.roommate.cs4370.services.AttributeService;
import uga.roommate.cs4370.models.User;
import uga.roommate.cs4370.models.Attribute;

@Controller
@RequestMapping("/profile")
public class ProfileController {

    // UserService has user login and registration related functions.
    private final UserService userService;
    private final ProfileService profileService;
    private final AttributeService attributeService;

    /**
     * See notes in AuthInterceptor.java regarding how this works
     * through dependency injection and inversion of control.
     */
    @Autowired
    public ProfileController(UserService userService, ProfileService profileService,
            AttributeService attributeService) {
        this.userService = userService;
        this.profileService = profileService;
        this.attributeService = attributeService;
    }

    @GetMapping
    public ModelAndView profileOfLoggedInUser() throws SQLException {
        System.out.println("User is attempting to view profile of the logged in user.");
        String userId = userService.getLoggedInUser().getUserId();
        ModelAndView mv = profileOfSpecificUser(userId);
        mv.addObject("isOwnProfile", true);
        return mv;
    }

    @GetMapping("/{userId}")
    public ModelAndView profileOfSpecificUser(@PathVariable("userId") String userId) throws SQLException {
        System.out.println("User is attempting to view profile: " + userId);
        ModelAndView mv = new ModelAndView("profile_page");

        User user = profileService.getUser(userId); // Replace this with real service call

        // Add user object to the model
        mv.addObject("user", user);

        // Optional error message
        // mv.addObject("errorMessage", error);
        boolean isOwn = userService.getLoggedInUser().getUserId().equals(userId);
        mv.addObject("isOwnProfile", isOwn);
        return mv;
    }

    @GetMapping("/attributes")
    public ModelAndView showAttributeEditor() throws SQLException {
        String userId = userService.getLoggedInUser().getUserId();
        List<Attribute> allAttrs = attributeService.getAllAttributesWithSelection(userId);
        List<Integer> selected = attributeService.getUserAttributeIds(userId);
        User user = profileService.getUser(userId);

        ModelAndView mv = new ModelAndView("edit_attributes");
        mv.addObject("allAttributes", allAttrs);
        mv.addObject("selectedAttributeIds", selected);
        mv.addObject("user", user);
        return mv;
    }

    @PostMapping("/attributes")
    public String updateAttributes(@RequestParam("attributes") List<Integer> attributes) throws SQLException {
        String userId = userService.getLoggedInUser().getUserId();
        attributeService.updateUserAttributes(userId, attributes);
        return "redirect:/profile";
    }

}
