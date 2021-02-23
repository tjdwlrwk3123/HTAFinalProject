package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.MyPageDao;
import com.spring.tour.vo.CouponVo;
import com.spring.tour.vo.User_InfoVo;
@Service
public class MyPageService {
	@Autowired private MyPageDao dao;
	public User_InfoVo getinfo(String user_id) {
		return dao.getinfo(user_id);
	}
	public int updateuserinfo(User_InfoVo vo) {
		return dao.updateuserinfo(vo);
	}
	public int countcoupon(HashMap<String, Object> map) {
		return dao.countcoupon(map);
	}
	public List<CouponVo> couponlist(HashMap<String, Object> map) {
		return dao.couponlist(map);
	}
}
