package com.spring.tour.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.User_InfoVo;

@Repository
public class MyPageDao {
	@Autowired private SqlSession sqlSession;
	private static String NAMESPACE="com.test.spring10.mapper.BoardMapper";
	public User_InfoVo getinfo(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".getinfo",user_id);
	}
}