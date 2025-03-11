package com.mc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

    String dir = "ajax/";

    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("center", dir+"center");
        model.addAttribute("left", dir+"left");
        return "index";
    }

    @RequestMapping("/ajax1")
    public String ajax1(Model model) {
        model.addAttribute("center", dir+"ajax1");
        model.addAttribute("left", dir+"left");
        return "index";
    }

    @RequestMapping("/ajax2")
    public String ajax2(Model model) {
        model.addAttribute("center", dir+"ajax2");
        model.addAttribute("left", dir+"left");
        return "index";
    }

    @RequestMapping("/ajax3")
    public String ajax3(Model model) {
        model.addAttribute("center", dir+"ajax3");
        model.addAttribute("left", dir+"left");
        return "index";
    }


}
