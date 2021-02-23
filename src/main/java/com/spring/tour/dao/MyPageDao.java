package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.CouponVo;
import com.spring.tour.vo.User_InfoVo;

@Repository
public class MyPageDao {
	@Autowired private SqlSession sqlSession;
	private static String NAMESPACE="com.spring.tour.mapper.MypageMapper";
	public User_InfoVo getinfo(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".getinfo",user_id);
	}
	public int updateuserinfo(User_InfoVo vo) {
		return sqlSession.update(NAMESPACE+".updateuserinfo",vo);
	}
	public int countcoupon(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE+".countcoupon",map);
	}
	public List<CouponVo> couponlist(HashMap<String, Object> map) {
		return sqlSession.selectList(NAMESPACE+".couponlist",map);
	}
}
