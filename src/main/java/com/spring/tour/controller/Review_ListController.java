package com.spring.tour.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.ReviewService;
import com.spring.tour.util.PageUtil;
import com.spring.tour.vo.ReviewVo;

@Controller
public class Review_ListController {
	@Autowired
	private ReviewService service;
	
	@RequestMapping("/review/list")
	public String list(@RequestParam(value = "pageNum", defaultValue = "1")int pageNum,
			String field, String keyword, 
			@RequestParam(value = "cate_number", defaultValue = "0")int cate_number, 
			@RequestParam(value = "service_number", defaultValue = "0")int service_number,
			Model model) {
		HashMap<String,Object> map=new HashMap<String, Object>();
		map.put("field", field);
		map.put("keyword", keyword);
		if(cate_number!=0 && service_number!=0) {
			map.put("cate_number", cate_number);
			map.put("sevice_number", service_number);
		}
		System.out.println(cate_number+","+service_number);
		
		int totalRowCount=service.count(map);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		List<ReviewVo> list=service.list(map);
		for(ReviewVo vo:list) {
			System.out.println(vo.getReview_title());
		}
		
		model.addAttribute("list", list);
		model.addAttribute("pu", pu);
		model.addAttribute("field", field);
		model.addAttribute("keyword", keyword);
		return ".review.list";
	}
}
