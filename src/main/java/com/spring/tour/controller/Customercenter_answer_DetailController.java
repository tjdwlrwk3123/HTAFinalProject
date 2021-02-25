package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.Customercenter_answerService;
import com.spring.tour.vo.Customercenter_answerVo;

@Controller
public class Customercenter_answer_DetailController {
	@Autowired
	private Customercenter_answerService service;
	@GetMapping("/customercenter_answer/detail")
	public ModelAndView detail(int answer_number) {
		ModelAndView mv=new ModelAndView("/customercenter_answer/detail");
		Customercenter_answerVo vo=service.select(answer_number);
		Customercenter_answerVo prev=service.select(answer_number);
		Customercenter_answerVo next=service.select(answer_number);
		
		String answer_content=vo.getAnswer_content();
		answer_content=answer_content.replaceAll("\n", "<br>");
		vo.setAnswer_content(answer_content);
		
		mv.addObject("vo", vo);
		mv.addObject("prev", prev);
		mv.addObject("next", next);
		
		return mv;
		
	}
}