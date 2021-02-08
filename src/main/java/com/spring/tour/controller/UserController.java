package com.spring.tour.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.tour.security.MemberService;
import com.spring.tour.vo.User_InfoVo;

@Controller
public class UserController {
	
	@Autowired private MemberService service;
	
	@PostMapping("")
	public String join(User_InfoVo vo,HttpServletRequest req) {
		service.insert(vo, req);
		return "/main";
	}
	
	@GetMapping("/gojoin")
	public String gojoin(String auth) {
		return "/userinput";
	}
	
	@GetMapping("/userterms")
	public String userterms() {
		return ".userjoin.userterms";
	}
	
	
}
