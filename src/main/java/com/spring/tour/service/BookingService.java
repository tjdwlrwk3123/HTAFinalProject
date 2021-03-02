package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.tour.dao.BookingDao;
import com.spring.tour.dao.PaymentDao;
import com.spring.tour.vo.AccomBookVo;
import com.spring.tour.vo.TourBookOptionVo;
import com.spring.tour.vo.TourBookVo;
import com.spring.tour.vo.VisitorInfoVo;

@Service
public class BookingService {
	@Autowired
	private BookingDao dao;
	@Autowired
	private PaymentDao pdao;
	
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
	@Transactional
	public int accomCancel(int bookNumber,String user_id) {
		int point=dao.getUsedPointA(bookNumber);
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("user_point",point);
		map.put("user_id",user_id);
		dao.pointRefund(map);
		dao.accomCancel(bookNumber);
		
		int sumTotal = pdao.getAccomTotal(user_id) + pdao.getTourTotal(user_id);
		String newGrade = "Bronze";
		if(sumTotal>1000000) {
			newGrade = "VIP";
		}else if(sumTotal>800000) {
			newGrade = "Platinum";
		}else if(sumTotal>300000) {
			newGrade = "Gold";
		}else if(sumTotal>100000) {
			newGrade = "Silver";
		}
		
		HashMap<String, Object> gradeMap = new HashMap<>();
		gradeMap.put("user_id", user_id);
		gradeMap.put("user_grade", newGrade);
		pdao.changeGrade(gradeMap);
		
		return 1;
	}
	//숙소 디테일
	public VisitorInfoVo accomBookDetail(int bookNumber) {
		return dao.accomBookDetail(bookNumber);
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
	@Transactional
	public int tourCancel(int bookNumber,String user_id) {
		System.out.println("넘어왔니");
		int point=dao.getUsedPointT(bookNumber);
		System.out.println(point);
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("user_point",point);
		map.put("user_id",user_id);
		dao.pointRefund(map);
		dao.tourOptionDel(bookNumber);
		dao.tourCancel(bookNumber);
		
		int sumTotal = pdao.getAccomTotal(user_id) + pdao.getTourTotal(user_id);
		String newGrade = "Bronze";
		if(sumTotal>1000000) {
			newGrade = "VIP";
		}else if(sumTotal>800000) {
			newGrade = "Platinum";
		}else if(sumTotal>300000) {
			newGrade = "Gold";
		}else if(sumTotal>100000) {
			newGrade = "Silver";
		}
		
		System.out.println("sumTotal ="+sumTotal);
		HashMap<String, Object> gradeMap = new HashMap<>();
		gradeMap.put("user_id", user_id);
		gradeMap.put("user_grade", newGrade);
		System.out.println("NewGrade ="+newGrade);
		pdao.changeGrade(gradeMap);
		
		return 1;
	}
	//투어디테일
	public List<TourBookOptionVo> tourBookOption(int bookNumber){
		return dao.tourBookOption(bookNumber);
	}
	//개별 회원의 결제목록
	public List<AccomBookVo> accomBuyList(String user_id){
		return dao.accomBuyList(user_id);
	}
	public List<TourBookVo> tourBuyList(String user_id){
		return dao.tourBuyLIst(user_id);
	}
}
