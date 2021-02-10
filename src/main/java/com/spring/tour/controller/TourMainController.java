package com.spring.tour.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tour.service.TourPageService;
import com.spring.tour.vo.TourSelectVo;


@Controller
public class TourMainController {
	@Autowired
	private TourPageService service;
	
	@RequestMapping(value = "/tourMain")
	public String tourMain() {
		return "/tourPage/tourMain";
	}

	
	@RequestMapping(value = "/tourMainList", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> tourMainList(){
		List<TourSelectVo> list = service.tourMainList();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
}
