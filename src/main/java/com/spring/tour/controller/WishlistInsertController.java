package com.spring.tour.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.spring.tour.service.WishlistService;


@RestController 
public class WishlistInsertController { //인서트 된 다음 성공/실패 메세지 전송
	@Autowired
	private WishlistService service;
	
	@GetMapping(value = "/wishInsert", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> insert(int cate_number, int service_number, HttpServletRequest req) { // JSON으로 받기
		HashMap<String, Object> wishMap = new HashMap<>();
		wishMap.put("cate_number", cate_number);
		wishMap.put("service_number", service_number);
		String user_id;
		if(req.getSession().getAttribute("user_id")!=null) {
			user_id = (String)req.getSession().getAttribute("user_id");			
			wishMap.put("user_id", user_id);
		}
		int n= service.wishlist_insert(wishMap);
		
		HashMap<String, Object> map =new HashMap<String, Object>();
		if(n>0) {
			map.put("code","insert_success");
		}else {
			map.put("code","insert_fail");
		}
		return map;
	}
	
	@PostMapping(value = "/wishInsert", produces = "application/xml;charset=utf-8")
	@ResponseBody
	public String wishlist_insert(int cate_number, int service_number, HttpServletRequest req) { //AJAX로 받기
		HashMap<String, Object> wishMap = new HashMap<>();
		wishMap.put("cate_number", cate_number);
		wishMap.put("service_number", service_number);
		String user_id;
		if(req.getSession().getAttribute("user_id")!=null) {
			user_id = (String)req.getSession().getAttribute("user_id");			
			wishMap.put("user_id", user_id);
		}
		int n = service.wishlist_insert(wishMap);
		
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