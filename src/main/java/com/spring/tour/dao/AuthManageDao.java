package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.AuthManageVo;

@Repository
public class AuthManageDao {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.spring.tour.mapper.AuthManagementMapper";
	
	public List<AuthManageVo> authManageList(){
		return sqlSession.selectList(NAMESPACE+".authManageList");
	}
	
	public List<AuthManageVo> authManageId(String user_id){
		return sqlSession.selectList(NAMESPACE+".authManageId",user_id);
	}
	public List<AuthManageVo> authManageStatus(String user_condition){
		return sqlSession.selectList(NAMESPACE+".authManageId",user_condition);
	}
	public List<AuthManageVo> authManageAuth(String token_authority){
		return sqlSession.selectList(NAMESPACE+".authManageId",token_authority);
	}
	
	public void authChangeStatus(String user_id,String user_condition) {
		HashMap<String,Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("user_condition", user_condition);
		sqlSession.update(NAMESPACE+".authChangeStatus",map);
	}
	
	public void authChangeAuth(String user_id,String token_authority) {
		HashMap<String,Object> map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("token_authority", token_authority);
		sqlSession.update(NAMESPACE+".authChangeAuth",map);
	}
}
