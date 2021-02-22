package com.spring.tour.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.tour.service.AccomService;
import com.spring.tour.service.BookingService;
import com.spring.tour.service.MemberManagementService;
import com.spring.tour.service.TourPageService;
import com.spring.tour.util.PageUtil;
import com.spring.tour.vo.AccomBookVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.CouponVo;
import com.spring.tour.vo.TourBookVo;
import com.spring.tour.vo.TourServiceVo;
import com.spring.tour.vo.User_InfoVo;

@Controller
public class MemberManagementController {
	
	@Autowired
	private MemberManagementService service;
	@Autowired
	private BookingService bservice;
	@Autowired
	private AccomService accomService;
	@Autowired
	private TourPageService tourService;
	
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
		//페이징처리
		int totalRowCount=service.couponCount(search);
		System.out.println(totalRowCount);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
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
	
	@GetMapping("/goCreateCoupon")
	public String goCreateCoupon() {
		return ".admin.couponform";
	}
	@PostMapping("/goCreateCoupon")
	public String createCoupon(Model model,
			@RequestParam(value="memberGrade")List<String> memberGrade,int dcRate,
			@RequestParam(value="expire",required = false)String expire,
			String coupName) {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("coupon_name", coupName);
		map.put("user_grade", memberGrade);
		map.put("discount_price", dcRate);
		map.put("expire_date", expire);
		
		service.createCoupon(map);
		return "redirect:/couponManage";
	}
	@RequestMapping("/disposalCoupon")
	public String disposalCoupon(RedirectAttributes ra) {
		try {
		service.disposalCoupon();
		ra.addFlashAttribute("result", "success");
		}catch(Exception e){
		ra.addFlashAttribute("result", "fail");
		}
		return "redirect:/couponManage";
	}
	
	@RequestMapping("/deleteCoupon")
	public String deleteCoupon(String coupName,int discount,
			@RequestParam(value="expire",required=false)Date expire,
			RedirectAttributes ra) {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("coupName", coupName);
		map.put("discount", discount);
		if(expire!=null) {
			map.put("expire", expire);
		}
		try {
			service.deleteCoupon(map);
			ra.addFlashAttribute("result", "success");
		}catch(Exception e){
			e.printStackTrace();
			ra.addFlashAttribute("result", "fail");
			}
		return "redirect:/couponManage";
	}
	@RequestMapping("/memberManageList")
	public String memberList(@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model,String field,String keyword,
			@RequestParam(value="orderby",defaultValue="1")int orderby) {
		HashMap<String, Object> search=new HashMap<String, Object>();
		search.put("field", field);
		search.put("keyword", keyword);
		
		//페이징처리
		int totalRowCount=service.memberCount(search);
		PageUtil pu=new PageUtil(pageNum, 10, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		
		search.put("startRow", startRow);
		search.put("endRow", endRow);
		search.put("orderby", orderby);
		List<User_InfoVo> userList=service.memberManageList(search);
		
		model.addAttribute("userList",userList);
		model.addAttribute("pu", pu);
		model.addAttribute("field",field);
		model.addAttribute("keyword",keyword);
		model.addAttribute("orderby", orderby);
		
		return ".admin.memberManagement";
	}
	@GetMapping("/memberDetailManage")
	public String memberDetail(String user_id,Model model) {
		model.addAttribute("user_id",user_id);
		return ".admin.memberDetailMGMT";
	}
	//회원 한명 정보 가져오기
	@RequestMapping(value="/memberDetailManagement",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public User_InfoVo memberDetail(String user_id) {
		User_InfoVo vo=service.memberDetail(user_id);
		return vo;
	}
	//계정정지
	@RequestMapping(value="/memberDetailCon",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public User_InfoVo changeCondition(String user_id,int user_condition) {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("user_id", user_id);
		map.put("user_condition", user_condition);
		service.changeCondition(map);
		User_InfoVo vo=service.memberDetail(user_id);
		return vo;
	}
	//회원 등급 조정
	@RequestMapping(value="/memberDetailGrd",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public User_InfoVo changeGrade(String user_id,String user_grade) {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("user_id", user_id);
		map.put("user_grade", user_grade);
		service.changeGrade(map);
		User_InfoVo vo=service.memberDetail(user_id);
		return vo;
	}
	//구매목록 뽑아오기
	@RequestMapping(value="/memberDetailBuylist",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> buylist(String user_id) {
		HashMap<String, Object> result=new HashMap<String, Object>();
		List<AccomBookVo> alist = bservice.accomBuyList(user_id);
		List<TourBookVo> tlist= bservice.tourBuyList(user_id);
		result.put("alist", alist);
		result.put("tlist", tlist);
		return result;
	}
	@RequestMapping(value="/memberDetailSignup",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> singUp(String user_id){
		HashMap<String, Object> result=new HashMap<String, Object>();
		List<Accom_serviceVo> alist=accomService.accomDetailForId(user_id);
		List<TourServiceVo> tlist=tourService.tourServiceForId(user_id);
		result.put("alist", alist);
		result.put("tlist", tlist);
		return result;
	}
}
