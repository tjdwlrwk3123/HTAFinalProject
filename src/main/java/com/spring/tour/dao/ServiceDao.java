package com.spring.tour.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.TourOptionVo;
import com.spring.tour.vo.TourServiceVo;
import com.spring.tour.vo.Tour_infoVo;


@Repository
public class ServiceDao {
	@Autowired private SqlSession sqlSession;
	private static String NAMESPACE="com.spring.tour.mapper.ServiceMapper";
	public List<Accom_serviceVo> selectAccomServiceList(String user_id){ 
		return sqlSession.selectList(NAMESPACE+".selectAccomServiceList",user_id);
	} 
	public Accom_serviceVo selectAccomService(String accom_service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomService",accom_service_number);
	}
	public AccomInfoVo selectAccomInfo(String accom_service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomInfo",accom_service_number);
	}
	public String selectAccomServiceMax(String user_id){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomServiceMax",user_id);
	}
	public String selectAccomOptioneMax(String accom_service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomOptioneMax",accom_service_number);
	}
	public List<AccomOptionVo> selectAccomOptionList(String accom_service_number){
		return sqlSession.selectList(NAMESPACE+".selectAccomOptionList",accom_service_number);
	}
	public AccomOptionVo selectAccomOption(String accom_option_number){
		return sqlSession.selectOne(NAMESPACE+".selectAccomOption",accom_option_number);
	}
	public List<TourServiceVo> selectTourServiceList(String user_id){ 
		return sqlSession.selectList(NAMESPACE+".selectTourServiceList",user_id);
	} 
	public TourServiceVo selectTourService(String service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectTourService",service_number);
	}
	public Tour_infoVo selectTourInfo(String service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectTourInfo",service_number);
	}
	public String selectTourServiceMax(String user_id){ 
		return sqlSession.selectOne(NAMESPACE+".selectTourServiceMax",user_id);
	}
	public String selectTourOptioneMax(String service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectTourOptioneMax",service_number);
	}
	public List<TourOptionVo> selectTourOptionList(String service_number){
		return sqlSession.selectList(NAMESPACE+".selectTourOptionList", service_number);
	}
	public TourOptionVo selectTourOption(String tour_option_number){
		return sqlSession.selectOne(NAMESPACE+".selectTourOption", tour_option_number);
	}
	public List<ImageVo> selectImageList(ImageVo vo){
		return sqlSession.selectList(NAMESPACE+".selectImageList",vo);
	}
	
	public int insertAccomService(Accom_serviceVo vo) {
		return sqlSession.insert(NAMESPACE+".insertAccomService",vo);
	}
	public int insertAccomInfo(AccomInfoVo vo) {
		return sqlSession.insert(NAMESPACE+".insertAccomInfo",vo);
	}
	public int insertAccomOption(AccomOptionVo vo) {
		return sqlSession.insert(NAMESPACE+".insertAccomOption",vo);
	}
	public int insertTourService(TourServiceVo vo) {
		return sqlSession.insert(NAMESPACE+".insertTourService",vo);
	}
	public int insertTourInfo(Tour_infoVo vo) {
		return sqlSession.insert(NAMESPACE+".insertTourInfo",vo);
	}
	public int insertTourOption(TourOptionVo vo) {
		return sqlSession.insert(NAMESPACE+".insertTourOption",vo);
	}
	public int insertImg(ImageVo vo) {
		return sqlSession.insert(NAMESPACE+".insertImg",vo);
	}
	
	public int updateAccomService(Accom_serviceVo vo) {
		return sqlSession.update(NAMESPACE+".updateAccomService", vo);
	}
	public int updateAccomInfo(AccomInfoVo vo) {
		return sqlSession.update(NAMESPACE+".updateAccomInfo", vo);
	}
	public int updateAccomOption(AccomOptionVo vo) {
		return sqlSession.update(NAMESPACE+".updateAccomOption", vo);
	}
	public int updateTourService(TourServiceVo vo) {
		return sqlSession.update(NAMESPACE+".updateTourService", vo);
	}
	public int updateTourInfo(Tour_infoVo vo) {
		return sqlSession.update(NAMESPACE+".updateTourInfo", vo);
	}
	public int updateTourOption(TourOptionVo vo) {
		return sqlSession.update(NAMESPACE+".updateTourOption", vo);
	}
	public int updateTourOptionIndex(String tour_option_number) {
		return sqlSession.update(NAMESPACE+".updateTourOptionIndex", tour_option_number);
	}
	
	public int deletAccomService(String accom_service_number) {
		return sqlSession.delete(NAMESPACE+".deleteAccomService", accom_service_number);
	}
	public int deleteAccomInfo(String accom_service_number) {
		return sqlSession.delete(NAMESPACE+".deleteAccomInfo", accom_service_number);
	}
	public int deleteAccomOption(String accom_option_number) {
		return sqlSession.delete(NAMESPACE+".deleteAccomOption", accom_option_number);
	}
	public int deletTourService(String service_number) {
		return sqlSession.delete(NAMESPACE+".deleteTourService", service_number);
	}
	public int deleteTourInfo(String service_number) {
		return sqlSession.delete(NAMESPACE+".deleteTourInfo", service_number);
	}
	public int deleteTourOption(String tour_option_number) {
		return sqlSession.delete(NAMESPACE+".deleteTourOption", tour_option_number);
	}
	public int deleteImg(ImageVo vo) {
		return sqlSession.delete(NAMESPACE+".deleteImg",vo);
	}
}
