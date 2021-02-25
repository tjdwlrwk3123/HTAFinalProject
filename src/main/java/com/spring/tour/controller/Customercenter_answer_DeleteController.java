package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.tour.service.Customercenter_answerService;

@Controller
public class Customercenter_answer_DeleteController {
	@Autowired Customercenter_answerService service;
	
	@GetMapping(value="/customercenter_answer/delete")
	public String delete(int answer_number) {
		service.delete(answer_number);
		return "redirect:/customercenter_answer/list";
	}
}
