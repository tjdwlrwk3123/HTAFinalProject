package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.AccomDao;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.AccomServiceReviewJoinVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;

@Service
public class AccomService {
	@Autowired
	private AccomDao dao;
	
	public List<AccomServiceReviewJoinVo> accom_service_list(HashMap<String, Object> fcMap){
		return dao.accom_service_list(fcMap);
	}
	public List<HashMap<String, Object>> accom_minprice(HashMap<String, Object> pmap) {
		return dao.accom_minprice(pmap);
	}
	public AccomInfoVo accomInfo(int accomNum) {
		return dao.accomInfo(accomNum);
	}
	public Accom_serviceVo accomService(int accomNum) {
		return dao.accomService(accomNum);
	}
	public List<AccomOptionVo> accomOption(HashMap<String, Object> map){
		return dao.accomOption(map);
	}
	public ImageVo accomRepresentImage(int serviceNum) {
		return dao.accomRepresentImage(serviceNum);
	}
	public List<ImageVo> accomWholeImage(int accomNum){
		return dao.accomWholeImage(accomNum);
	}
	public List<ImageVo> accomRoomImage(int optNum){
		return dao.accomRoomImage(optNum);
	}
	public int isUsing(HashMap<String, Object> map) {
		return dao.isUsing(map);
	}
	public int howLong(HashMap<String, Object> map) {
		return dao.howLong(map);
	}
	public AccomOptionVo accomRoomDetail(int optNum) {
		return dao.accomRoomDetail(optNum);
	}
	public List<Accom_serviceVo> accomDetailForId(String user_id){
		return dao.accomDetailForId(user_id);
	}
	//¼÷¼Ò ÆòÁ¡»Ì¾Æ¿À±â
	public int accomStarPoint(HashMap<String, Object> map) {
		return dao.accomStarPoint(map);
	}
}
