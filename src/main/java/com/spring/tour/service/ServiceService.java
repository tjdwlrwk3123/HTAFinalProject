package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.ServiceDao;
import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.TourOptionVo;
import com.spring.tour.vo.TourServiceVo;
import com.spring.tour.vo.Tour_infoVo;
@Service
public class ServiceService {
	@Autowired private ServiceDao dao;
	public List<Accom_serviceVo> selectAccomServiceList(HashMap<String, Object> map) {
		return dao.selectAccomServiceList(map);
	}
	public Accom_serviceVo selectAccomService(String accom_service_number) {
		return dao.selectAccomService(accom_service_number);
	} 
	public AccomInfoVo selectAccomInfo(String accom_service_number) {
		return dao.selectAccomInfo(accom_service_number);
	}
	public String selectAccomServiceMax(String user_id) {
		return dao.selectAccomServiceMax(user_id);
	} 
	public String selectAccomOptioneMax(String accom_service_number) {
		return dao.selectAccomOptioneMax(accom_service_number);
	} 
	public List<AccomOptionVo> selectAccomOptionList(HashMap<String, Object> map) {
		return dao.selectAccomOptionList(map);
	}
	public AccomOptionVo selectAccomOption(String accom_option_number) {
		return dao.selectAccomOption(accom_option_number);
	}
	public List<TourServiceVo> selectTourServiceList(HashMap<String, Object> map) {
		return dao.selectTourServiceList(map);
	}
	public TourServiceVo selectTourService(String service_number) {
		return dao.selectTourService(service_number);
	} 
	public Tour_infoVo selectTourInfo(String service_number) {
		return dao.selectTourInfo(service_number);
	}
	public String selectTourServiceMax(String user_id) {
		return dao.selectTourServiceMax(user_id);
	} 
	public String selectTourOptioneMax(String service_number) {
		return dao.selectTourOptioneMax(service_number);
	} 
	public List<TourOptionVo> selectTourOptionList(HashMap<String, Object> map) {
		return dao.selectTourOptionList(map);
	}
	public TourOptionVo selectTourOption(String tour_option_number) {
		return dao.selectTourOption(tour_option_number);
	}
	public List<ImageVo> selectImageList(ImageVo vo) {
		return dao.selectImageList(vo);
	}
	public int countTourService(HashMap<String, Object> map) {
		return dao.countTourService(map);
	}
	public int countTourOption(HashMap<String, Object> map) {
		return dao.countTourOption(map);
	}
	public int countAccomService(HashMap<String, Object> map) {
		return dao.countAccomService(map);
	}
	public int countAccomOption(HashMap<String, Object> map) {
		return dao.countAccomOption(map);
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
	public int insertTourOption(TourOptionVo vo) {
		return dao.insertTourOption(vo);
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
	public int updateTourService(TourServiceVo vo) {
		return dao.updateTourService(vo);
	}
	public int updateTourInfo(Tour_infoVo vo) {
		return dao.updateTourInfo(vo);
	}
	public int updateTourOption(TourOptionVo vo) {
		return dao.updateTourOption(vo);
	}
	public int updateTourOptionIndex(String tour_option_number) {
		return dao.updateTourOptionIndex(tour_option_number);
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
	public int deleteTourOption(String tour_option_number) {
		return dao.deleteTourOption(tour_option_number);
	}
	public int deleteImg(ImageVo vo) {
		return dao.deleteImg(vo);
	}
}
