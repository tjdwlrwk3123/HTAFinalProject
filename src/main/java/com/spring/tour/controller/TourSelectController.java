package com.spring.tour.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tour.service.TourPageService;
import com.spring.tour.vo.TourSelectVo;


@Controller
public class TourSelectController {

	@Autowired	
	private TourPageService service;
	
	@RequestMapping(value = "/tourSelect")
	public String tourSelect(String tourType, Model model) {
		if(tourType!=null || !tourType.equals("")) {
			model.addAttribute("tourType",tourType);
		}
		return "/tourPage/tourSelect";
	}
	
	@RequestMapping(value = "/tourSelectList", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> tourSelect(
			@RequestParam(value ="startDate") Date startDate,
			@RequestParam(value = "endDate") Date endDate, 
			@RequestParam(value = "targetPoint", defaultValue = "0") double targetPoint, 
			@RequestParam(value = "targetPrice", defaultValue = "0") int targetPrice,
			@RequestParam(value = "tourType", defaultValue = "0") int tourType,//전체, 테마파크 , 맛집 등등 
			@RequestParam(value = "classification", defaultValue = "1") int classification, // 리뷰많은순, 가격 싼순 등등
			String keyword) {
		System.out.println("-----------------------------");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		map.put("keyword", keyword);
		map.put("classification",classification); // 1:추천순  / 2:리뷰많은순 / 3:가격 낮은순 / 4:가격 높은순
		
		if(tourType!=0) { //0: 전체
			map.put("tourType",tourType); //1 티켓/패스   , 2:테마파크 , 3:취미/클래스 , 4:맛집
		}
		if(targetPoint!=0) {
			map.put("targetPoint", targetPoint);
		}
		if(targetPrice!=0) {
			map.put("targetPrice", targetPrice);
		}
		
		List<TourSelectVo> list = service.tourSelectList(map);
		int maxprice = 0;
		int minprice = 10000000;
		for(TourSelectVo vo : list) {
			if(maxprice <vo.getTour_price()) {
				maxprice= vo.getTour_price();
			};
			if(minprice>vo.getTour_price()) {
				minprice=vo.getTour_price();
			}
		}

		
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("startDate",startDate);
		result.put("endDate",endDate);
		result.put("targetPoint",targetPoint);
		result.put("targetPrice",targetPrice);
		result.put("tourType",tourType);
		result.put("classification",classification);
		result.put("minprice",minprice); // 리스트 내에 가장 저렴한 가격
		result.put("maxprice",maxprice); // 리스트 내에 가장 비싼 가격
		result.put("list",list);
		return result;
	}
}
