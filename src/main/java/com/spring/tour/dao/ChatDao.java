package com.spring.tour.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.ChatVo;



@Repository
public class ChatDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	private final String NAMESPACE = "com.test.finalproject.mapper.ChatMapper";
	
	public ChatVo check(String username) {
		return sqlsession.selectOne(NAMESPACE+".check",username);
	}
	
	public ChatVo getOne() {
		return sqlsession.selectOne(NAMESPACE+".one");
	}
	
	public int isUsing(String username) {
		return sqlsession.update(NAMESPACE+".isUsing",username);
	}
	
	public int isWaiting(String username) {
		return sqlsession.update(NAMESPACE+".isWaiting",username);
	}
}
