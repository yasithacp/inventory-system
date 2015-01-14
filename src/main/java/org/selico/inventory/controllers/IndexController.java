package org.selico.inventory.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Yasitha Pandithawatta
 */
@Controller
public class IndexController {
    @RequestMapping(value = {"/", "/login"})
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("index/index");

        String msg = "Running IndexController.index() method";

        mav.addObject("msg", msg);
        return mav;
    }
}
