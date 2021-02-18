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
	public User_InfoVo loginCheck(User_InfoVo vo, HttpSession session) {
		User_InfoVo result=new User_InfoVo();
		result=dao.loginCheck(vo);
		return result;

	}
	
	@Override
	public void logout(HttpSession session) {
		dao.logout(session);
	}
	
	@Override
	public String kakaoinput(User_InfoVo vo) {
		User_InfoVo result=new User_InfoVo();
		System.out.println("¿”«√"+vo.getUser_id());
		result=dao.loginCheck(vo);
		System.out.println(result);
		if(result==null) {
			return "a";
		}else {
			return result.getUser_id();
		}
	}
}
