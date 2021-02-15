package com.spring.tour.controller;

import java.util.ArrayList;
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

import com.spring.tour.service.AccomService;
import com.spring.tour.service.BookingService;
import com.spring.tour.service.TourPageService;
import com.spring.tour.util.PageUtil;
import com.spring.tour.vo.AccomBookVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.TourBookVo;
import com.spring.tour.vo.TourOptionVo;


@Controller
public class BookingCheckController {
	@Autowired
	private BookingService service;
	@Autowired
	private AccomService accomService;
	@Autowired
	private TourPageService tourService;
	
	@RequestMapping("/accomBookingCheck")
	public String accomBooking(@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model) {
		//테스트용 유저 생성
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","dd");
		
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
		
		
		//각각의 숙소에 해당하는 정보들 뽑아오기
		List<List<ImageVo>> image=new ArrayList<List<ImageVo>>();
		List<AccomOptionVo> detail=new ArrayList<AccomOptionVo>();
		List<Accom_serviceVo> service=new ArrayList<Accom_serviceVo>();
		for(AccomBookVo vo:accomBookList) {
			int optNum=vo.getAccom_option_number();
			List<ImageVo> roomImage=accomService.accomRoomImage(optNum);
			image.add(roomImage);
			AccomOptionVo roomDetail=accomService.accomRoomDetail(optNum);
			detail.add(roomDetail);
			//카테고리넘버 뽑아오기
			int accomNum=roomDetail.getAccom_service_number();
			Accom_serviceVo as=accomService.accomService(accomNum);
			service.add(as);
		}
		
		model.addAttribute("bookingList", accomBookList);
		model.addAttribute("pu", pu);
		model.addAttribute("image", image);
		model.addAttribute("detail", detail);
		model.addAttribute("service", service);
		
		return ".booking.accomBooking";
	}
	
	@RequestMapping("/tourBookingCheck")
	public String tourBooking(@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model) {
		//테스트용 유저 생성
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","kaka");
		
		//유저의 아이디 가져오기
		String user_id=(String)session.getAttribute("user_id");
		model.addAttribute("user_id", user_id);
		
		//페이징처리
		int totalRowCount=service.tourCount(user_id);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		
		//페이지,유저네임 넣고 예약리스트 뽑아오기
		HashMap<String, Object> tourMap=new HashMap<String, Object>();
		tourMap.put("startRow", startRow);
		tourMap.put("endRow", endRow);
		tourMap.put("user_id", user_id);
		List<TourBookVo> tourBookList=service.tourBookList(tourMap);
		
		//이미지,투어이름등 뽑아오기
		List<TourOptionVo> option=new ArrayList<TourOptionVo>();
		List<List<ImageVo>> image=new ArrayList<List<ImageVo>>();
		for(TourBookVo vo:tourBookList) {
			int optNum=vo.getTour_option_number();
			TourOptionVo ovo=tourService.getTourOption(optNum);
			option.add(ovo);
			//서비스넘버로 이미지 뽑아오기
			int service_number=ovo.getService_number();
			List<ImageVo> tourimg=tourService.tourDetailImage(service_number);
			image.add(tourimg);
		}
		
		model.addAttribute("bookingList", tourBookList);
		model.addAttribute("pu", pu);
		model.addAttribute("opiton", option);
		model.addAttribute("image", image);
		
		return ".booking.tourBooking";
	}
	
	//지난 숙소목록
	@RequestMapping("/accompastTrip")
	public String accompastTrip(@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model) {
		//테스트용 유저 생성
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","dd");
		
		//유저의 아이디 가져오기
		String user_id=(String)session.getAttribute("user_id");
		model.addAttribute("user_id", user_id);
		
		//페이징처리
		int totalRowCount=service.accompastCount(user_id);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		
		//페이지,유저네임 넣고 예약리스트 뽑아오기
		HashMap<String, Object> accomMap=new HashMap<String, Object>();
		accomMap.put("startRow", startRow);
		accomMap.put("endRow", endRow);
		accomMap.put("user_id", user_id);
		List<AccomBookVo> accompastList=service.accompastList(accomMap);
		
		
		//각각의 숙소에 해당하는 정보들 뽑아오기
		List<List<ImageVo>> image=new ArrayList<List<ImageVo>>();
		List<AccomOptionVo> detail=new ArrayList<AccomOptionVo>();
		List<Accom_serviceVo> service=new ArrayList<Accom_serviceVo>();
		for(AccomBookVo vo:accompastList) {
			int optNum=vo.getAccom_option_number();
			List<ImageVo> roomImage=accomService.accomRoomImage(optNum);
			image.add(roomImage);
			AccomOptionVo roomDetail=accomService.accomRoomDetail(optNum);
			detail.add(roomDetail);
			//카테고리넘버 뽑아오기
			int accomNum=roomDetail.getAccom_service_number();
			Accom_serviceVo as=accomService.accomService(accomNum);
			service.add(as);
		}
		
		model.addAttribute("bookingList", accompastList);
		model.addAttribute("pu", pu);
		model.addAttribute("image", image);
		model.addAttribute("detail", detail);
		model.addAttribute("service",service);
		
		return ".booking.accompastTrip";
	}
	
	//지난 투어목록
	@RequestMapping("/tourpastTrip")
	public String tourpastTrip(@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model) {
		//테스트용 유저 생성
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","kaka");
		
		//유저의 아이디 가져오기
		String user_id=(String)session.getAttribute("user_id");
		model.addAttribute("user_id", user_id);
		
		//페이징처리
		int totalRowCount=service.tourpastCount(user_id);
		PageUtil pu=new PageUtil(pageNum, 5, 5, totalRowCount);
		int startRow=pu.getStartRow();
		int endRow=pu.getEndRow();
		
		//페이지,유저네임 넣고 예약리스트 뽑아오기
		HashMap<String, Object> tourMap=new HashMap<String, Object>();
		tourMap.put("startRow", startRow);
		tourMap.put("endRow", endRow);
		tourMap.put("user_id", user_id);
		List<TourBookVo> tourpastList=service.tourpastList(tourMap);
		
		//이미지,투어이름등 뽑아오기
		List<TourOptionVo> option=new ArrayList<TourOptionVo>();
		List<List<ImageVo>> image=new ArrayList<List<ImageVo>>();
		for(TourBookVo vo:tourpastList) {
			int optNum=vo.getTour_option_number();
			TourOptionVo ovo=tourService.getTourOption(optNum);
			option.add(ovo);
			//서비스넘버로 이미지 뽑아오기
			int service_number=ovo.getService_number();
			List<ImageVo> tourimg=tourService.tourDetailImage(service_number);
			image.add(tourimg);
		}
		
		model.addAttribute("bookingList", tourpastList);
		model.addAttribute("pu", pu);
		model.addAttribute("opiton", option);
		model.addAttribute("image", image);
		
		return ".booking.tourpastTrip";
	}
	
	@RequestMapping("/cancleTrip")
	public String cancleTrip(@RequestParam(value ="pageNum",defaultValue = "1")int pageNum,
			Model model) {
		//테스트용 유저 생성
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user_id","kaka");
		
		//유저의 아이디 가져오기
		String user_id=(String)session.getAttribute("user_id");
		model.addAttribute("user_id", user_id);
		
		//페이지,유저네임 넣고 예약리스트 뽑아오기
		List<AccomBookVo> accomCancleList=service.accomCancleList(user_id);
		List<TourBookVo> tourCancleList=service.tourCancleList(user_id);
		
		
		//각각의 숙소에 해당하는 정보들 뽑아오기
		List<List<ImageVo>> image=new ArrayList<List<ImageVo>>();
		List<AccomOptionVo> detail=new ArrayList<AccomOptionVo>();
		List<Accom_serviceVo> service=new ArrayList<Accom_serviceVo>();
		for(AccomBookVo vo:accomCancleList) {
			int optNum=vo.getAccom_option_number();
			List<ImageVo> roomImage=accomService.accomRoomImage(optNum);
			image.add(roomImage);
			AccomOptionVo roomDetail=accomService.accomRoomDetail(optNum);
			detail.add(roomDetail);
			//카테고리넘버 뽑아오기
			int accomNum=roomDetail.getAccom_service_number();
			Accom_serviceVo as=accomService.accomService(accomNum);
			service.add(as);
		}
		
		//투어 정보들 뽑아오기
		List<TourOptionVo> option=new ArrayList<TourOptionVo>();
		List<List<ImageVo>> timage=new ArrayList<List<ImageVo>>();
		for(TourBookVo vo:tourCancleList) {
			int optNum=vo.getTour_option_number();
			TourOptionVo ovo=tourService.getTourOption(optNum);
			option.add(ovo);
			//서비스넘버로 이미지 뽑아오기
			int service_number=ovo.getService_number();
			List<ImageVo> tourimg=tourService.tourDetailImage(service_number);
			timage.add(tourimg);
		}
		
		model.addAttribute("accomCancleList", accomCancleList);
		model.addAttribute("tourCancleList", tourCancleList);
		model.addAttribute("aimage", image);
		model.addAttribute("timage", timage);
		model.addAttribute("detail", detail);
		model.addAttribute("opiton", option);
		model.addAttribute("service", service);
		
		return ".booking.cancleTrip";
	}
	
}
