package com.spring.tour.controller;

import java.util.HashMap;

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
	public String tourDetail(String user_id, int cate_number, int service_number, Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("user_id",user_id);
		map.put("cate_number",cate_number);
		map.put("service_number",service_number);
		
		System.out.println(service.tourDetailList(map).getMinp());
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
		
		return "/tourPage/tourDetail";
		
		
		
//		map2.put("detail",service.tourDetailList(map));
//		map2.put("option",service.tourOptionList(service_number));
//		map2.put("de_image",service.tourDetailImage(service_number));
//		map2.put("pa_image",service.tourDetailPamphlet(service_number));
//		map2.put("review",service.tourReviewList(map));
//		List<TourReviewVo> list = service.tourReviewList(map);
//		for(TourReviewVo vo : list) {
//			System.out.println("===========리뷰 vo ========");
//			System.out.println(vo.getReview_number());
//			System.out.println(vo.getUser_id());
//			System.out.println(vo.getService_number());
//			System.out.println(vo.getStar_point());
//			System.out.println(vo.getReview_content());
//			System.out.println(vo.getReview_comment());
//			System.out.println(vo.getCate_number());
//			List<ImageVo> ilist = vo.getImglist(); 
//			System.out.println("===========이미지 vo ========");
//			for(ImageVo ivo : ilist) {
//				System.out.println(ivo.getImg_num());
//				System.out.println(ivo.getImgorgname());
//				System.out.println(ivo.getImgsavename());
//				System.out.println(ivo.getGeneral_number());
//				System.out.println(ivo.getCate_number());
//			}
//			System.out.println("===========이미지 vo 끝 ========");
//			System.out.println("===========리뷰 vo 끝 ========");
//		}

	}
}
