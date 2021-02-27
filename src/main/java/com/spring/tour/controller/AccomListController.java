package com.spring.tour.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.spring.tour.service.AccomService;
import com.spring.tour.service.TourPageService;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.AccomServiceReviewJoinVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.WishlistVo;

@RestController
public class AccomListController {
	@Autowired
	private AccomService service;
	@Autowired
	private TourPageService tservice;
	
	@RequestMapping(value="/accomSelect_list",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public HashMap<String, Object> getAccomList(@RequestParam(value="facility[]", required = false)List<String> flist,
			@RequestParam(value="conven[]" , required = false)List<String> clist,
			@RequestParam(value="category" , defaultValue = "0")int category,
			@RequestParam(value="count",defaultValue = "1") int count,
			@RequestParam(value="startDate") Date startDate,
			@RequestParam(value="endDate") Date endDate,
			@RequestParam(value="maxprice" , defaultValue = "0")int maxprice,
			@RequestParam(value = "classification", defaultValue = "1") int classification, // 리뷰많은순, 가격 싼순 등등
			@RequestParam(value="keyword",required = false) String keyword
			) {
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		String user_id=(String)session.getAttribute("user_id");
		
		HashMap<String, Object> wholeMap=new HashMap<String, Object>();
		wholeMap.put("count", count);
		wholeMap.put("startDate", startDate);
		wholeMap.put("endDate", endDate);
		wholeMap.put("facility", flist);
		wholeMap.put("conven", clist);
		wholeMap.put("classification", classification);
		
		if(category!=0) {
			wholeMap.put("category", category);
		}
		if(maxprice!=0) {
			wholeMap.put("maxprice", maxprice);
		}
		if(keyword!=null) {
			wholeMap.put("keyword", keyword);
		}
		
		int howLong=service.howLong(wholeMap);
		HashMap<String, Object> result=new HashMap<String, Object>(); //결과로 보낼 해시맵
		
		List<AccomServiceReviewJoinVo> resultlist=service.accom_service_list(wholeMap);
		
		List<ImageVo> image=new ArrayList<ImageVo>();
		HashMap<String, Object> map=new HashMap<String, Object>();
		List<String> wishlist=new ArrayList<String>();
		map.put("user_id", user_id);
		

		for(AccomServiceReviewJoinVo vo:resultlist) {
			int serviceNum=vo.getAccom_service_number();
			ImageVo ivo=service.accomRepresentImage(serviceNum);	
			image.add(ivo);
			
			//위시리스트에 담겼는지 여부 확인
			int cateNum=vo.getCate_number();
			map.put("service_number", serviceNum);
			map.put("cate_number", cateNum);
			WishlistVo wvo= tservice.tourDetailIsinWish(map);
			if(wvo==null || wvo.getUser_id().equals("")) {
				wishlist.add("no");
			}else {
				wishlist.add("yes");
			}
		}
		
		
		result.put("list",resultlist);
		result.put("image",image);
		result.put("classification", classification);
		result.put("howLong", howLong);
		result.put("wishlist", wishlist);
		return result;
	}
	
	//keyword autocomplete
	@RequestMapping(value="/nameList",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public HashMap<String, Object> nameList(String searchValue){
		HashMap<String, Object> map=new HashMap<String, Object>();
		List<String> accomNameList=service.accomNameList(searchValue);
		map.put("accomList", accomNameList);
		return map;
	}
}
