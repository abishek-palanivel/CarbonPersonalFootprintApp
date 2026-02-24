package com.cpfa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.cpfa.entity.Survey;
import com.cpfa.repository.SurveyRepository;

@RestController
@RequestMapping("/survey")
public class SurveyController {
	@Autowired
	private SurveyRepository surveyRepo;

	@PostMapping("/save")
	public Survey save(Survey survey) {
		return surveyRepo.save(survey);
	}
}
