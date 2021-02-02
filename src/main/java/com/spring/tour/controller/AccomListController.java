package com.spring.tour.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.tour.service.AccomService;
import com.spring.tour.vo.Accom_serviceVo;

@RestController
public class AccomListController {
	@Autowired
	private AccomService service;
	
	@RequestMapping(value="/accomSelect_list",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public HashMap<String, Object> getAccomList(HashMap<String, Object> map) {
		List<Accom_serviceVo> list=service.accom_service_list(map);
		List<Integer> list2=new ArrayList<Integer>();
//		for(Accom_serviceVo vo : list) {
//			int serviceNum= vo.getAccom_service();
//			int minprice=service.accom_minprice(serviceNum);
//			list2.add(minprice);
//		}
		HashMap<String, Object> map2=new HashMap<String, Object>();
		map2.put("list",list);
		map2.put("price", list2);
		return map2;
	}
}
