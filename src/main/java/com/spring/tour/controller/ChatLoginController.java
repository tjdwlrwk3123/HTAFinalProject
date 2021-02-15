package com.spring.tour.controller;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tour.service.ChatService;
import com.spring.tour.vo.ChatVo;



@Controller
public class ChatLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChatLoginController.class);
	
	@Autowired
	private ChatService service;
	
	@RequestMapping(value = "/adminchat", method = RequestMethod.GET)
	public String adminLogin(HttpServletRequest req, Model model) { // 관리자는 따로 접근하도록
		HttpSession session = req.getSession();
		session.setAttribute("id" ,"admin");
		model.addAttribute("username","admin");
		return "/chat/adminchat";
	}
	
	@RequestMapping(value = "/login.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> login(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			ChatVo vo = service.getOne(); //소켓 접속할 아이디 하나 가져오기
			String username = vo.getUsername();

			session.setAttribute("id" ,username);
			
			logger.info("Welcome "+username );
			model.addAttribute("username", username);
			
			int n = service.isUsing(username);
			
			map.put("code", "success"); // 여기까지 진행이 잘 되면 성공
			map.put("username", username);
			
			System.out.println("username : "+username);
			
			return map;

		}catch(NullPointerException ne) { //DB에서 가져온게 없을때!
			map.put("code", "fail");
			map.put("errorMsg", "현재 모든 직원들이 상담중입니다. 잠시후 다시 시도해주세요.");
			return map;
		}
	}
	
	@RequestMapping(value = "/logout.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE} )
	@ResponseBody
	public HashMap<String, Object> logout(HttpServletRequest req, @RequestParam(name="username") String username, Model model) {
		req.getSession().removeValue("id");
		int n = service.isWaiting(username);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if(n>0) {
			map.put("code", "success");
		}else {
			map.put("code", "fail");
		}
		return map;
	}

}
