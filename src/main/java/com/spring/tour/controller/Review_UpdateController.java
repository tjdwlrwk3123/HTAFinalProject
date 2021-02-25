package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.tour.service.ReviewService;
import com.spring.tour.vo.ReviewVo;

@Controller
public class Review_UpdateController {
	@Autowired
	private ReviewService service;
	
	@GetMapping(value="/review/update")
	public String updateForm(int review_number,Model model) {
		ReviewVo vo=service.select(review_number);
		model.addAttribute("vo",vo);
		return "/review/update";
	}
	@PostMapping(value="/review/update")
			public String update(ReviewVo vo,Model model) {
		try {
			service.update(vo);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "/review/result";
	}
}
