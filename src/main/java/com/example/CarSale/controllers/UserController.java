package com.example.CarSale.controllers;

import com.example.CarSale.entities.User;
import com.example.CarSale.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login-user")
    public String login() {
        return "login";
    }

    @GetMapping("/registration-user")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration-user")
    public String createUser(User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute(
                    "errorMessage", "Пользователь " + user.getUsername() + "уже существует"
            );
            return "registration";
        }
        return "redirect:/login";
    }

    @GetMapping("/hello")
    public String securityUrl() {
        return "hello";
    }
}
