package com.cpfa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cpfa.entity.User;
import com.cpfa.service.AuthServices;

@RestController
@RequestMapping("/auth")
public class AuthController {
	@Autowired
	private AuthServices authService;

	@PostMapping("/register")
	public String register(User u) {
		return authService.register(u);
	}
}
