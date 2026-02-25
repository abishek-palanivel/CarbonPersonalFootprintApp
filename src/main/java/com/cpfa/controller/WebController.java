package com.cpfa.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.cpfa.entity.CarbonLog;
import com.cpfa.entity.User;
import com.cpfa.service.AuthServices;
import com.cpfa.service.CarbonService;
import com.cpfa.service.SurveyService;
import jakarta.servlet.http.HttpSession;

@Controller
public class WebController {
	
	@Autowired
	private AuthServices authService;
	
	@Autowired
	private CarbonService carbonService;
	
	@Autowired
	private SurveyService surveyService;
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@GetMapping("/register")
	public String registerPage() {
		return "register";
	}
	
	@PostMapping("/register")
	public String register(@RequestParam String name, @RequestParam String email, 
	                       @RequestParam String password, Model model) {
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		user.setRole("USER");
		String result = authService.register(user);
		model.addAttribute("message", result);
		return "login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, 
	                    HttpSession session, Model model) {
		User user = authService.login(email, password);
		if (user != null) {
			session.setAttribute("user", user);
			if ("ADMIN".equals(user.getRole())) {
				return "redirect:/admin/dashboard";
			}
			return "redirect:/user/dashboard";
		}
		model.addAttribute("error", "Invalid credentials");
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// Debug endpoint to check users
	@GetMapping("/debug/users")
	public String debugUsers(Model model) {
		long count = authService.getUserCount();
		model.addAttribute("userCount", count);
		
		// Get actual users for debugging
		User admin = authService.findByEmail("admin@cpfa.com");
		User user = authService.findByEmail("user@cpfa.com");
		
		model.addAttribute("adminExists", admin != null);
		model.addAttribute("userExists", user != null);
		
		if (admin != null) {
			model.addAttribute("adminName", admin.getName());
			model.addAttribute("adminRole", admin.getRole());
		}
		
		if (user != null) {
			model.addAttribute("userName", user.getName());
			model.addAttribute("userRole", user.getRole());
		}
		
		return "debug";
	}
}
