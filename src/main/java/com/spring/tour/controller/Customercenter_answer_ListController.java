package com.spring.tour.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.Customercenter_answerService;
import com.spring.tour.util.PageUtil;
import com.spring.tour.vo.Customercenter_answerVo;

@Controller
public class Customercenter_answer_ListController {
	@Autowired
	private Customercenter_answerService service;
	
	@RequestMapping("/customercenter_answer/list")
	public ModelAndView list(@RequestParam(value = "pageNum", defaultValue = "1")int pageNum, String field, String keyword) {
		HashMap<String,Object> map=new HashMap<String, Object>();
		map.put("field", field);
		map.put("keyword", keyword);
		
		int totalRowCount=service.count(map);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		List<Customercenter_answerVo> list=service.list(map);
		
		ModelAndView mv=new ModelAndView("customercenter_answer/list");
		mv.addObject("list", list);
		mv.addObject("pu", pu);
		mv.addObject("field", field);
		mv.addObject("keyword", keyword);
		return mv;
	}
}
