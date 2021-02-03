package com.spring.tour.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.tour.service.AccomService;
import com.spring.tour.vo.Accom_serviceVo;

@RestController
public class AccomListController {
	@Autowired
	private AccomService service;
	
	@RequestMapping(value="/accomSelect_list",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public HashMap<String, Object> getAccomList(@RequestParam(value="facility[]", required = false)List<String> flist,
			@RequestParam(value="conven[]" , required = false)List<String> clist) {
		HashMap<String, Object> fcMap=new HashMap<String, Object>();
		fcMap.put("facility", flist);
		fcMap.put("conven", clist);
		List<Accom_serviceVo> resultlist=service.accom_service_list(fcMap);
		
		List<Integer> list2=new ArrayList<Integer>();
		HashMap<String, Object> pmap=new HashMap<String, Object>();
		for(Accom_serviceVo vo : resultlist) {
			int serviceNum= vo.getAccom_service_number();
			list2.add(serviceNum);
		}
		pmap.put("snum", list2);
		List<HashMap<String, Object>> resultprice=service.accom_minprice(pmap);
		
		HashMap<String, Object> map2=new HashMap<String, Object>();
		map2.put("list",resultlist);
		map2.put("price", resultprice);
		return map2;
	}
}
