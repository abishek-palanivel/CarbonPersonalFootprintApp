package com.cpfa.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cpfa.entity.Survey;
import com.cpfa.entity.User;
import com.cpfa.repository.SurveyRepository;

@Service
public class SurveyService {
	
	@Autowired
	private SurveyRepository surveyRepo;
	
	public Survey saveSurvey(User user, String transportMode, String dietType, double energyUsage) {
		Survey survey = new Survey();
		survey.setUser(user);
		survey.setTransportMode(transportMode);
		survey.setDietType(dietType);
		survey.setEnergyUsage(energyUsage);
		return surveyRepo.save(survey);
	}
	
	public List<Survey> getUserSurveys(User user) {
		return surveyRepo.findByUser(user);
	}
	
	public List<Survey> getAllSurveys() {
		return surveyRepo.findAll();
	}
}
