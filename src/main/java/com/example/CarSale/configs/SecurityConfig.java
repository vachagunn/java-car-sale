//package com.example.CarSale.configs;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.HttpMethod;
//import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.SecurityFilterChain;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig {
//    @Autowired
//    UserDetailsService userDetailsService;
//
//    @Bean
//    public DaoAuthenticationProvider authenticationProvider() {
//        DaoAuthenticationProvider autoProvider = new DaoAuthenticationProvider();
//
//        autoProvider.setUserDetailsService(userDetailsService);
//        autoProvider.setPasswordEncoder(passwordEncoder());
//
//        return autoProvider;
//    }
//
//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    @Bean
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http
//                .formLogin(form -> form.failureForwardUrl("/error"))
//                .logout(logout -> logout.logoutSuccessUrl("/"))
//                .authorizeHttpRequests(auth ->
//                        auth.requestMatchers("/login", "/", "/register").permitAll()
//                                .requestMatchers(HttpMethod.POST, "/register").anonymous()
//                                .anyRequest().authenticated()
//                );
//
//        http.authenticationProvider(authenticationProvider());
//
//        return http.build();
//    }
//}