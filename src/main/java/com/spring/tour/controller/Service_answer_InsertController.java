package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.tour.service.Service_answerService;
import com.spring.tour.vo.Service_answerVo;

@Controller
public class Service_answer_InsertController {
	@Autowired
	private Service_answerService service;
	
	@RequestMapping(value="/service_answer/insert",method=RequestMethod.GET)
	public String insertForm() {
		return "service_answer/insert";
	}
	@RequestMapping(value="/service_answer/insert",method=RequestMethod.POST)
	public String insert(Service_answerVo vo,Model model) {
		int n=service.insert(vo);
		if(n>0) {
			model.addAttribute("code", "success");
		}else {
			model.addAttribute("code","fail");
		}
		return "/service_answer/result";
	}
}
