package com.spring.tour.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tour.service.TourPageService;
import com.spring.tour.vo.WishlistVo;


@Controller
public class TourDetailController {
	@Autowired
	private TourPageService service;

	
	// 아이디 정보랑, cate_number, service_number 넘겨받기
	@RequestMapping(value = "/tourDetail")
	public String tourDetail(int cate_number, int service_number, Model model, HttpServletRequest req) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String user_id = (String)req.getSession().getAttribute("user_id");
		
		map.put("user_id",user_id);
		map.put("cate_number",cate_number);
		map.put("service_number",service_number);
		
		model.addAttribute("detail",service.tourDetailList(map));
		model.addAttribute("option",service.tourOptionList(service_number));
		model.addAttribute("de_image",service.tourDetailImage(service_number));
		model.addAttribute("pa_image",service.tourDetailPamphlet(service_number));
		model.addAttribute("review",service.tourReviewList(map));
		
		WishlistVo vo= service.tourDetailIsinWish(map);
		if(vo==null || vo.getUser_id().equals("")) {
			model.addAttribute("wishlist", false);
		}else {
			model.addAttribute("wishlist", true);
		}
		return ".tourPage.tourDetail";

	}
}
