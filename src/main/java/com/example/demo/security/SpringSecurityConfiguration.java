package com.example.demo.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

import java.net.PasswordAuthentication;
import java.util.function.Function;

@Configuration
public class SpringSecurityConfiguration {
    //LDAP or Database
    //In Memory
    @Bean
    public InMemoryUserDetailsManager createUserDetailsManager() {
        UserDetails userDetails1 = crateNewUser("khushi", "dummy1");
        UserDetails userDetails2 = crateNewUser("ranga", "dummy");
        return new InMemoryUserDetailsManager(userDetails1, userDetails2);
    }

    private UserDetails crateNewUser(String username, String password) {
        Function<String, String> passwordEncoder = input -> passwordEncoder().encode(input);
        UserDetails userDetails = User.builder().
                                    passwordEncoder(passwordEncoder).username(username).password(password).roles("USER", "ADMIN").build();
        return userDetails;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
