package com.spring.tour.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.tour.service.ReviewService;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.ReviewVo;

@Controller
public class Review_InsertController {
	@Autowired
	private ReviewService service;

	@Autowired
	ServletContext sc;

	@RequestMapping(value = "/review/insert", method = RequestMethod.GET)
	public String insertForm() {
		return "review/insert";
	}

	@RequestMapping(value = "/review/insert", method = RequestMethod.POST)
	public String insert(String user_id, Integer service_number, Integer star_point, String review_content,
			Integer cate_number, Date review_date, String review_title, Integer general_number, MultipartFile[] img1, MultipartFile[] img2, Model model, MultipartHttpServletRequest request) {
		try {
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			ReviewVo reviewvo=new ReviewVo(0,user_id, service_number, star_point, review_content, cate_number, review_date, review_title);
			service.insert(reviewvo);
			
			for(int i=0;i<img1.length;i++) {
				String imgorgname=img1[i].getOriginalFilename();
				String imgsavename=UUID.randomUUID()+"_"+imgorgname;
				try {
					InputStream is=img1[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+imgsavename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo=new ImageVo();
					vo.setImg_num(0);
					vo.setImgorgname(request.getParameter("imgorgname"));
					vo.setImgsavename(request.getParameter("imgsavename"));
					vo.setGeneral_number(Integer.parseInt(request.getParameter("general_number")));
					vo.setCate_number(Integer.parseInt(request.getParameter("cate_number")));
					service.insert1(vo);
				} catch (IOException e) {
					e.printStackTrace();
					return "review/list";
				}
			}
			for(int i=0;i<img2.length;i++) {
				String imgorgname=img2[i].getOriginalFilename();
				String imgsavename=UUID.randomUUID()+"_"+imgorgname;
				try {
					InputStream is=img2[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+imgsavename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo=new ImageVo(0,imgorgname,imgsavename,general_number,cate_number);
					service.insert1(vo);
					vo.setImg_num(0);
					vo.setImgorgname(request.getParameter("imgorgname"));
					vo.setImgsavename(request.getParameter("imgsavename"));
					vo.setGeneral_number(Integer.parseInt(request.getParameter("general_number")));
					vo.setCate_number(Integer.parseInt(request.getParameter("cate_number")));
					service.insert1(vo);
					
				} catch (IOException e) {
					e.printStackTrace();
					return "review/list";
				}
			}
			return "redirect:/review/list";
		}catch(Exception e) {
			e.printStackTrace();
			return "review/list";
		}
	}
}