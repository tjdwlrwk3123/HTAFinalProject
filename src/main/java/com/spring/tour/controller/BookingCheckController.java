package com.spring.tour.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.spring.tour.service.BookingService;
import com.spring.tour.util.PageUtil;
import com.spring.tour.vo.AccomBookVo;


@Controller
public class BookingCheckController {
	@Autowired
	private BookingService service;
	
	@RequestMapping("/accomBookingCheck")
	public String accomBooking(@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model) {
		//테스트용 유저 생성
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","aa");
		
		//유저의 아이디 가져오기
		String user_id=(String)session.getAttribute("user_id");
		model.addAttribute("user_id", user_id);
		
		//페이징처리
		int totalRowCount=service.accomCount(user_id);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		
		//페이지,유저네임 넣고 예약리스트 뽑아오기
		HashMap<String, Object> accomMap=new HashMap<String, Object>();
		accomMap.put("startRow", startRow);
		accomMap.put("endRow", endRow);
		accomMap.put("user_id", user_id);
		List<AccomBookVo> accomBookList=service.accomBookList(accomMap);
		
		model.addAttribute("bookingList", accomBookList);
		model.addAttribute("pu", pu);
		
		return ".booking.accomBooking";
	}
}
