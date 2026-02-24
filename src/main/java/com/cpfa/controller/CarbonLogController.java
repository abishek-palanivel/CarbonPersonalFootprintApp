package com.cpfa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.cpfa.entity.CarbonLog;
import com.cpfa.entity.User;
import com.cpfa.repository.CarbonLogRepository;
import com.cpfa.service.CarbonService;

@RestController
@RequestMapping("/carbon")
public class CarbonLogController {
	@Autowired
	private CarbonLogRepository carbonRepo;
	@Autowired
	private CarbonService carbonService;

	@PostMapping("/add")
	public CarbonLog add(CarbonLog carbon) {
		return carbonRepo.save(carbon);
	}
}
