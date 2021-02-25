package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.tour.service.Customercenter_answerService;
import com.spring.tour.vo.Customercenter_answerVo;

@Controller
public class Customercenter_answer_UpdateController {
	@Autowired
	private Customercenter_answerService service;
	
	@GetMapping(value="/customercenter_answer/update")
	public String updateForm(int answer_number,Model model) {
		Customercenter_answerVo vo=service.select(answer_number);
		model.addAttribute("vo",vo);
		return "/customercenter_answer/update";
	}
	@PostMapping(value="/customercenter_answer/update")
			public String update(Customercenter_answerVo vo,Model model) {
		try {
			service.update(vo);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "/customercenter_answer/result";
	}
}
