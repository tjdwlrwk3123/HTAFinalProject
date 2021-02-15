package com.spring.tour.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.spring.tour.service.AccomService;
import com.spring.tour.service.TourPageService;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.WishlistVo;

@Controller
public class AccomGoController {
	
	@Autowired
	private AccomService service;
	@Autowired
	private TourPageService tservice;
	
	@RequestMapping(value="/accomlist")
	public String goAccomSelect() {
		return ".accom.accomSelect";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) throws Exception {
	    final DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	    final CustomDateEditor dateEditor = new CustomDateEditor(df, true) {
	        @Override
	        public void setAsText(String text) throws IllegalArgumentException {
	            if ("today".equals(text)) {
	            	Calendar cal=Calendar.getInstance();
	            	cal.setTime(new java.util.Date());
	                setValue(cal);
	            } else if("nextday".equals(text)){
	            	Calendar cal=Calendar.getInstance();
	            	cal.setTime(new java.util.Date());
	            	cal.add(Calendar.DATE, 1);
	                setValue(cal);
	            }else {
	            	super.setAsText(text);
	            }
	        }
	    };
	    binder.registerCustomEditor(Calendar.class, dateEditor);
	}
	
	@RequestMapping("/accomDetail")
	public String accomDetail(int accomNum,int cate_number,
			@RequestParam(value="startDate",required = false)String startDate,
			@RequestParam(value="endDate",required = false)String endDate,
			@RequestParam(value="count",defaultValue = "1")String count,
			Model model) {
		//테스트용 세션에 아이디 담기
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","testuser");
		
		//위시리스트 담겨있는지 확인여부
		HashMap<String, Object> map=new HashMap<String, Object>();
		String user_id=(String)session.getAttribute("user_id");
		map.put("user_id", user_id);
		map.put("cate_number", cate_number);
		map.put("service_number", accomNum);
		
		WishlistVo vo= tservice.tourDetailIsinWish(map);
		if(vo==null || vo.getUser_id().equals("")) {
			model.addAttribute("wishlist", false);
		}else {
			model.addAttribute("wishlist", true);
		}
		
		
		
		//숙소의 정보들 가져오기
		
		AccomInfoVo infoVo=service.accomInfo(accomNum);
		Accom_serviceVo serviceVo=service.accomService(accomNum);
		infoVo.setAccom_info_content(infoVo.getAccom_info_content().replace("\\n","<br>"));
		infoVo.setAccom_how(infoVo.getAccom_how().replace("\\n","<br>"));
		infoVo.setAccom_rule(infoVo.getAccom_rule().replace("\\n", "<br>"));
		infoVo.setAccom_chekinfo(infoVo.getAccom_chekinfo().replace("\\n", "<br>"));
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
