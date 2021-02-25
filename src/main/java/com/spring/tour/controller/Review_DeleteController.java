package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.tour.service.ReviewService;

@Controller
public class Review_DeleteController {
	@Autowired ReviewService service;
	
	@GetMapping(value="/review/delete")
	public String delete(int review_number) {
		service.delete(review_number);
		return "redirect:/review/list";
	}
}
