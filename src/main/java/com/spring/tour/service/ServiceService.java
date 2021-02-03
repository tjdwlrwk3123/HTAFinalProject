package com.spring.tour.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.ServiceDao;
import com.spring.tour.vo.User_InfoVo;
@Service
public class ServiceService {
	@Autowired private ServiceDao dao;
	public User_InfoVo select(String user_id) {
		return dao.getinfo(user_id);
	}
}
