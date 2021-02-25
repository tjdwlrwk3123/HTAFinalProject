package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.tour.service.Customercenter_answerService;
import com.spring.tour.vo.Customercenter_answerVo;

@Controller
public class Customercenter_answer_InsertController {
	@Autowired
	private Customercenter_answerService service;
	
	@RequestMapping(value="/customercenter_answer/insert", method=RequestMethod.GET)
	public String insertForm() {
		return "customercenter_answer/insert";
	}
	@RequestMapping(value="/customercenter_answer/insert",method=RequestMethod.POST)
	public String insert(Customercenter_answerVo vo,Model model) {
		int n=service.insert(vo);
		if(n>0) {
			model.addAttribute("code", "success");
		}else {
			model.addAttribute("code", "fail");
		}
		return "/customercenter_answer/result";
	}
}
