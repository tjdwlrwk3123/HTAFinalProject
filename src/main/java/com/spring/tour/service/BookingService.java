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
	//지난 숙소 목록
	public List<AccomBookVo> accompastList(HashMap<String, Object> accomMap){
		return dao.accompastList(accomMap);
	}
	public int accompastCount(String user_id) {
		return dao.accompastCount(user_id);
	}
	//숙소 취소목록
	public List<AccomBookVo> accomCancelList(String user_id){
		return dao.accomCancelList(user_id);
	}
	public int accomCancel(int bookNumber) {
		return dao.accomCancel(bookNumber);
	}
	
	
	public List<TourBookVo> tourBookList(HashMap<String, Object> tourMap){
		return dao.tourBookList(tourMap);
	}
	public int tourCount(String user_id) {
		return dao.tourCount(user_id);
	}
	//지난 투어목록
	public List<TourBookVo> tourpastList(HashMap<String, Object> tourMap){
		return dao.tourpastList(tourMap);
	}
	public int tourpastCount(String user_id) {
		return dao.tourpastCount(user_id);
	}
	//투어 취소목록
	public List<TourBookVo> tourCancelList(String user_id){
		return dao.tourCancelList(user_id);
	}
	public int tourCancel(int bookNumber) {
		return dao.tourCancel(bookNumber);
	}
}
