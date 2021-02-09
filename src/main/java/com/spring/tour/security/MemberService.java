package com.spring.tour.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.MemberDao;
import com.spring.tour.vo.IdTokenVo;
import com.spring.tour.vo.User_InfoVo;

@Service
public class MemberService {
	@Autowired private PasswordEncoder encoder;
	
	@Autowired MemberDao dao;
	@Autowired private JavaMailSender mailSender;
	
	public int insert(User_InfoVo vo,HttpServletRequest req) throws Exception{
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
		
		String key = new TempKey().getKey(50, false); // 인증키 생성
		avo.setToken_data(key);
		//dao.createAuthKey(vo.getUser_email(), key);
		
		dao.insert(avo);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[기홍투어 인증 이메일]");
		sendMail.setText(
				new StringBuffer().append("<h1>메일인증</h1>").append("<a href='http://localhost:8081/tour/emailConfirm?user_email=").append(vo.getUser_email()).append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("dhrmstn11@gmail.com", "관리자");
		sendMail.setTo(vo.getUser_email());
		sendMail.send();
		
		return 1;
	}
	
	public MemberUserDetail userDetail(String user_id) {
		return dao.getAuthsList(user_id);
	}
	
	
	public void userAuth(String user_email) throws Exception {
		dao.userAuth(user_email);
	}
	
	public void stateUp(String user_email) {
		 dao.stateUp(user_email);
	}
}
