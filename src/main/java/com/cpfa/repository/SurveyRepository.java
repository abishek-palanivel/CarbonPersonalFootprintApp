package com.cpfa.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.cpfa.entity.Survey;
import com.cpfa.entity.User;

public interface SurveyRepository extends JpaRepository<Survey, Integer> {
	List<Survey> findByUser(User user);
}
