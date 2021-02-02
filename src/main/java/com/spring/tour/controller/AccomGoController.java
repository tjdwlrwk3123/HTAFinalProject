package com.spring.tour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccomGoController {
	
	@RequestMapping(value="/accomlist")
	public String goAccomSelect() {
		return "/accom/accomSelect";
	}
}
