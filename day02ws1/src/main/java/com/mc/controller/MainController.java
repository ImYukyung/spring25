package com.mc.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class MainController {

    @RequestMapping("/")
    public String main(){
        return "index";
    }

}
