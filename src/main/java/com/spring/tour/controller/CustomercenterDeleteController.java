package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.tour.service.CustomercenterService;

@Controller
public class CustomercenterDeleteController {
	@Autowired CustomercenterService service;
	
	@GetMapping(value="/customercenter/delete")
	public String delete(int question_number) {
		service.delete(question_number);
		return "redirect:/customercenter/list";
	}
}
