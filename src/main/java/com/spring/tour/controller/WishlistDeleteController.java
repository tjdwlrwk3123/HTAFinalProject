package com.spring.tour.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tour.service.WishlistService;
import com.spring.tour.vo.WishlistVo;


@Controller
public class WishlistDeleteController {
	@Autowired
	private WishlistService service;
	
	
	@GetMapping(value = "/wishDelete", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> insert(WishlistVo vo) { // JSON으로 받기
		int n= service.wishlist_delete(vo);
		
		HashMap<String, Object> map =new HashMap<String, Object>();
		if(n>0) {
			map.put("code","delete_success");
		}else {
			map.put("code","delete_fail");
		}
		return map;
	}
	
	@PostMapping(value = "/wishDelete", produces = "application/xml;charset=utf-8")
	@ResponseBody
	public String wishlist_insert(WishlistVo vo) { //AJAX로 받기
		int n = service.wishlist_delete(vo);
		
		StringBuffer sb = new StringBuffer();
		sb.append("<result>");
		if(n>0) {
			sb.append("<code>delete_success</code>");
		}else {
			sb.append("<code>delete_fail</code>");
		}
		sb.append("</result>");
		return sb.toString();
	}
}
