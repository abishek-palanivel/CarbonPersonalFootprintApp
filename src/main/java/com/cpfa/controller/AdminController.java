package com.cpfa.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cpfa.entity.CarbonLog;
import com.cpfa.entity.Survey;
import com.cpfa.entity.User;
import com.cpfa.repository.UserRepository;
import com.cpfa.service.CarbonService;
import com.cpfa.service.SurveyService;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private CarbonService carbonService;
	
	@Autowired
	private SurveyService surveyService;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null || !"ADMIN".equals(user.getRole())) {
			return "redirect:/login";
		}
		List<User> users = userRepo.findAll();
		List<CarbonLog> allLogs = carbonService.getAllLogs();
		double totalEmissions = allLogs.stream().mapToDouble(CarbonLog::getTotalEmission).sum();
		model.addAttribute("user", user);
		model.addAttribute("users", users);
		model.addAttribute("totalUsers", users.size());
		model.addAttribute("totalLogs", allLogs.size());
		model.addAttribute("totalEmissions", totalEmissions);
		return "admin-dashboard";
	}
	
	@GetMapping("/users")
	public String viewUsers(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null || !"ADMIN".equals(user.getRole())) {
			return "redirect:/login";
		}
		List<User> users = userRepo.findAll();
		model.addAttribute("user", user);
		model.addAttribute("users", users);
		return "admin-users";
	}
	
	@GetMapping("/logs")
	public String viewLogs(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null || !"ADMIN".equals(user.getRole())) {
			return "redirect:/login";
		}
		List<CarbonLog> logs = carbonService.getAllLogs();
		model.addAttribute("user", user);
		model.addAttribute("logs", logs);
		return "admin-logs";
	}
	
	@GetMapping("/surveys")
	public String viewSurveys(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null || !"ADMIN".equals(user.getRole())) {
			return "redirect:/login";
		}
		List<Survey> surveys = surveyService.getAllSurveys();
		model.addAttribute("user", user);
		model.addAttribute("surveys", surveys);
		return "admin-surveys";
	}


	@GetMapping("/users/delete/{id}")
	public String deleteUser(@PathVariable int id, HttpSession session) {
		User admin = (User) session.getAttribute("user");
		if (admin == null || !"ADMIN".equals(admin.getRole())) {
			return "redirect:/login";
		}
		// Prevent admin from deleting themselves
		if (admin.getId() == id) {
			return "redirect:/admin/users?error=cannot-delete-self";
		}
		userRepo.deleteById(id);
		return "redirect:/admin/users?success=deleted";
	}

	@GetMapping("/users/toggle-status/{id}")
	public String toggleUserStatus(@PathVariable int id, HttpSession session) {
		User admin = (User) session.getAttribute("user");
		if (admin == null || !"ADMIN".equals(admin.getRole())) {
			return "redirect:/login";
		}
		User user = userRepo.findById(id).orElse(null);
		if (user != null) {
			// Prevent admin from suspending themselves
			if (admin.getId() == id) {
				return "redirect:/admin/users?error=cannot-suspend-self";
			}
			if ("ACTIVE".equals(user.getStatus())) {
				user.setStatus("SUSPENDED");
			} else {
				user.setStatus("ACTIVE");
			}
			userRepo.save(user);
		}
		return "redirect:/admin/users?success=status-updated";
	}

}

	@GetMapping("/users/delete/{id}")
	public String deleteUser(@PathVariable int id, HttpSession session) {
		User admin = (User) session.getAttribute("user");
		if (admin == null || !"ADMIN".equals(admin.getRole())) {
			return "redirect:/login";
		}
		// Prevent admin from deleting themselves
		if (admin.getId() == id) {
			return "redirect:/admin/users?error=cannot-delete-self";
		}
		userRepo.deleteById(id);
		return "redirect:/admin/users?success=deleted";
	}
	
	@GetMapping("/users/toggle-status/{id}")
	public String toggleUserStatus(@PathVariable int id, HttpSession session) {
		User admin = (User) session.getAttribute("user");
		if (admin == null || !"ADMIN".equals(admin.getRole())) {
			return "redirect:/login";
		}
		User user = userRepo.findById(id).orElse(null);
		if (user != null) {
			// Prevent admin from suspending themselves
			if (admin.getId() == id) {
				return "redirect:/admin/users?error=cannot-suspend-self";
			}
			if ("ACTIVE".equals(user.getStatus())) {
				user.setStatus("SUSPENDED");
			} else {
				user.setStatus("ACTIVE");
			}
			userRepo.save(user);
		}
		return "redirect:/admin/users?success=status-updated";
	}
