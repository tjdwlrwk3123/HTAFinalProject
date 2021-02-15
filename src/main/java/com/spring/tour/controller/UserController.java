package com.spring.tour.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.tour.security.MemberService;
import com.spring.tour.vo.User_InfoVo;

@Controller
public class UserController {
	
	@Autowired private MemberService service;
	
	@PostMapping("")
	public String join(User_InfoVo vo,HttpServletRequest req) throws Exception{
		service.insert(vo, req);
		return "/main";
	}
	
	@GetMapping("/gojoin")
	public String gojoin(String usertype,Model model) {
		model.addAttribute("usertype",usertype);
		return ".userjoin.userinput";
	}
	
	@GetMapping("/userterms")
	public String userterms() {
		return ".userjoin.userterms";
	}
	@PostMapping("/userselect")
	public String userselect() {
		return ".userjoin.userselect";
	}
	
	@RequestMapping(value = "/userinput", method = RequestMethod.POST)
	public String RegisterPost(User_InfoVo vo, Model model, RedirectAttributes rttr, HttpServletRequest req, HttpSession session) throws Exception {
		
		service.insert(vo, req);
		rttr.addFlashAttribute("authmsg" , "가입시 사용한 이메일로 인증해주 3");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String user_email, Model model) throws Exception { // 이메일인증
		System.out.println("기홍이바보");
		service.stateUp(user_email);
		model.addAttribute("user_email", user_email);

		return "/tour/userjoin/emailConfirm";
	}
	
}
