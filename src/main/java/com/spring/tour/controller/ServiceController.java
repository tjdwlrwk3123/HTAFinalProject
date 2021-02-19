package com.spring.tour.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.spring.tour.service.ServiceService;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.TourOptionVo;
import com.spring.tour.vo.TourServiceVo;
import com.spring.tour.vo.Tour_infoVo;

@Controller
public class ServiceController {
	@Autowired
	private ServiceService service;
	@Autowired ServletContext sc;

	@GetMapping("/tourmain")
	public String tourmain(HttpSession session,Model model) {
		try {
			System.out.println(session);
			session.setAttribute("user_id", "test");
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".userjoin.userlogin";
			}else {
				List<TourServiceVo> list = service.selectTourServiceList(user_id);
				model.addAttribute("list",list);
				return ".service.tourmain";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".userjoin.userlogin";
		}
	}
	@GetMapping("/tourinsert")
	public String tourinsertpage() {
		return ".service.tourinsert"; 
	}
	@PostMapping("/tourinsert")
	public String tourinsert(String tour_name, String tour_addr, String tour_content, String tour_how, String tour_rule, String tour_type, Date tour_expire, MultipartFile[] img, HttpSession session, Model model) {
		try {
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			String user_id="";
			try {
				user_id=(String)session.getAttribute("user_id");
				System.out.println(user_id);
			}catch(Exception e){
				e.printStackTrace();
				return ".userjoin.userlogin"; 
			}
			TourServiceVo servicevo=new TourServiceVo(0, 1, user_id, tour_name, tour_addr, tour_type);
			service.insertTourService(servicevo);
			Tour_infoVo infovo=new Tour_infoVo(0, Integer.parseInt(service.selectTourServiceMax(user_id)) , tour_content, tour_how, tour_rule, tour_expire);
			service.inserTourInfo(infovo);

			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(service.selectTourServiceMax(user_id)), 1);
					service.insertImg(vo);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
			return "redirect:/tourmain";
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}
	@GetMapping("/tourdelete")
	public String tourdelete(String service_number) {
		ImageVo vo = new ImageVo(0, null, null, Integer.parseInt(service_number), 1);
		List<ImageVo> list=service.selectImageList(vo);
		service.deleteImg(vo);
		String path=sc.getRealPath("/resources/upload");
		for (ImageVo v : list) {
			File f=new File(path+"\\"+v.getImgsavename());
			f.delete();
		}
		service.deleteTourInfo(service_number);
		service.deleteTourService(service_number);
		return "redirect:/tourmain"; 
	}
	@GetMapping("/tourupdate")
	public String tourupdatepage(String service_number, Model model) {
		TourServiceVo vo1 = service.selectTourService(service_number);
		Tour_infoVo vo2=service.selectTourInfo(service_number);
		model.addAttribute("vo1",vo1);
		model.addAttribute("vo2",vo2); 
		return ".service.tourupdate"; 
	}
	@PostMapping("/tourupdate")
	public String tourupdate(String service_number, String tour_name, String tour_addr, String tour_content, String tour_how, String tour_rule, String tour_type, Date tour_expire, MultipartFile[] img, HttpSession session, Model model) {
		try {
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			String user_id="";
			try {
				user_id=(String)session.getAttribute("user_id");
				System.out.println(user_id);
			}catch(Exception e){
				e.printStackTrace();
				return ".userjoin.userlogin"; 
			}
			TourServiceVo servicevo=new TourServiceVo(Integer.parseInt(service_number), 1, user_id, tour_name, tour_addr, tour_type);
			service.updateTourService(servicevo);
			Tour_infoVo infovo=new Tour_infoVo(0, Integer.parseInt(service_number) , tour_content, tour_how, tour_rule, tour_expire);
			service.updateTourInfo(infovo);
			
			ImageVo vo = new ImageVo(0, null, null, Integer.parseInt(service_number), 1);
			List<ImageVo> list=service.selectImageList(vo);
			service.deleteImg(vo);
			for (ImageVo v : list) {
				File f=new File(path+"\\"+v.getImgsavename());
				f.delete();
			}
			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo1=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(service_number), 1);
					service.insertImg(vo1);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
			return "redirect:/tourmain";
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}
	@GetMapping("/touroption")
	public String touroption(String service_number, Model model) {
		List<TourOptionVo> list = service.selectTourOptionList(service_number);
		model.addAttribute("list",list);
		model.addAttribute("service_number",service_number);
		return ".service.touroption"; 
	}
	@GetMapping("/touroptioninsert")
	public String touroptioninsertpage(String service_number, Model model) {
		model.addAttribute("service_number", service_number);
		return ".service.touroptioninsert"; 
	}
	@PostMapping("/touroptioninsert")
	public String touroptioninsert(String service_number, int tour_price, String tour_option, int tour_amount, int discount, MultipartFile[] img, Model model) {
		try { 
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			
			TourOptionVo vo = new TourOptionVo(0, Integer.parseInt(service_number), tour_price, 0, tour_option, tour_amount, discount);
			service.insertTourOption(vo);

			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo1=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(service.selectTourOptioneMax(service_number)), 111);
					service.insertImg(vo1);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
		model.addAttribute("service_number", service_number);
		return "redirect:/touroption"; 
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}
	@GetMapping("/touroptiondelete")
	public String touroptiondelete(String service_number, String tour_option_number, Model model) {
		ImageVo vo = new ImageVo(0, null, null, Integer.parseInt(tour_option_number), 111);
		List<ImageVo> list=service.selectImageList(vo);
		service.deleteImg(vo);
		String path=sc.getRealPath("/resources/upload");
		for (ImageVo v : list) {
			File f=new File(path+"\\"+v.getImgsavename());
			f.delete();
		}
		service.deleteTourOption(tour_option_number);
		service.updateTourOptionIndex(tour_option_number);
		model.addAttribute("service_number", service_number);
		return "redirect:/touroption"; 
	}
	@GetMapping("/touroptionupdate")
	public String touroptionupdatepage(String tour_option_number, Model model) {
		model.addAttribute("vo", service.selectTourOption(tour_option_number));
		return ".service.touroptionupdate"; 
	}
	@PostMapping("/touroptionupdate")
	public String touroptionupdate(String service_number, String tour_option_number, int tour_price, String tour_option, int tour_amount, int discount, MultipartFile[] img, Model model) {
		try { 
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			
			TourOptionVo vo = new TourOptionVo(Integer.parseInt(tour_option_number), Integer.parseInt(service_number), tour_price, 0, tour_option, tour_amount, discount);
			service.updateTourOption(vo);

			ImageVo ivo = new ImageVo(0, null, null, Integer.parseInt(tour_option_number), 111);
			List<ImageVo> list=service.selectImageList(ivo);
			service.deleteImg(ivo);
			for (ImageVo v : list) {
				File f=new File(path+"\\"+v.getImgsavename());
				f.delete();
			}
			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo1=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(tour_option_number), 111);
					service.insertImg(vo1);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
		model.addAttribute("service_number",service_number);
		return "redirect:/touroption"; 
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}
	
	
	@GetMapping("/accommain")
	public String accommain(HttpSession session,Model model) {
		try {
			System.out.println(session);
			session.setAttribute("user_id", "test");
			String user_id=(String)session.getAttribute("user_id");
			System.out.println(session.getAttribute("user_id"));
			if(user_id.equals("")||user_id==null) {
				return ".userjoin.userlogin";
			}else {
				List<Accom_serviceVo> list = service.selectAccomServiceList(user_id);
				model.addAttribute("list",list);
				return ".service.accommain";
			}
		}catch(Exception e) {
			e.printStackTrace();
			return ".userjoin.userlogin";
		}
	} 
	@GetMapping("/accominsert")
	public String accominsertpage() {
		return ".service.accominsert"; 
	}
	@GetMapping("/accomupdate")
	public String accomupdatepage(String accom_service_number, Model model) {
		Accom_serviceVo vo1 = service.selectAccomService(accom_service_number);
		AccomInfoVo vo2=service.selectAccomInfo(accom_service_number);
		model.addAttribute("vo1",vo1);
		model.addAttribute("vo2",vo2); 
		return ".service.accomupdate"; 
	}
	@PostMapping("/accomupdate")
	public String accomupdate(String accom_service_number, String cate, String accom_name, String accom_addr, String accom_info_content, String accom_how, String accom_rule, String accom_checkinfo, String[] facility, String[] conven, MultipartFile[] img, HttpSession session, Model model) {
		try {
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			
			String user_id="";
			try {
				user_id=(String)session.getAttribute("user_id");
				System.out.println(user_id);
			}catch(Exception e){
				e.printStackTrace();
				return ".userjoin.userlogin"; 
			}
			String f=facility[0]; 
			for (int i = 1; i < facility.length; i++) {
				f+=","+facility[i];
			}
			String c=conven[0];
			for (int i = 1; i < conven.length; i++) {
				c+=","+conven[i];
			}
			System.out.println(f);
			System.out.println(c);
			Accom_serviceVo servicevo=new Accom_serviceVo(Integer.parseInt(accom_service_number), Integer.parseInt(cate), user_id, accom_name, accom_addr);
			AccomInfoVo infovo=new AccomInfoVo(0, Integer.parseInt(accom_service_number), accom_info_content, accom_how, accom_rule, accom_checkinfo, f, c);
			System.out.println(infovo);
			service.updateAccomService(servicevo);
			service.updateAccomInfo(infovo);

			ImageVo dvo = new ImageVo(0, null, null, Integer.parseInt(accom_service_number), Integer.parseInt(cate));
			System.out.println(dvo.getGeneral_number()+"/////"+dvo.getCate_number());
			List<ImageVo> list=service.selectImageList(dvo);
			service.deleteImg(dvo);
			for (ImageVo v : list) {
				File ff=new File(path+"\\"+v.getImgsavename());
				ff.delete();
			}
			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(accom_service_number), Integer.parseInt(cate));
					service.insertImg(vo);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
			return "redirect:/accommain";
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}
	@GetMapping("/accomdelete")
	public String accomdelete(String accom_service_number, String cate_number) {
		ImageVo vo = new ImageVo(0, null, null, Integer.parseInt(accom_service_number), Integer.parseInt(cate_number));
		List<ImageVo> list=service.selectImageList(vo);
		service.deleteImg(vo);
		String path=sc.getRealPath("/resources/upload");
		for (ImageVo v : list) {
			File f=new File(path+"\\"+v.getImgsavename());
			f.delete();
		}
		service.deleteAccomInfo(accom_service_number);
		service.deleteAccomService(accom_service_number);
		return "redirect:/accommain"; 
	}
	@PostMapping("/accominsert")
	public String accominsert(String cate, String accom_name, String accom_addr, String accom_info_content, String accom_how, String accom_rule, String accom_checkinfo, String[] facility, String[] conven, MultipartFile[] img, HttpSession session, Model model) {
		try {
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			
			String user_id="";
			try {
				user_id=(String)session.getAttribute("user_id");
				System.out.println(user_id);
			}catch(Exception e){
				e.printStackTrace();
				return ".userjoin.userlogin"; 
			}
			String f=facility[0]; 
			for (int i = 1; i < facility.length; i++) {
				f+=","+facility[i];
			}
			String c=conven[0];
			for (int i = 1; i < conven.length; i++) {
				c+=","+conven[i];
			}
			Accom_serviceVo servicevo=new Accom_serviceVo(0, Integer.parseInt(cate), user_id, accom_name, accom_addr);
			service.insertAccomService(servicevo);
			AccomInfoVo infovo=new AccomInfoVo(0, Integer.parseInt(service.selectAccomServiceMax(user_id)), accom_info_content, accom_how, accom_rule, accom_checkinfo, f, c);
			service.inserAccomInfo(infovo);

			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(service.selectAccomServiceMax(user_id)), Integer.parseInt(cate));
					service.insertImg(vo);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
			return "redirect:/accommain";
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}

	@GetMapping("/accomoption")
	public String accomoption(String accom_service_number, Model model) {
		List<AccomOptionVo> list = service.selectAccomOptionList(accom_service_number);
		model.addAttribute("list",list);
		model.addAttribute("accom_service_number",accom_service_number);
		return ".service.accomoption"; 
	}

	@GetMapping("/accomoptioninsert")
	public String accomoptioninsertpage(String accom_service_number, Model model) {
		model.addAttribute("accom_service_number", accom_service_number);
		return ".service.accomoptioninsert"; 
	}
	@PostMapping("/accomoptioninsert")
	public String accomoptioninsert(String accom_service_number, String accom_rooms_option, int accom_min_people, int accom_max_people, int accom_price, int discount, MultipartFile[] img, Model model) {
		try { 
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			
			AccomOptionVo vo = new AccomOptionVo(0, Integer.parseInt(accom_service_number), accom_rooms_option, accom_min_people, accom_max_people, accom_price, discount);
			service.insertAccomOption(vo);

			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo1=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(service.selectAccomOptioneMax(accom_service_number)), 555);
					service.insertImg(vo1);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
		model.addAttribute("accom_service_number", accom_service_number);
		return "redirect:/accomoption"; 
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}
	@GetMapping("/accomoptiondelete")
	public String accomoptiondelete(String accom_service_number, String accom_option_number, Model model) {
		ImageVo vo = new ImageVo(0, null, null, Integer.parseInt(accom_option_number), 555);
		List<ImageVo> list=service.selectImageList(vo);
		service.deleteImg(vo);
		String path=sc.getRealPath("/resources/upload");
		for (ImageVo v : list) {
			File f=new File(path+"\\"+v.getImgsavename());
			f.delete();
		}
		service.deleteAccomOption(accom_option_number);
		model.addAttribute("accom_service_number", accom_service_number);
		return "redirect:/accomoption"; 
	}

	@GetMapping("/accomoptionupdate")
	public String accomoptionupdatepage(String accom_option_number, Model model) {
		model.addAttribute("vo", service.selectAccomOption(accom_option_number));
		return ".service.accomoptionupdate"; 
	}
	@PostMapping("/accomoptionupdate")
	public String accomoptionupdate(String accom_option_number, String accom_service_number, String accom_rooms_option, int accom_min_people, int accom_max_people, int accom_price, int discount, MultipartFile[] img, Model model) {
		try { 
			String path = sc.getRealPath("/resources/upload");
			System.out.println(path);
			
			AccomOptionVo vo = new AccomOptionVo(Integer.parseInt(accom_option_number), 0, accom_rooms_option, accom_min_people, accom_max_people, accom_price, discount);
			service.updateAccomOption(vo);

			ImageVo ivo = new ImageVo(0, null, null, Integer.parseInt(accom_option_number), 555);
			List<ImageVo> list=service.selectImageList(ivo);
			service.deleteImg(ivo);
			for (ImageVo v : list) {
				File f=new File(path+"\\"+v.getImgsavename());
				f.delete();
			}
			for(int i=0;i<img.length;i++) {
				String orgfilename=img[i].getOriginalFilename();
				String savefilename=UUID.randomUUID()+"_"+orgfilename;
				try {
					InputStream is=img[i].getInputStream();
					FileOutputStream fos=new FileOutputStream(path+"\\"+savefilename);
					FileCopyUtils.copy(is, fos);
					is.close();
					fos.close();
					ImageVo vo1=new ImageVo(0, orgfilename, savefilename, Integer.parseInt(accom_option_number), 555);
					service.insertImg(vo1);
					
				} catch (IOException e) {
					e.printStackTrace();
					return ".error";
				}
			}
		model.addAttribute("accom_service_number",accom_service_number);
		return "redirect:/accomoption"; 
		}catch(Exception e) {
			e.printStackTrace();
			return ".error";
		}
	}
}
