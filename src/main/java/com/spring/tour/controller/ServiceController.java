package com.spring.tour.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.tour.service.MyPageService;

@Service
public class ServiceController {
	@Autowired
	private MyPageService service;
	
	@GetMapping("/servicemain")
	public String servicemain(HttpSession session) {
		try {
			System.out.println(session);
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".login";
			}else {
				return ".service.main";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".login";
		}
	}
	
}
