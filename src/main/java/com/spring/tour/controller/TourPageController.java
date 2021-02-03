package com.spring.tour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TourPageController {

	
	@RequestMapping(value = "/tourMain")
	public String tourMain() {
		
		return "/tourPage/tourMain";
	}
}
