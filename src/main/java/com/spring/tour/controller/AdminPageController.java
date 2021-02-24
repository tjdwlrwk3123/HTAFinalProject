package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tour.security.MemberService;

@Controller
public class AdminPageController {
	
	@Autowired private MemberService service;
	
	@RequestMapping(value="/adminPage")
	public String adminPage() {
		return ".adminpage";
	}
	
	@RequestMapping(value="/adminSend")
	public String adminSendMail(String user_id,String textarea) throws Exception{
		service.adminEmailSend(user_id, textarea);
		return ".adminpage";
	}
	
	@RequestMapping(value="/AdminMail")
	public String adminMail() {
		return ".service.MailSend.admin";
	}
}
