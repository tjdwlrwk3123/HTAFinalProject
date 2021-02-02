package com.spring.tour.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.tour.service.WishlistService;
import com.spring.tour.vo.WishlistVo;


@RestController 
public class WishlistInsertController { //인서트 된 다음 성공/실패 메세지 전송
	@Autowired
	private WishlistService service;
	
	@GetMapping(value = "/insert", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> insert(WishlistVo vo) { // JSON으로 받기
		int n= service.wishlist_insert(vo);
		
		HashMap<String, Object> map =new HashMap<String, Object>();
		if(n>0) {
			map.put("code","insert_success");
		}else {
			map.put("code","insert_fail");
		}
		return map;
	}
	
	@PostMapping(value = "/insert", produces = "application/xml;charset=utf-8")
	@ResponseBody
	public String wishlist_insert(WishlistVo vo) { //AJAX로 받기
		int n = service.wishlist_insert(vo);
		
		StringBuffer sb = new StringBuffer();
		sb.append("<result>");
		if(n>0) {
			sb.append("<code>insert_success</code>");
		}else {
			sb.append("<code>insert_fail</code>");
		}
		sb.append("</result>");
		return sb.toString();
	}
}