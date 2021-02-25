package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.tour.service.ReviewService;
import com.spring.tour.vo.ReviewVo;

@Controller
public class Review_InsertController {
	@Autowired
	private ReviewService service;
	
	@RequestMapping(value="/review/insert",method=RequestMethod.GET)
	public String insertForm() {
		return "review/insert";
	}
	@RequestMapping(value="/review/insert",method=RequestMethod.POST)
	public String insert(ReviewVo vo,Model model) {
		int n=service.insert(vo);
		if(n>0) {
			model.addAttribute("code","success");
		}else {
			model.addAttribute("code","fail");
		}
		return "/review/result";
	}
}
