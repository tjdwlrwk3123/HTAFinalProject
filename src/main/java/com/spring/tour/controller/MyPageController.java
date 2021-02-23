package com.spring.tour.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.tour.service.MyPageService;
import com.spring.tour.util.PageUtil;
import com.spring.tour.vo.CouponVo;
import com.spring.tour.vo.User_InfoVo;

@Controller
public class MyPageController {
	@Autowired
	private MyPageService service;

	@GetMapping("/userinfopage")
	public String userinfo(HttpSession session, Model model) {
		try {
			System.out.println(session);
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".userjoin.userlogin";
			}else {
				model.addAttribute("vo",service.getinfo(user_id));
				return ".mypage.userinfo";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".userjoin.userlogin";
		}
	}
	@GetMapping("/changeuserinfopage")
	public String checkpwd(HttpSession session) {
		try {
			System.out.println(session);
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".userjoin.userlogin";
			}else {
				return ".mypage.checkpwd";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".userjoin.userlogin";
		}
	}
	@PostMapping("/changeuserinfopage")
	public String changeuserinfopage(String pwd, Model model,HttpSession session) {
		String user_id=(String)session.getAttribute("user_id");
		User_InfoVo vo = service.getinfo(user_id);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(pwd, vo.getUser_pass())) {
			model.addAttribute("vo",vo);
			System.out.println(vo.toString());
			return ".mypage.changeuserinfo";
		}else {
			return ".mypage.checkpwd";
		}
	}
	@PostMapping("/changeuserinfo")
	public String changeuserinfo(User_InfoVo vo, Model model,HttpSession session) {
		try {
			String user_id=(String)session.getAttribute("user_id");
			vo.setUser_id(user_id);
			model.addAttribute("vo",vo);
			System.out.println(vo.toString());
			service.updateuserinfo(vo);
			return "redirect:/userinfopage";
		}catch(Exception e) {
			e.printStackTrace();
			return ".mypage.changeuserinfo";
		}
	}

	@RequestMapping(value = "/usercoupon")
	public String usercoupon(HttpSession session, @RequestParam(name="pageNum",defaultValue="1")int pageNum, Model model) {
		String user_id=(String)session.getAttribute("user_id");
		HashMap<String,Object> map=new HashMap<String, Object>();
		map.put("user_id", user_id);
		int totalRowCount=service.countcoupon(map);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		map.put("startRow",startRow);
		map.put("endRow", endRow);
		List<CouponVo> list=service.couponlist(map);
		
		model.addAttribute("pu",pu);
		model.addAttribute("list",list);
		return ".mypage.coupon";
	}
}
