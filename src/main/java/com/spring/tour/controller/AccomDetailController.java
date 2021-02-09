package com.spring.tour.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.tour.service.AccomService;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.ImageVo;

@RestController
public class AccomDetailController {
	@Autowired
	private AccomService service;
	
	@RequestMapping(value="/accomDetail_list",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public HashMap<String, Object> getDetailList(
			@RequestParam(value="startDate") Date startDate,
			@RequestParam(value="endDate") Date endDate,
			@RequestParam(value="accomNum") int accomNum,
			@RequestParam(value="count") int count){
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("accomNum", accomNum);
		map.put("count", count);
		List<AccomOptionVo> optionVo=service.accomOption(map);
		
		//결과로 보낼 해시맵
		HashMap<String, Object> result=new HashMap<String, Object>();
		result.put("options", optionVo);
		
		//숙소가 예약상태인지 여부 조사
		HashMap<String, Object> checkUsing=new HashMap<String, Object>();
		System.out.println(startDate);
		checkUsing.put("startDate", startDate);
		checkUsing.put("endDate", endDate);
		//몇박인지 확인
		int howLong=service.howLong(checkUsing);
		
		List<String> using=new ArrayList<String>();
		List<List<ImageVo>> image=new ArrayList<List<ImageVo>>();
		for(AccomOptionVo vo:optionVo) {
			int optNum=vo.getAccom_option_number();
			checkUsing.put("optNum", optNum);
			int isUsing=service.isUsing(checkUsing);
			if(isUsing>0) {
				using.add("예약불가");
			}else if(isUsing==0) {
				using.add("예약가능");
			}
			
			//숙소 각 방들에 대한 이미지
			List<ImageVo> roomImage=service.accomRoomImage(optNum);
			image.add(roomImage);
		}
		
		result.put("using", using);
		result.put("image", image);
		result.put("howLong", howLong);
		result.put("count",count);
		
		
		return result;
	}
}
