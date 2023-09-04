package com.study.controller;

import org.jetbrains.annotations.NotNull;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @GetMapping("/test")
    public String test() {
        return getString();
    }

    @NotNull
    private String getString() {
        return "Hello Yuri";
    }

}
