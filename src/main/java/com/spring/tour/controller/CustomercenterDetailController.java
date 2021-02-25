package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.CustomercenterService;
import com.spring.tour.vo.CustomercenterVo;

@Controller
public class CustomercenterDetailController {
	@Autowired
	private CustomercenterService service;
	
	@GetMapping("/customercenter/detail")
	public ModelAndView detail(int question_number) {
		ModelAndView mv=new ModelAndView("/customercenter/detail");
		CustomercenterVo vo=service.select(question_number);
		CustomercenterVo prev=service.select(question_number);
		CustomercenterVo next=service.select(question_number);
		
		String question_content=vo.getQuestion_content();
		question_content=question_content.replaceAll("\n", "<br>");
		vo.setQuestion_content(question_content);
		
		mv.addObject("vo", vo);
		mv.addObject("prev", prev);
		mv.addObject("next", next);
		
		return mv;
		
	}
}
