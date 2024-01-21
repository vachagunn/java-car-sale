package com.example.CarSale.controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@Slf4j
@Controller
@RequestMapping("/announcement")
public class AnnouncementController {
    @GetMapping("/")
    public String index(Map<String, Object> model) {
        return "announcement";
    }
}

