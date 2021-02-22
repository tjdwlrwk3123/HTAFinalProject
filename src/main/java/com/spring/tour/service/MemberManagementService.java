package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.MemberManagementDao;
import com.spring.tour.vo.CouponVo;
import com.spring.tour.vo.User_InfoVo;

@Service
public class MemberManagementService {
	@Autowired
	private MemberManagementDao dao;
	
	public List<CouponVo> couponList(HashMap<String, Object> map){
		return dao.couponList(map);
	}
	public int couponCount(HashMap<String, Object> map) {
		return dao.couponCount(map);
	}
	public int createCoupon(HashMap<String, Object> map) {
		return dao.createCoupon(map);
	}
	public int disposalCoupon() {
		return dao.disposalCoupon();
	}
	public int deleteCoupon(HashMap<String, Object> map) {
		return dao.deleteCoupon(map);
	}
	public List<User_InfoVo> memberManageList(HashMap<String, Object> map){
		return dao.memberManageList(map);
	}
	public int memberCount(HashMap<String, Object> map) {
		return dao.memberCount(map);
	}
	public User_InfoVo memberDetail(String user_id) {
		return dao.memberDetail(user_id);
	}
	public int changeCondition(HashMap<String, Object> map) {
		return dao.changeCondition(map);
	}
	public int changeGrade(HashMap<String, Object> map) {
		return dao.changeGrade(map);
	}
}
