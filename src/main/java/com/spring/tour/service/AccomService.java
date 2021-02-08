package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.AccomDao;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.Accom_serviceVo;

@Service
public class AccomService {
	@Autowired
	private AccomDao dao;
	
	public List<Accom_serviceVo> accom_service_list(HashMap<String, Object> fcMap){
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
	public List<AccomOptionVo> accomOption(int accomNum){
		return dao.accomOption(accomNum);
	}
}
