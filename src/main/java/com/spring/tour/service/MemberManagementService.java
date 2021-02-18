package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.MemberManagementDao;
import com.spring.tour.vo.CouponVo;

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
}
