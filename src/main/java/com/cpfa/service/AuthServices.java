package com.cpfa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.cpfa.entity.User;
import com.cpfa.repository.UserRepository;

@Service
public class AuthServices {
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	public String register(User user) {
		if (userRepo.findByEmail(user.getEmail()).isPresent()) {
			return "Email already exists";
		}
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		if (user.getRole() == null || user.getRole().isEmpty()) {
			user.setRole("USER");
		}
		userRepo.save(user);
		return "Registered Successfully";
	}
	
	public User login(String email, String password) {
		User user = userRepo.findByEmail(email).orElse(null);
		if (user != null && passwordEncoder.matches(password, user.getPassword())) {
			return user;
		}
		return null;
	}
	
	public User findByEmail(String email) {
		return userRepo.findByEmail(email).orElse(null);
	}
}