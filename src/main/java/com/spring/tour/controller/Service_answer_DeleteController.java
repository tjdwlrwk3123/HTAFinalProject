package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.tour.service.Service_answerService;

@Controller
public class Service_answer_DeleteController {
	@Autowired Service_answerService service;
	
	@GetMapping(value="/service_answer/delete")
	public String delete(int service_answer_number) {
			service.delete(service_answer_number);
			return "redirect:/service_answer/list";
		}
	}
