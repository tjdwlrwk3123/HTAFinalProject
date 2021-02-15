package com.spring.tour.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.login.Login_Interface;
import com.spring.tour.login.PasswordEncoding;
import com.spring.tour.vo.User_InfoVo;

@Controller
@SessionAttributes("login")
public class LoginController {
	
	@Autowired
	private Login_Interface login_Interface;
	
	@RequestMapping("/userlogin")
	public String login() {
		return ".userjoin.userlogin";
	}
	
	//로그인 처리
		@RequestMapping(value="/loginCheck")
		public ModelAndView loginCheck(@ModelAttribute User_InfoVo vo,HttpSession session) {
			ModelAndView mav = new ModelAndView();
			PasswordEncoding pe = new PasswordEncoding();
			
			User_InfoVo result = login_Interface.loginCheck(vo, session);
			boolean mat = pe.matches(vo.getUser_pass(), result.getUser_pass());
			mav.setViewName(".userjoin.successTest");
			
			String con = result.getUser_condition();
			
			if(mat) {
				if(con.equals("1")) {
					mav.addObject("msg","메일 인증 됌");
					session.setAttribute("user_id", vo.getUser_id());
				}else if(con.equals("0")){
					mav.addObject("msg","메일 인증 안됌");
				}else {
					mav.addObject("msg","탈퇴한 회원");
				}
			}else {
				mav.addObject("msg","가입 안됬음");
			}
				return mav;
			
		}
		
		//로그아웃 처리
		@RequestMapping("/logout")
		public ModelAndView logout(HttpSession session) {
			
			login_Interface.logout(session);
			ModelAndView mav = new ModelAndView();
			mav.setViewName(".userjoin.successTest");
			mav.addObject("msg", "logout");
			
			return mav;
		}
}
