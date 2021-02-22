package com.spring.tour.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.spring.tour.security.MemberService;
import com.spring.tour.vo.User_InfoVo;

@Controller
public class UserController {
	
	@Autowired private MemberService service;
	
	@PostMapping("")
	public String join(User_InfoVo vo,HttpServletRequest req) throws Exception{
		service.insert(vo, req);
		return "/main";
	}
	
	@GetMapping("/gojoin")
	public String gojoin(String usertype,Model model) {
		model.addAttribute("usertype",usertype);
		return ".userjoin.userinput";
	}
	
	@GetMapping("/userterms")
	public String userterms() {
		return ".userjoin.userterms";
	}
	@PostMapping("/userselect")
	public String userselect() {
		return ".userjoin.userselect";
	}
	
	@RequestMapping(value = "/userinput", method = RequestMethod.POST)
	public String RegisterPost(User_InfoVo vo, Model model, RedirectAttributes rttr, HttpServletRequest req, HttpSession session) throws Exception {
		
		service.insert(vo, req);
		rttr.addFlashAttribute("authmsg" , "가입시 사용한 이메일로 인증해주세요");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String user_email, Model model) throws Exception { // 이메일인증
		System.out.println("기홍이바보");
		service.stateUp(user_email);
		model.addAttribute("user_email", user_email);

		return "/userjoin/emailConfirm";
	}
	
	@RequestMapping(value="/findidBtn")
	public String findidBtn() {
		return ".userjoin.findId";
	}
	@RequestMapping(value="/findId", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String,Object> findid(String user_email) {
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("user_email", user_email);
		
		List<User_InfoVo> findVo = service.findid(user_email);
		ArrayList<String> user_id=new ArrayList<String>();
		for(User_InfoVo vo :findVo) {
			String dbEmail = vo.getUser_email();
			if(dbEmail.equals(user_email)) {
				user_id.add(vo.getUser_id());
			}else {}
		}
		map.put("user_id", user_id);
		return map;
	}
	
	@RequestMapping(value="/sendPwdEmail")
	public String sendPwdEmail(String user_email) throws Exception{
		User_InfoVo vo = new User_InfoVo();
		vo.setUser_email(user_email);
		List<User_InfoVo> findVo = service.findid(user_email);
		for(User_InfoVo uvo :findVo) {
			String dbId=uvo.getUser_id();
			vo.setUser_id(dbId);
		}
		service.changePwdMail(vo);
		return ".home";
	}
	
	@RequestMapping(value="/findPwdBtn")
	public String findPwd() {
		return ".userjoin.findPwd";
	}
	
	@RequestMapping(value="/changePwdPage", method=RequestMethod.GET)
	public String changePwd(String user_id,String user_email,Model model) {
		service.findid(user_email);
		User_InfoVo vo=new User_InfoVo();
		List<User_InfoVo> findVo = service.findid(user_email);
		for(User_InfoVo uvo :findVo) {
			String dbId=uvo.getUser_id();
			vo.setUser_id(dbId);
			vo.setUser_email(user_email);
		}
		model.addAttribute("vo",vo);
		return ".userjoin.changePwd";
	}
	
	@RequestMapping(value="/changePwd", method=RequestMethod.POST)
	public String changeAct(String user_pass,String user_id) {
		service.changePwd(user_id, user_pass);
		return ".userjoin.userlogin";
	}
	@RequestMapping(value="/dropUser" ,method=RequestMethod.GET)
	public String dropUser(HttpSession session) {
		String user_id = (String)session.getAttribute("user_id");
		service.dropUser(user_id);
		return ".home";
	}
	
	@RequestMapping(value="/ptnSearch", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String,Object> ptnSearch() {
		
		HashMap<String,Object> map = new HashMap<String,Object>();
		List<String> ptnList = service.ptnSearch();
		ArrayList<String> userid = new ArrayList<String>();
		for(String ptn :ptnList) {
			userid.add(ptn);
		}
		map.put("user_id", userid);
		return map;
	}
	
	@RequestMapping(value="/adminSend")
	public String adminSendMail(String user_id,String textarea) throws Exception{
		service.adminEmailSend(user_id, textarea);
		return ".admin.adminlayout";
	}
	
	@RequestMapping(value="/AdminMail")
	public String adminMail() {
		return ".admin.service.MailSend";
	}
}
