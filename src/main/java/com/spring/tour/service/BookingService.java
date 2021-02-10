package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.BookingDao;
import com.spring.tour.vo.AccomBookVo;

@Service
public class BookingService {
	@Autowired
	private BookingDao dao;
	
	public List<AccomBookVo> accomBookList(HashMap<String, Object> accomMap){
		return dao.accomBookList(accomMap);
	}
	public int accomCount(String user_id) {
		return dao.accomCount(user_id);
	}
}
