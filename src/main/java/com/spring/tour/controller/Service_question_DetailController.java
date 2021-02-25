package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.Service_questionService;
import com.spring.tour.vo.Service_questionVo;

@Controller
public class Service_question_DetailController {
	@Autowired
	private Service_questionService service;
	@GetMapping("/service_question/detail")
	public ModelAndView detail(int service_question_number) {
		ModelAndView mv=new ModelAndView("/service_question/detail");
		Service_questionVo vo=service.select(service_question_number);
		Service_questionVo prev=service.select(service_question_number);
		Service_questionVo next=service.select(service_question_number);
		
		String service_question_content = vo.getService_question_content();
		service_question_content=service_question_content.replaceAll("\n", "<br>");
		vo.setService_question_content(service_question_content);;
		
		mv.addObject("vo",vo);
		mv.addObject("prev",prev);
		mv.addObject("next",next);
		return mv;
		
	}
}
