package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.CouponVo;
import com.spring.tour.vo.User_InfoVo;

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
	public int createCoupon(HashMap<String, Object> map) {
		return sqlSession.insert(NAMESPACE+".createCoupon", map);
	}
	public int disposalCoupon() {
		return sqlSession.delete(NAMESPACE+".disposalCoupon");
	}
	public int deleteCoupon(HashMap<String, Object> map) {
		return sqlSession.delete(NAMESPACE+".deleteCoupon", map);
	}
	public List<User_InfoVo> memberManageList(HashMap<String, Object> map){
		return sqlSession.selectList(NAMESPACE+".memberManageList", map);
	}
	public int memberCount(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE+".memberCount", map);
	}
	public User_InfoVo memberDetail(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".memberDetail",user_id);
	}
	public int changeCondition(HashMap<String, Object> map) {
		return sqlSession.update(NAMESPACE+".changeCondition", map);
	}
	public int changeGrade(HashMap<String, Object> map) {
		return sqlSession.update(NAMESPACE+".changeGrade", map);
	}
}
