package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.CouponVo;

@Repository
public class MemberManagementDao {
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.spring.tour.mapper.MemberManageMapper";
	
	public List<CouponVo> couponList(HashMap<String, Object> map) {
		return sqlSession.selectList(NAMESPACE+".couponList",map);
	}
	public int couponCount(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE+".couponCount", map);
	}
}
