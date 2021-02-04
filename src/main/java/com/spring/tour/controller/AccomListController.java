package com.spring.tour.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
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
			@RequestParam(value="conven[]" , required = false)List<String> clist,
			@RequestParam(value="count",defaultValue = "1") int count,
			@RequestParam(value="startDate") Date startDate,
			@RequestParam(value="endDate") Date endDate) {
		HashMap<String, Object> wholeMap=new HashMap<String, Object>();
		System.out.println(count);
		System.out.println(startDate);
		System.out.println(endDate);
		wholeMap.put("facility", flist);
		wholeMap.put("conven", clist);
		List<Accom_serviceVo> resultlist=service.accom_service_list(wholeMap);
		
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
		return null;
	}
}
