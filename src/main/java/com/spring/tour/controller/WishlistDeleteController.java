package com.spring.tour.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tour.service.WishlistService;


@Controller
public class WishlistDeleteController {
	@Autowired
	private WishlistService service;
	
	
	@GetMapping(value = "/wishDelete", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> delete(int cate_number, int service_number ,HttpServletRequest req) { // JSON으로 받기
		HashMap<String, Object> wishMap = new HashMap<>();
		wishMap.put("cate_number", cate_number);
		wishMap.put("service_number", service_number);
		String user_id;
		
		System.out.println("WL cate_number :"+cate_number);
		System.out.println("WL service_number :"+service_number);
		if(req.getSession().getAttribute("user_id")!=null) {
			user_id = (String)req.getSession().getAttribute("user_id");			
			System.out.println("user_id"+user_id);
			wishMap.put("user_id", user_id);
		}
		int n= service.wishlist_delete(wishMap);
		
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
	public String wishlist_delete(int cate_number, int service_number ,HttpServletRequest req) { //AJAX로 받기
		
		HashMap<String, Object> wishMap = new HashMap<>();
		wishMap.put("cate_number", cate_number);
		wishMap.put("service_number", service_number);
		
		System.out.println("WL cate_number :"+cate_number);
		System.out.println("WL service_number :"+service_number);
		
		String user_id;
		if(req.getSession().getAttribute("user_id")!=null) {
			user_id = (String)req.getSession().getAttribute("user_id");			
			wishMap.put("user_id", user_id);
		}
		int n = service.wishlist_delete(wishMap);
		
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
