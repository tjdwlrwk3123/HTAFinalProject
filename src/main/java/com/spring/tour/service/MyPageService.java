package com.spring.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.MyPageDao;
import com.spring.tour.vo.User_InfoVo;
@Service
public class MyPageService {
	@Autowired private MyPageDao dao;
	public User_InfoVo getinfo(String user_id) {
		return dao.getinfo(user_id);
	}
}
