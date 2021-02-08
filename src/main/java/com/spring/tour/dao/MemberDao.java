package com.spring.tour.dao;

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
		return sqlSession.insert(NAMESPACE+".user_insert",vo);
	}
	
	public int insert(IdTokenVo vo) {
		return sqlSession.insert(NAMESPACE+".auth_insert",vo);
	}
	
	public MemberUserDetail getAuthsList(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".getAuths",user_id);
	}
	
}
