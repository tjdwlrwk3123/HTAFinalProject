package com.spring.tour.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.ReviewService;
import com.spring.tour.vo.ReviewVo;

@Controller
public class Review_DetailController {
	@Autowired
	private ReviewService service;
	
	@GetMapping("/review/detail")
	public ModelAndView detail(int review_number) {
		ModelAndView mv=new ModelAndView("/review/detail");
		ReviewVo vo=service.select(review_number);
		ReviewVo prev=service.select(review_number);
		ReviewVo next=service.select(review_number);
		
		String review_content=vo.getReview_content();
		review_content=review_content.replaceAll("\n", "<br>");
		vo.setReview_content(review_content);
		
		mv.addObject("vo", vo);
		mv.addObject("prev", prev);
		mv.addObject("next", next);
		
		return mv;
		
	}
}
