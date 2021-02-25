package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.tour.service.Service_answerService;
import com.spring.tour.vo.Service_answerVo;

@Controller
public class Service_answer_UpdateController {
	@Autowired
	private Service_answerService service;

	@GetMapping(value="/service_answer/update")
	public String updateForm(int service_answer_number,Model model) {
	Service_answerVo vo=service.select(service_answer_number);
	model.addAttribute("vo",vo);
	return "/service_answer/update";
}

	@PostMapping(value = "/service_answer/update")
	public String update(Service_answerVo vo, Model model) {
		try {
			service.update(vo);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("code", "fail");
		}
		return "/service_answer/result";
	}
}
