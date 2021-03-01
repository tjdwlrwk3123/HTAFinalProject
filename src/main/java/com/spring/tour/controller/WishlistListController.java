package com.spring.tour.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tour.service.WishlistService;
import com.spring.tour.vo.WishlistVo;


@Controller
public class WishlistListController {
	@Autowired
	private WishlistService service;
	
	@RequestMapping(value = "/wishlist")
	public String wishlist(Model model, HttpServletRequest req) {
		model.addAttribute("user_id",req.getSession().getAttribute("user_id"));
		return ".wishlist.wishList";
	}
	
	
	
	@RequestMapping(value = "/wishlist_list", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> wishlistLoad(@RequestParam(name = "user_id") String user_id, Model model) {
		
		List<WishlistVo> list = service.wishlist_list(user_id);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
}
