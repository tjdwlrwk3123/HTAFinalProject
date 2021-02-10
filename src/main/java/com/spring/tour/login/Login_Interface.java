package com.spring.tour.login;

import javax.servlet.http.HttpSession;

import com.spring.tour.vo.User_InfoVo;

public interface Login_Interface {
	
	public boolean loginCheck(User_InfoVo vo, HttpSession session);
	
	public void logout(HttpSession session);
}
