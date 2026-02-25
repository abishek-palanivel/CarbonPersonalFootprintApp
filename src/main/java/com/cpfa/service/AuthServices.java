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
		if (user.getStatus() == null || user.getStatus().isEmpty()) {
			user.setStatus("ACTIVE");
		}
		userRepo.save(user);
		return "Registered Successfully";
	}
	
	public User login(String email, String password) {
		System.out.println("🔍 Login attempt for email: " + email);
		User user = userRepo.findByEmail(email).orElse(null);
		
		if (user == null) {
			System.out.println("❌ User not found with email: " + email);
			return null;
		}
		
		System.out.println("✅ User found: " + user.getName() + " (Role: " + user.getRole() + ")");
		System.out.println("🔐 Stored password hash: " + user.getPassword().substring(0, 20) + "...");
		System.out.println("🔑 Attempting to match password...");
		
		boolean matches = passwordEncoder.matches(password, user.getPassword());
		System.out.println("🔓 Password match result: " + matches);
		
		if (!matches) {
			System.out.println("❌ Password mismatch for: " + email);
			return null;
		}
		
		// Check if user is suspended
		if ("SUSPENDED".equals(user.getStatus())) {
			System.out.println("⛔ User is suspended: " + email);
			return null;
		}
		
		System.out.println("✅ Login successful for: " + email);
		return user;
	}
	
	public User findByEmail(String email) {
		return userRepo.findByEmail(email).orElse(null);
	}
	
	public long getUserCount() {
		return userRepo.count();
	}
}