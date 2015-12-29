package org.selico.inventory.controller;

import org.selico.inventory.model.User;
import org.selico.inventory.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author Yasitha Pandithawatta
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public ModelAndView viewUsers() {

        ModelAndView model = new ModelAndView();
        Object users = userService.getUserList();
        model.addObject("users", users);
        model.setViewName("main");
        return model;

    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
