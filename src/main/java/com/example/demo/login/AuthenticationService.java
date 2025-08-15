package com.example.demo.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate(String username, String password) {
        boolean isValidName = username.equalsIgnoreCase("khushi");
        boolean isValidPassword = password.equalsIgnoreCase("dummy");
        return isValidPassword && isValidName;
    }
}
