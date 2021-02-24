package com.spring.tour.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.tour.service.PaymentService;
import com.spring.tour.service.TourPageService;
import com.spring.tour.vo.PaymentVo;
import com.spring.tour.vo.TourOptionVo;


@Controller
public class PayController {
	
	@Autowired
	private PaymentService service;
	
	@Autowired
	private TourPageService tpService;
	// 투어랑 숙박이랑 파라미터 이름 통일 시키기 
	/* service_name = 상품명 / 숙소이름
	 * cate_number = 카테고리넘버
	 * service_number = 서비스넘버
	 * startDate = 투어엔 없고 / 숙박엔 체크인
	 * endDate = 투어: 유효기간 / 숙박은 체크아웃
	 * userId = 사용자 아이디  --> 없을경우 none으로 진행
	 * service_options = 방이름(기홍) / 서비스 이름 
	 * option_index = accom_option_number(기홍)/ tour_option_index(동현)
	 * optionPrice 
	 */
	@RequestMapping(value = "/payment")
	public String payform(@RequestParam(value="serviceName") String service_name,
					@RequestParam(value="cateNumber") int cate_number,
					@RequestParam(value="serviceNumber") int service_number,
					@RequestParam(value="startDate", required = false) String startDate,
					@RequestParam(value="endDate", required = false) String endDate,
					@RequestParam(value="userId", defaultValue = "none") String user_id,
					@RequestParam(value="option_index") List<Integer> indexNum,
					@RequestParam(value="service_option") List<String> optionName,
					@RequestParam(value="count", defaultValue = "0") List<Integer> optionCnts,
					@RequestParam(value="optionPrice") List<Integer> optionPrice,
					@RequestParam(value="discount",required = false) String discount,
					Model model,
					HttpServletRequest req
			) {
		
		PaymentVo vo;
		if(!user_id.equals("none")) {
			if(req.getSession().getAttribute("user_id")!=null) {
				vo = service.getUserInfo((String)req.getSession().getAttribute("user_id"));
			}else {
				vo = service.getUserInfo(user_id);
			}
		}else {
			vo = service.getUserInfo((String)req.getSession().getAttribute("user_id"));
		}
		model.addAttribute("pvo", vo);
		
		model.addAttribute("service_name",service_name);
		model.addAttribute("cate_number",cate_number);
		model.addAttribute("service_number",service_number);
		if(startDate!=null) {
			model.addAttribute("startDate",startDate);
//			System.out.println("startDate"+startDate);
		}
		if(endDate!=null) {
			model.addAttribute("endDate",endDate);
//			System.out.println("endDate"+endDate);
		}
		
		model.addAttribute("user_id",user_id);
		model.addAttribute("indexNum",indexNum);
		
		
		List<TourOptionVo> tdList = tpService.tourOptionList(service_number);
		
		model.addAttribute("optionList",tdList);
		model.addAttribute("optionName",optionName);
		model.addAttribute("optionCnts",optionCnts);
		model.addAttribute("optionPrice",optionPrice);
		
		if(discount!=null) {
			model.addAttribute("discount", Integer.parseInt(discount));
		}
		return ".pay.payment";
	}
	
	/*
	 * bookerName = 예약자명
	 * bookerPhone = 예약자연락처
	 * visitorName = 투숙자명
	 * visitorPhone= 투숙자 연락처
	 * couponUsing = 사용하는 쿠폰의 이름
	 * pointUsing = 사용할 포인트  int 
	 * thePrice = 결제할 금액 int 
	 * waytopay = 결제 방법
	 * agreecheck = 동의서 체크 no3번만 확인하면 됨
	 * 
	 * 
	 */
	@RequestMapping(value = "/payit")
	public String payit(@RequestParam(value="user_id",required = false) String user_id,
						@RequestParam(value="cate_number") int cate_number,
						@RequestParam(value="service_number") int service_number,
						@RequestParam(value="service_name") String service_name,
						@RequestParam(value="bookerName") String bookerName,
						@RequestParam(value="bookerPhone") String bookerPhone,
						@RequestParam(value="startDate", required = false) String startDate,
						@RequestParam(value="endDate", required = false) String endDate,
						@RequestParam(value="eachOptionIndex") List<Integer> eachOptionIndex,
						@RequestParam(value="eachOptionCount") List<Integer> eachOptionCount,
						@RequestParam(value="visitorName",required = false) String visitorName,
						@RequestParam(value="visitorPhone",required = false) String visitorPhone,
						@RequestParam(value="visitorEmail",required = false) String visitorEmail,
						@RequestParam(value="couponUsing",required = false) String couponUsing,
						@RequestParam(value="pointUsing", defaultValue = "0") int pointUsing,
						@RequestParam(value="thePrice") int thePrice,
						@RequestParam(value="waytopay") String waytopay,
						@RequestParam(value="agreecheck") List<String> agreecheckList,
						HttpServletRequest req) {
		
		user_id=(String)req.getSession().getAttribute("user_id");
		
		if(cate_number ==1) {
			try {
			//여기엔 투어book 저장 코드
			HashMap<String, Object> tbMap = new HashMap<String, Object>(); // tourBook
			HashMap<String, Object> tboMap = new HashMap<String, Object>(); // tourBookOption
			HashMap<String, Object> upMap = new HashMap<String, Object>(); // update는 그냥 같이 쓰자
			if(user_id!=null) {
				tbMap.put("user_id", user_id);
			}else {
				user_id="none"; //비회원일때를 대비..
				tbMap.put("user_id", user_id);
			}
			tbMap.put("service_number", service_number);
			tbMap.put("service_name", service_name);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			if(startDate!=null) { //여기선 필요 없는 코드 
				tbMap.put("tour_startdate", dateFormat.parse(startDate));
			}
			if(endDate!=null) {
				tbMap.put("tour_enddate", dateFormat.parse(endDate));
			}
			tbMap.put("payment_condition", "결제완료");
			tbMap.put("total_price", thePrice);
			tbMap.put("point_useamount", pointUsing); //0이 항상 들어옴 사용했단면 user_info 포인트 업데이트!!!!
			
			if(!couponUsing.equals("none") || couponUsing!=null) {
				tbMap.put("coupon_usecondition", couponUsing); //사용한 쿠폰의 이름이 들어감 사용했다면 user_info도 업데이트!!!
			}
			tbMap.put("payment_method", waytopay);
			tbMap.put("bookername", bookerName);
			tbMap.put("bookerphone", bookerPhone);
			
			// update 관련 
			if(!couponUsing.equals("none")) { 
				upMap.put("user_id", user_id);
				upMap.put("coupon_usecondition", couponUsing);
			}
			upMap.put("user_id", user_id);
			upMap.put("point_useamount", pointUsing);
			
			// tour_book_option 관련 
			tboMap.put("service_number", service_number);
			tboMap.put("eachOptionIndex", eachOptionIndex);
			tboMap.put("eachOptionCount", eachOptionCount);
			
			int n = service.transactionTour(tbMap,upMap,tboMap); 
			if(n>0) {
				System.out.println("투어/티켓 결제 성공");
			}
			
			}catch(ParseException pe) {
				pe.printStackTrace();
				return ".pay.payment";
			}
		}else if(cate_number!=1) {
			try {
		
			HashMap<String, Object> abMap = new HashMap<String, Object>(); // accom_Book
			HashMap<String, Object> viMap = new HashMap<String, Object>(); // visitor_info
			HashMap<String, Object> upMap = new HashMap<String, Object>(); // update는 그냥 같이 쓰자
			
			if(user_id!=null) {
				abMap.put("user_id", user_id);
			}else {
				user_id="none"; //비회원일때를 대비..
				abMap.put("user_id", user_id);
			}
			abMap.put("user_id", user_id);
			abMap.put("optionNum", eachOptionIndex.get(0));
			abMap.put("service_name", service_name);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			if(startDate!=null) {
				abMap.put("startDate", dateFormat.parse(startDate));
			}
			if(endDate!=null) {
				abMap.put("endDate", dateFormat.parse(endDate));
			}
			
			abMap.put("payment_condition","결제완료");
			abMap.put("total_price", thePrice);
			abMap.put("point_useamount", pointUsing);

			if(!couponUsing.equals("none") || couponUsing!=null) {
				abMap.put("coupon_usecondition", couponUsing); //사용한 쿠폰의 이름이 들어감 사용했다면 user_info도 업데이트!!!
			}
			abMap.put("payment_method", waytopay);
			
			// #{accom_book_number}은 서비스에서 추가해준다.
			viMap.put("visitor_name", visitorName);
			viMap.put("visitor_email", visitorEmail);
			viMap.put("visitor_phone", visitorPhone);

			upMap.put("user_id", user_id);
			upMap.put("point_useamount", pointUsing);
			if(!couponUsing.equals("none") || couponUsing!=null) {
				upMap.put("coupon_usecondition", couponUsing);
			}
			///////////////
			
			int n = service.transactionAccom(abMap,viMap,upMap);
			if(n>0) {
				System.out.println("숙소 결제 성공");
			}
			
			}catch(ParseException pe) {
				pe.printStackTrace();
				return ".pay.payment"; //이게 안먹히면 뒤로가기
			}
		}
		return ".home";

	}
}
