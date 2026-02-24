package com.cpfa.service;

import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cpfa.entity.CarbonLog;
import com.cpfa.entity.User;
import com.cpfa.repository.CarbonLogRepository;

@Service
public class CarbonService {
	
	@Autowired
	private CarbonLogRepository carbonRepo;
	
	public double calculateTransportEmission(String transport, double distance) {
		double emissionFactor = switch (transport.toLowerCase()) {
			case "car" -> 0.21;
			case "bus" -> 0.089;
			case "train" -> 0.041;
			case "bike" -> 0.0;
			case "walk" -> 0.0;
			default -> 0.15;
		};
		return emissionFactor * distance;
	}
	
	public double calculateFoodEmission(String diet) {
		return switch (diet.toLowerCase()) {
			case "nonveg" -> 7.19;
			case "veg" -> 3.81;
			case "vegan" -> 2.89;
			default -> 5.0;
		};
	}
	
	public double calculateEnergyEmission(double energyUsage) {
		return energyUsage * 0.92;
	}
	
	public CarbonLog saveCarbonLog(User user, String transportMode, double distance, 
	                                String dietType, double energyUsage) {
		CarbonLog log = new CarbonLog();
		log.setUser(user);
		log.setDate(LocalDate.now());
		log.setTransportEmission(calculateTransportEmission(transportMode, distance));
		log.setFoodEmission(calculateFoodEmission(dietType));
		log.setEnergyEmission(calculateEnergyEmission(energyUsage));
		log.setTotalEmission(log.getTransportEmission() + log.getFoodEmission() + log.getEnergyEmission());
		return carbonRepo.save(log);
	}
	
	public List<CarbonLog> getUserLogs(User user) {
		return carbonRepo.findByUser(user);
	}
	
	public List<CarbonLog> getAllLogs() {
		return carbonRepo.findAll();
	}
	
	public double getUserTotalEmission(User user) {
		return carbonRepo.findByUser(user).stream()
			.mapToDouble(CarbonLog::getTotalEmission)
			.sum();
	}
}
