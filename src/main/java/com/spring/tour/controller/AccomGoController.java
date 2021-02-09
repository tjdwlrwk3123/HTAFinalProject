package com.spring.tour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tour.service.AccomService;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;

@Controller
public class AccomGoController {
	
	@Autowired
	private AccomService service;
	
	@RequestMapping(value="/accomlist")
	public String goAccomSelect() {
		return ".accom.accomSelect";
	}
	
	@RequestMapping("/accomDetail")
	public String accomDetail(int accomNum,String startDate,String endDate,String count,Model model) {
		//숙소의 정보들 가져오기
		
		AccomInfoVo infoVo=service.accomInfo(accomNum);
		Accom_serviceVo serviceVo=service.accomService(accomNum);
		infoVo.setAccom_info_content(infoVo.getAccom_info_content().replace("\\n","<br>"));
		infoVo.setAccom_how(infoVo.getAccom_how().replace("\\n","<br>"));
		infoVo.setAccom_rule(infoVo.getAccom_rule().replace("\\n", "<br>"));
		model.addAttribute("info", infoVo);
		model.addAttribute("service", serviceVo);
		model.addAttribute("accomNum", accomNum);
		model.addAttribute("startDate", startDate);
		model.addAttribute("endDate", endDate);
		model.addAttribute("count", count);
		
		//숙소 전체이미지 불러오기
		List<ImageVo> wholeImage=service.accomWholeImage(accomNum);
		model.addAttribute("wholeImage",wholeImage);
		return ".accom.accomDetail";
	}
}
