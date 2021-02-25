package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.tour.service.CustomercenterService;
import com.spring.tour.vo.CustomercenterVo;

@Controller
public class CustomercenterUpdateController {
	@Autowired
	private CustomercenterService service;
	
	@GetMapping(value="/customercenter/update")
	public String updateForm(int question_number,Model model) {
		CustomercenterVo vo=service.select(question_number);
		model.addAttribute("vo",vo);
		return "/customercenter/update";
	}
	@PostMapping(value="/customercenter/update")
			public String update(CustomercenterVo vo,Model model) {
		try {
			service.update(vo);
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("code","fail");
		}
		return "/customercenter/result";
	}
}
