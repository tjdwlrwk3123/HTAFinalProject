package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.Service_answerService;
import com.spring.tour.vo.Service_answerVo;

@Controller
public class Service_answer_DetailController {
	@Autowired
	private Service_answerService service;
	@GetMapping("/service_answer/detail")
	public ModelAndView detail(int service_answer_number) {
		ModelAndView mv=new ModelAndView("/service_answer/detail");
		Service_answerVo vo=service.select(service_answer_number);
		Service_answerVo prev=service.select(service_answer_number);
		Service_answerVo next=service.select(service_answer_number);
		
		String service_answer_content=vo.getService_answer_content();
		service_answer_content=service_answer_content.replaceAll("\n", "<br>");
		vo.setService_answer_content(service_answer_content);
		
		mv.addObject("vo", vo);
		mv.addObject("prev", prev);
		mv.addObject("next", next);
		
		return mv;
	}
}
