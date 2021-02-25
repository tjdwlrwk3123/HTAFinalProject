package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.tour.service.Service_questionService;
import com.spring.tour.vo.Service_questionVo;

@Controller
public class Service_question_InsertController {
	@Autowired
	private Service_questionService service;
	
	@RequestMapping(value="/service_question/insert",method=RequestMethod.GET)
	public String insertForm() {
		return "service_question/insert";
	}
	@RequestMapping(value="/service_question/insert",method=RequestMethod.POST)
	public String insert(Service_questionVo vo,Model model) {
		int n=service.insert(vo);
		if(n>0) {
			model.addAttribute("code","success");
		}else {
			model.addAttribute("code","fail");
		}
		return "/service_question/result";
	}
}
