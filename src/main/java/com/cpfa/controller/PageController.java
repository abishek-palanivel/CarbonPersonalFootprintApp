package com.cpfa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
	@GetMapping("/")
	public String login() {
		return "login";
	}

	@GetMapping("/registerPage")
	public String register() {
		return "register";
	}

	@GetMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}

	@GetMapping("/carbonPage")
	public String carbon() {
		return "carbon";
	}

	@GetMapping("/surveyPage")
	public String survey() {
		return "survey";
	}
}
