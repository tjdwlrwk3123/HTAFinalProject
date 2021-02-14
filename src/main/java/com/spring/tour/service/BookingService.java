package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.BookingDao;
import com.spring.tour.vo.AccomBookVo;
import com.spring.tour.vo.TourBookVo;

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
	public List<TourBookVo> tourBookList(HashMap<String, Object> tourMap){
		return dao.tourBookList(tourMap);
	}
	public int tourCount(String user_id) {
		return dao.tourCount(user_id);
	}
}
