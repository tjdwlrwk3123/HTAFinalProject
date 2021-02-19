package com.spring.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.ServiceDao;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.TourServiceVo;
import com.spring.tour.vo.Tour_infoVo;
@Service
public class ServiceService {
	@Autowired private ServiceDao dao;
	public List<Accom_serviceVo> selectAccomServiceList(String user_id) {
		return dao.selectAccomServiceList(user_id);
	}
	public List<TourServiceVo> selectTourServiceList(String user_id) {
		return dao.selectTourServiceList(user_id);
	}
	public Accom_serviceVo selectAccomService(String accom_service_number) {
		return dao.selectAccomService(accom_service_number);
	} 
	public String selectAccomServiceMax(String user_id) {
		return dao.selectAccomServiceMax(user_id);
	} 
	public String selectTourServiceMax(String user_id) {
		return dao.selectTourServiceMax(user_id);
	} 
	public String selectAccomOptioneMax(String accom_service_number) {
		return dao.selectAccomOptioneMax(accom_service_number);
	} 
	public AccomInfoVo selectAccomInfo(String accom_service_number) {
		return dao.selectAccomInfo(accom_service_number);
	}
	public List<AccomOptionVo> selectAccomOptionList(String accom_service_number) {
		return dao.selectAccomOptionList(accom_service_number);
	}
	public AccomOptionVo selectAccomOption(String accom_option_number) {
		return dao.selectAccomOption(accom_option_number);
	}
	public List<TourServiceVo> selectTourList(String user_id) {
		return dao.selectTourList(user_id);
	}
	public List<ImageVo> selectImageList(ImageVo vo) {
		return dao.selectImageList(vo);
	}

	public int insertAccomService(Accom_serviceVo vo) {
		return dao.insertAccomService(vo);
	}
	public int inserAccomInfo(AccomInfoVo vo) {
		return dao.insertAccomInfo(vo);
	}
	public int insertAccomOption(AccomOptionVo vo) {
		return dao.insertAccomOption(vo);
	}
	public int insertTourService(TourServiceVo vo) {
		return dao.insertTourService(vo);
	}
	public int inserTourInfo(Tour_infoVo vo) {
		return dao.insertTourInfo(vo);
	}
	public int insertImg(ImageVo vo) {
		return dao.insertImg(vo);
	}
	
	public int updateAccomService(Accom_serviceVo vo) {
		return dao.updateAccomService(vo);
	}
	public int updateAccomInfo(AccomInfoVo vo) {
		return dao.updateAccomInfo(vo);
	}
	public int updateAccomOption(AccomOptionVo vo) {
		return dao.updateAccomOption(vo);
	}
	
	public int deleteAccomService(String accom_service_number) {
		return dao.deletAccomService(accom_service_number);
	}
	public int deleteAccomInfo(String accom_service_number) {
		return dao.deleteAccomInfo(accom_service_number);
	}
	public int deleteAccomOption(String accom_option_number) {
		return dao.deleteAccomOption(accom_option_number);
	}
	public int deleteTourService(String service_number) {
		return dao.deletTourService(service_number);
	}
	public int deleteTourInfo(String service_number) {
		return dao.deleteTourInfo(service_number);
	}
	public int deleteImg(ImageVo vo) {
		return dao.deleteImg(vo);
	}
}
