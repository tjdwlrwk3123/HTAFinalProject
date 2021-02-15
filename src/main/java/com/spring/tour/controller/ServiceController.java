package com.spring.tour.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.spring.tour.service.ServiceService;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.Accom_serviceVo;

@Controller
public class ServiceController {
	@Autowired
	private ServiceService service;

	@GetMapping("/accommain")
	public String accommain(HttpSession session,Model model) {
		try {
			System.out.println(session);
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".login";
			}else {
				List<Accom_serviceVo> list = service.selectAccomList(user_id);
				model.addAttribute("list",list);
				return ".service.accommain";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".login";
		}
	} 
	@GetMapping("/tourmain")
	public String tourmain(HttpSession session,Model model) {
		try {
			System.out.println(session);
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".login";
			}else {
				List<Accom_serviceVo> list = service.selectAccomList(user_id);
				model.addAttribute("list",list);
				return ".service.tourmain";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".login";
		}
	}

	@GetMapping("/accominsert")
	public String accominsertpage() {
		return ".service.accominsert";
	}
	@PostMapping("/accominsert")
	public String accominsert(String cate, String accom_name, String accom_addr, String accom_info_content, String accom_how, String accom_rule, String accom_checkinfo, String[] facility, String[] conven, MultipartFile[] img, HttpSession session, Model model) {
		try {
			String user_id="";
			try {
				user_id=(String)session.getAttribute("user_id");
			}catch(Exception e){
				e.printStackTrace();
				return ".login"; 
			}
			String f=facility[0];
			for (int i = 1; i < facility.length; i++) {
				f+=","+facility[i];
			}
			String c=conven[0];
			for (int i = 0; i < conven.length; i++) {
				c+=","+conven[i];
			}
			Accom_serviceVo servicevo=new Accom_serviceVo(0, Integer.parseInt(cate), user_id, accom_name, accom_addr);
			AccomInfoVo infovo=new AccomInfoVo(0, 0, accom_info_content, accom_how, accom_rule, accom_checkinfo, f, c);
			service.insertAccomService(servicevo);
			service.inserAccomInfo(infovo);
			return "/accommain";
		}catch(Exception e) {
			e.printStackTrace();
			return ".login";
		}
	}
	
}
