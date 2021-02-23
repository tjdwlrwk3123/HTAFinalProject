package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.TourPageDao;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.ReviewVo;
import com.spring.tour.vo.TourDetailVo;
import com.spring.tour.vo.TourOptionVo;
import com.spring.tour.vo.TourReviewVo;
import com.spring.tour.vo.TourSelectVo;
import com.spring.tour.vo.TourServiceVo;
import com.spring.tour.vo.WishlistVo;


@Service
public class TourPageService {
	
	@Autowired
	private TourPageDao dao; 
	////////////////////////////////////
	//투어 메인 페이지 데이터
	public List<TourSelectVo> tourMainList(){
		return dao.tourMainList();
	}
	
	/////////////////////////////////
	// 투어 선택 페이지 데이터
	public List<WishlistVo> tourSelectList(HashMap<String, Object> map){
		return dao.tourSelectList(map);
	}
	
	///////////////////////////////////////////////////////////
	
	//투어 상세 페이지 데이터
	public TourDetailVo tourDetailList(HashMap<String, Object> map){
		return dao.tourDetailList(map);
	}
	//투어 옵션 정보 리스트
	public List<TourOptionVo> tourOptionList(int service_number){
		return dao.tourOptionList(service_number);
	}
	//투어 리뷰 정보 리스트(cate_number, service_number)
	public List<ReviewVo> tourReviewList(HashMap<String, Object> map){
		return dao.tourReviewList(map);
	}
	
	//투어 실황 사진들 리스트
	public List<ImageVo> tourDetailImage(int service_number){
		return dao.tourDetailImage(service_number);
	}
	//투어 디테일 설명 팸플릿
	public List<ImageVo> tourDetailPamphlet(int service_number){
		return dao.tourDetailPamphlet(service_number);
	}
	//투어 디테일 상품이 위시에 있는지 확인
	public WishlistVo tourDetailIsinWish(HashMap<String, Object> map){
		return dao.tourDetailIsinWish(map);
	}
	
	//투어 옵션번호,서비스번호에 따른 정보
	public TourOptionVo getTourOption(HashMap<String, Object> map) {
		return dao.getTourOption(map);
	}
	public TourServiceVo getTourService(int serviceNum) {
		return dao.getTourService(serviceNum);
	}
	public List<TourServiceVo> tourServiceForId(String user_id){
		return dao.tourServiceForId(user_id);
	}
	/////////////////////////////////////////////////////////////
	
	
	
}
