package com.spring.tour.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.MemberDao;
import com.spring.tour.vo.User_InfoVo;

@Service
public class Login_Impl implements Login_Interface{
	@Autowired
	MemberDao dao;
	
	@Override
	public boolean loginCheck(User_InfoVo vo, HttpSession session) {
		boolean result=dao.loginCheck(vo);
		if(result==true) {
			session.setAttribute("userid", vo.getUser_id());
		}
		return result;
	}
	
	@Override
	public void logout(HttpSession session) {
		dao.logout(session);
	}
}
