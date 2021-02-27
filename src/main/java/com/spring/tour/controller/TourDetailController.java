package com.spring.tour.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.tour.service.TourPageService;
import com.spring.tour.vo.ReviewVo;
import com.spring.tour.vo.TourDetailVo;
import com.spring.tour.vo.TourOptionVo;
import com.spring.tour.vo.WishlistVo;


@Controller 
public class TourDetailController {
	@Autowired
	private TourPageService service; 

	
	// 아이디 정보랑, cate_number, service_number 넘겨받기
	@RequestMapping(value = "/tourDetail")
	public String tourDetail(int cate_number, int service_number, Model model, HttpServletRequest req) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		String user_id = (String)req.getSession().getAttribute("user_id");
		
		map.put("user_id",user_id);
		map.put("cate_number",cate_number);
		map.put("service_number",service_number);
		TourDetailVo vo = service.tourDetailList(map);
		vo.setTour_content(vo.getTour_content().replace("\\n", "<br>"));
		vo.setTour_content(vo.getTour_content().replace("\n", "<br>"));
		
		vo.setTour_how(vo.getTour_how().replaceAll("\\n", "<br>"));
		vo.setTour_how(vo.getTour_how().replaceAll("\n", "<br>"));
		vo.setTour_how(vo.getTour_how().replace("\\n", "<br>"));
		vo.setTour_how(vo.getTour_how().replace("\n", "<br>"));
		vo.setTour_rule(vo.getTour_rule().replaceAll("\\n","<br>"));
		vo.setTour_rule(vo.getTour_rule().replaceAll("\n","<br>"));
		vo.setTour_rule(vo.getTour_rule().replace("\\n","<br>"));
		vo.setTour_rule(vo.getTour_rule().replace("\n","<br>"));
		
		List<TourOptionVo> optionList= service.tourOptionList(service_number);
		int minprice= 10000000;
		int oriprice= 0;
		for(TourOptionVo tovo : optionList) {
			int price = tovo.getTour_price();
			int dcrate = tovo.getDiscount();
			if(minprice>price-price/100*dcrate) {
				minprice = (int)Math.ceil((double)price-price/100*dcrate);
				oriprice=price;
			};
		}
		model.addAttribute("oriprice",oriprice);
		model.addAttribute("minprice",minprice);
		model.addAttribute("detail", vo);
		model.addAttribute("option",service.tourOptionList(service_number));
		model.addAttribute("de_image",service.tourDetailImage(service_number));
		model.addAttribute("pa_image",service.tourDetailPamphlet(service_number));
		model.addAttribute("review",service.tourReviewList(map));
		
		WishlistVo wvo= service.tourDetailIsinWish(map);
		if(wvo==null || wvo.getUser_id().equals("")) {
			model.addAttribute("wishlist", false);
		}else {
			model.addAttribute("wishlist", true);
		}
		
		
		return ".tourPage.tourDetail";

	}
	
	@RequestMapping(value = "/getReviewList",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public HashMap<String, Object> getReview(int cate_number, int service_number){
		HashMap<String, Object> paramMap = new HashMap<>();
		paramMap.put("cate_number", cate_number);
		paramMap.put("service_number",service_number);
		
		HashMap<String, Object> resultMap = new HashMap<>();
		List<ReviewVo> reviewList = service.tourReviewList(paramMap);
		for(ReviewVo vo : reviewList) {
			try {
				String reImg = service.tourReviewImage(vo.getReview_number());
				vo.setImage(reImg);
				vo.setReview_content(vo.getReview_content().replaceAll("\\n", "<br>"));
			}catch(NullPointerException ne) {
				continue;
			}
		}
		resultMap.put("reviewlist", reviewList);
		
		return resultMap;
	}
}
