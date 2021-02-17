package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.tour.dao.PaymentDao;
import com.spring.tour.vo.PaymentVo;


@Service
public class PaymentService {
	@Autowired
	private PaymentDao dao;
	
	public PaymentVo getUserInfo(String user_id) {
		return dao.getUserInfo(user_id);
	}
	
	@Transactional
	public int transactionTour(HashMap<String, Object> tbMap,
								HashMap<String, Object> upMap,
								HashMap<String, Object> tboMap
								) {
		int service_number= (Integer)tboMap.get("service_number");
		List<Integer> eachOptionIndex = (List<Integer>)tboMap.get("eachOptionIndex");
		List<Integer> eachOptionCount = (List<Integer>)tboMap.get("eachOptionCount");
				
		
		dao.insertTourBook(tbMap);
		dao.updatePoint(upMap);
		dao.updateCoupon(upMap);
		int booknumber = dao.tourBookMax(); 
		
		HashMap<String, Object> map	 = new HashMap<String, Object>();
		map.put("tour_book_number", booknumber);
		map.put("service_number",service_number);
		
		System.out.println("optionsize " +eachOptionIndex.size());
		for(int i=0; i<eachOptionIndex.size(); i++) {
			map.put("tour_option_index", eachOptionIndex.get(i));
			map.put("cnt", eachOptionCount.get(i));
			dao.insertTourBookOption(map);
			dao.updateTicket(map);
		}
		return 1;
	}
	
//	@Transactional
//	public int insertTourBook(HashMap<String, Object> map) {
//		return dao.insertTourBook(map);
//	}
//	@Transactional
//	public int insertTourBookOption(HashMap<String, Object> map) {
//		return dao.insertTourBookOption(map);
//	}
//	@Transactional
//	public int tourBookMax() {
//		return dao.tourBookMax();
//	}
//	@Transactional
//	public int updatePoint(HashMap<String, Object> map) {
//		return dao.updatePoint(map);
//	}
//	@Transactional
//	public int updateCoupon(HashMap<String, Object> map) {
//		return dao.updateCoupon(map);
//	}
//	@Transactional
//	public int updateTicket(HashMap<String, Object> map) {
//		return dao.updateTicket(map);
//	}
	
	
}
