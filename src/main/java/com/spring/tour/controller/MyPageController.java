package com.spring.tour.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.tour.service.MyPageService;
import com.spring.tour.vo.User_InfoVo;

@Controller
public class MyPageController {
	@Autowired
	private MyPageService service;
	
	@GetMapping("/changeuserinfo")
	public String checkpwd(HttpSession session) {
		try {
			System.out.println(session);
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".login";
			}else {
				return ".mypage.checkpwd";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".login";
		}
	}
	@PostMapping("/changeuserinfo")
	public String changeuserinfo(String pwd, Model model,HttpSession session) {
		String user_id=(String)session.getAttribute("user_id");
		User_InfoVo vo = service.select(user_id);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(pwd, vo.getUser_password())) {
			return ".mypage.changeuserinfo";
		}else {
			return ".mypage.checkpwd";
		}
	}
}
