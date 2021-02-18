package com.spring.tour.controller;

import java.sql.Date;
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

import com.spring.tour.service.MemberManagementService;
import com.spring.tour.util.PageUtil;
import com.spring.tour.vo.CouponVo;

@Controller
public class MemberManagementController {
	
	@Autowired
	private MemberManagementService service;
	
	@RequestMapping("/couponManage")
	public String MemberManage(
			@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model,String field,String keyword,
			String picker) {
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","admin");
		session.setAttribute("role", "ROLE_ADMIN");
		
		HashMap<String, Object> search=new HashMap<String, Object>();
		search.put("field", field);
		search.put("keyword", keyword);
		search.put("picker", picker);
		//∆‰¿Ã¬°√≥∏Æ
		int totalRowCount=service.couponCount(search);
		PageUtil pu=new PageUtil(pageNum, 10, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		
		search.put("startRow", startRow);
		search.put("endRow", endRow);
		List<CouponVo> couponList=service.couponList(search);
		model.addAttribute("couponList", couponList);
		model.addAttribute("pu", pu);
		model.addAttribute("field",field);
		model.addAttribute("keyword",keyword);
		model.addAttribute("picker",picker);
		
		
		return ".admin.couponManagement";
	}
	
	@RequestMapping("/goCreateCoupon")
	public String goCreateCoupon() {
		return ".admin.couponform";
	}
}
