package com.spring.tour.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.security.MemberUserDetail;
import com.spring.tour.vo.IdTokenVo;
import com.spring.tour.vo.User_InfoVo;

@Repository
public class MemberDao {
	private final String NAMESPACE ="com.spring.tour.mapper.UserMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public int insert(User_InfoVo vo) {
		System.out.println(vo);
		return sqlSession.insert(NAMESPACE+".user_insert",vo);
	}
	
	public int insert(IdTokenVo vo) {
		System.out.println(vo);
		return sqlSession.insert(NAMESPACE+".auth_insert",vo);
	}
	
	public MemberUserDetail getAuthsList(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".getAuths",user_id);
	}
	
	public void createAuthKey(String user_email,String user_authCode) throws Exception{
		IdTokenVo vo = new IdTokenVo();
		vo.setToken_data(user_authCode);
		
		sqlSession.selectOne(NAMESPACE+".createAuthKey",vo);
	}
	
	public void userAuth(String user_email) throws Exception {
		sqlSession.update(NAMESPACE + ".userAuth", user_email);
	}
	
	public void stateUp(String user_email) {
		sqlSession.update(NAMESPACE+".stateUp",user_email);
	}
	
	public User_InfoVo loginCheck(User_InfoVo vo) {
		System.out.println("로그인됬니");
		
		return sqlSession.selectOne(NAMESPACE+".loginCheck",vo);
	}
	
	public void logout(HttpSession session) {
		System.out.println("로그아웃 됬니");
		session.invalidate();
	}
}
