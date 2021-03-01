package com.spring.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.AuthManageService;
import com.spring.tour.vo.AuthManageVo;

@Controller
public class AuthManageController {
	
	@Autowired
	private AuthManageService service;
	
	@RequestMapping("/authChange")
	public ModelAndView authManageList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(".auth.authChange.admin");
		List<AuthManageVo> list = service.authManageList();
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping("/authChangeBtn")
	public String authChangeBtn(String user_id,String user_condition,String token_authority) {
		service.authChangeAuth(user_id, token_authority);
		service.authChangeStatus(user_id, user_condition);
		return "redirect:/authChange";
	}
	
	@RequestMapping("/searchId")
	public ModelAndView searchid(String user_id) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(".auth.authChange.admin");
		List<AuthManageVo> list = service.authManageId(user_id);
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping("/searchStatus")
	public ModelAndView searchStatus(String user_condition) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(".auth.authChange.admin");
		List<AuthManageVo> list = service.authManageStatus(user_condition);
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping("/searchRole")
	public ModelAndView searchRole(String token_authority) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(".auth.authChange.admin");
		List<AuthManageVo> list=service.authManageAuth(token_authority);
		mav.addObject("list",list);
		return mav;
	}
}
