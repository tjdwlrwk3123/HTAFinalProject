package com.spring.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.TourPageDao;
import com.spring.tour.vo.TourPageVo;


@Service
public class TourPageService {
	
	@Autowired
	private TourPageDao dao; 
	
	
	public List<TourPageVo> tourMainList(){
		return dao.tourMainList();
	}
}
