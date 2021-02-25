package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.tour.service.Service_questionService;
import com.spring.tour.vo.Service_questionVo;

@Controller
public class Service_question_UpdateController {
	@Autowired
	private Service_questionService service;
	
	@GetMapping(value="/service_question/update")
	public String updateForm(int service_question_number,Model model) {
		Service_questionVo vo=service.select(service_question_number);
		model.addAttribute("vo",vo);
		return "/service_question/update";
	}
	@PostMapping(value="service_question/update")
	public String update(Service_questionVo vo, Model model) {
		try {
			service.update(vo);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "service_question/result";
		
	}
}
