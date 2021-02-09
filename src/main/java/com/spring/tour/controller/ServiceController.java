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
	public String accominsert(String accom_name, String accom_addr, String accom_info_content, String accom_how, String accom_checkinfo, String[] facility, String[] conven, MultipartFile[] img) {
		System.out.println(accom_name+"/"+accom_addr+"/"+accom_info_content+"/"+accom_how+"/"+accom_checkinfo);
		for (int i = 0; i < facility.length; i++) {
			System.out.println(facility[i]);
		}
		for (int i = 0; i < conven.length; i++) {
			System.out.println(conven[i]);
		}
		
		return ".service.accominsert";
	}
	
}
