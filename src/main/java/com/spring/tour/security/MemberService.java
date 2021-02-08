package com.spring.tour.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.MemberDao;
import com.spring.tour.vo.IdTokenVo;
import com.spring.tour.vo.User_InfoVo;

@Service
public class MemberService {
	@Autowired private PasswordEncoder encoder;
	
	@Autowired MemberDao dao;
	
	public int insert(User_InfoVo vo,HttpServletRequest req) {
		String password=vo.getUser_pass();
		vo.setUser_pass(encoder.encode(password));
		dao.insert(vo);
		IdTokenVo avo=new IdTokenVo();
		avo.setUser_id(vo.getUser_id());
		String type = req.getParameter("usertype");
		if(type.equals("ADMIN")) {//관리자 가입조건
			avo.setToken_authority("ROLE_ADMIN");
		}else if(type.equals("partner")) {//서비스 제공자 가입조건
			avo.setToken_authority("ROLE_PARTNER");
		}else {//일반회원 가입조건
			avo.setToken_authority("ROLE_MEMBER");
		}
		dao.insert(avo);
		return 1;
	}
	
	public MemberUserDetail userDetail(String user_id) {
		return dao.getAuthsList(user_id);
	}
}
