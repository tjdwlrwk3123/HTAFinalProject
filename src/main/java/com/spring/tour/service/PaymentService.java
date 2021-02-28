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
								HashMap<String, Object> tboMap) {
		
		int service_number= (Integer)tboMap.get("service_number");
		List<Integer> eachOptionIndex = (List<Integer>)tboMap.get("eachOptionIndex");
		List<Integer> eachOptionCount = (List<Integer>)tboMap.get("eachOptionCount");
		
		// 예약 테이블에 저장
		dao.insertTourBook(tbMap);
		
		// 예약 테이블에 저장한 시퀀스 넘버 가져오기
		int booknumber = dao.tourBookMax(); 
		
		// tour_book_option & tour_option 테이블을 위한 map
		HashMap<String, Object> map	 = new HashMap<String, Object>(); // 
		map.put("tour_book_number", booknumber);
		map.put("service_number",service_number);
		
		for(int i=0; i<eachOptionIndex.size(); i++) {
			map.put("tour_option_index", eachOptionIndex.get(i));
			map.put("cnt", eachOptionCount.get(i));
			dao.insertTourBookOption(map); // 예약 내역과 연결하여 예약된 옵션 상세내역 저장
			dao.updateTicket(map); // 옵션별로 딸려있는 티켓 수량 변경 
		}
		
		
		// 앞에서 none이라고 하면 안넘기니깐 없으면 비어있다. 근데 비어있지 않다면!
		// 쿠폰 사용시 쿠폰 테이블에서 coupon_usecondition 변경
		if(!((String)upMap.get("coupon_usecondition")).isEmpty()) { 
			dao.updateCoupon(upMap);
		}
		// 포인트 사용했을시 user_info 테이블에서 사용한 만큼의 포인트 차감
		dao.updatePoint(upMap);
		
		String user_id = (String)tbMap.get("user_id");
		System.out.println("user_id : "+user_id);
		
		
		int sumTotal = dao.getAccomTotal(user_id) + dao.getTourTotal(user_id);
		String newGrade = "";
		if(sumTotal>100000) {
			newGrade = "Silver";
		}else if(sumTotal>300000) {
			newGrade = "Gold";
		}else if(sumTotal>800000) {
			newGrade = "Platinum";
		}else if(sumTotal>1000000) {
			newGrade = "VIP";
		}
		
		System.out.println("sumTotal ="+sumTotal);
		HashMap<String, Object> gradeMap = new HashMap<>();
		gradeMap.put("user_id", user_id);
		gradeMap.put("user_grade", newGrade);
		dao.changeGrade(gradeMap);
		return 1;
	}
	
	@Transactional
	public int transactionAccom(HashMap<String, Object> abMap,
								HashMap<String, Object> viMap,
								HashMap<String, Object> upMap) {
		// accom_book은 바로 실행
		dao.insertAccomBook(abMap);
		
		// 위 코드가 완료되면 정상적으로 booknumber 가져올 수 있다
		int booknumber = dao.AccomBookMax();
		
		//viMap에는 accom_book_number없어서 위에서 구한 MAX 값을 넣어준다.
		viMap.put("accom_book_number", booknumber);
		dao.insertVisitorInfo(viMap);
		
		// 쿠폰 사용시 쿠폰 테이블에서 coupon_usecondition 변경
		if(!((String)upMap.get("coupon_usecondition")).isEmpty()) { 
			dao.updateCoupon(upMap);
		}
		// 포인트 사용했을시 user_info 테이블에서 사용한 만큼의 포인트 차감
		dao.updatePoint(upMap);
		
		String user_id = (String)abMap.get("user_id");
		System.out.println("user_id : "+user_id);

		int sumTotal = dao.getAccomTotal(user_id) + dao.getTourTotal(user_id);
		String newGrade = "";
		if(sumTotal>100000) {
			newGrade = "SILVER";
		}else if(sumTotal>300000) {
			newGrade = "GOLD";
		}else if(sumTotal>800000) {
			newGrade = "PLATINUM";
		}else if(sumTotal>1000000) {
			newGrade = "VIP";
		}
		
		System.out.println("sumTotal ="+sumTotal);
		HashMap<String, Object> gradeMap = new HashMap<>();
		gradeMap.put("user_id", user_id);
		gradeMap.put("user_grade", newGrade);
		dao.changeGrade(gradeMap);
		return 1;
		
	}
}
