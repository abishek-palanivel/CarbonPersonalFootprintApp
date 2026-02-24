package com.cpfa.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.cpfa.entity.CarbonLog;
import com.cpfa.entity.Survey;
import com.cpfa.entity.User;
import com.cpfa.service.CarbonService;
import com.cpfa.service.SurveyService;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private CarbonService carbonService;
	
	@Autowired
	private SurveyService surveyService;
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/login";
		}
		List<CarbonLog> logs = carbonService.getUserLogs(user);
		double totalEmission = carbonService.getUserTotalEmission(user);
		model.addAttribute("user", user);
		model.addAttribute("logs", logs);
		model.addAttribute("totalEmission", totalEmission);
		return "user-dashboard";
	}
	
	@GetMapping("/calculate")
	public String calculatePage(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/login";
		}
		model.addAttribute("user", user);
		return "calculate";
	}
	
	@PostMapping("/calculate")
	public String calculate(@RequestParam String transportMode, @RequestParam double distance,
	                        @RequestParam String dietType, @RequestParam double energyUsage,
	                        HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/login";
		}
		CarbonLog log = carbonService.saveCarbonLog(user, transportMode, distance, dietType, energyUsage);
		model.addAttribute("result", log);
		return "result";
	}
	
	@GetMapping("/survey")
	public String surveyPage(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/login";
		}
		model.addAttribute("user", user);
		return "survey";
	}
	
	@PostMapping("/survey")
	public String submitSurvey(@RequestParam String transportMode, @RequestParam String dietType,
	                           @RequestParam double energyUsage, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/login";
		}
		surveyService.saveSurvey(user, transportMode, dietType, energyUsage);
		model.addAttribute("message", "Survey submitted successfully!");
		return "redirect:/user/dashboard";
	}
	
	@GetMapping("/history")
	public String history(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "redirect:/login";
		}
		List<CarbonLog> logs = carbonService.getUserLogs(user);
		model.addAttribute("user", user);
		model.addAttribute("logs", logs);
		return "history";
	}
}
