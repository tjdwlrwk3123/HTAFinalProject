package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.tour.service.Service_questionService;

@Controller
public class Service_question_DeleteController {
	@Autowired Service_questionService service;
	
	@GetMapping(value="/service_question/delete")
	public String delete(int service_question_number) {
		service.delete(service_question_number);
		return "redirect:/service_question/list";
	}
}
