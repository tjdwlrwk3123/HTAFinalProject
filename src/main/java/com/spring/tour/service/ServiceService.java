package com.spring.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.ServiceDao;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.TourServiceVo;
@Service
public class ServiceService {
	@Autowired private ServiceDao dao;
	public List<Accom_serviceVo> selectAccomServiceList(String user_id) {
		return dao.selectAccomServiceList(user_id);
	}
	public Accom_serviceVo selectAccomService(String accom_service_number) {
		return dao.selectAccomService(accom_service_number);
	}
	public AccomInfoVo selectAccomInfo(String accom_service_number) {
		return dao.selectAccomInfo(accom_service_number);
	}
	public List<TourServiceVo> selectTourList(String user_id) {
		return dao.selectTourList(user_id);
	}
	public int insertAccomService(Accom_serviceVo vo) {
		return dao.insertAccomService(vo);
	}
	public int inserAccomInfo(AccomInfoVo vo) {
		return dao.insertAccomInfo(vo);
	}
	public int insertImg(ImageVo vo) {
		return dao.insertImg(vo);
	}
	public int deleteAccomService(String accom_service_number) {
		return dao.deletAccomService(accom_service_number);
	}
}
