package com.example.CarSale.services;

import com.example.CarSale.entities.User;
import com.example.CarSale.entities.enums.Role;
import com.example.CarSale.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user) {
        String username = user.getUsername();

        if (userRepository.findByUsername(username).isPresent()) return false;

        user.setActive(true);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.getRoles().add(Role.ROLE_USER);
        log.info("Saving new User with username: {}", username);
        userRepository.save(user);
        return true;
    }
}
