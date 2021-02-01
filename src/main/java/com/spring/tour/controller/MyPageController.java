package com.spring.tour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MyPageController {
	
	
	@GetMapping("/changeuserinfo")
	public String checkpwd() {
		return ".mypage.checkpwd";
	}
	@PostMapping("/changeuserinfo")
	public String changeuserinfo(String pwd, Model model) {
		
		
		
		return ".mypage.changeuserinfo";
	}
}
