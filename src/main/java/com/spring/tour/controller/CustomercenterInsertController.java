package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.tour.service.CustomercenterService;
import com.spring.tour.vo.CustomercenterVo;

@Controller
public class CustomercenterInsertController {
	@Autowired
	private CustomercenterService service;
	
	@RequestMapping(value="/customercenter/insert", method=RequestMethod.GET)
	public String insertForm() {
		return "customercenter/insert";
	}
	@RequestMapping(value="/customercenter/insert",method=RequestMethod.POST)
	public String insert(CustomercenterVo vo,Model model) {
		int n=service.insert(vo);
		if(n>0) {
			model.addAttribute("code", "success");
		}else {
			model.addAttribute("code", "fail");
		}
		return "/customercenter/result";
	}
}
