package com.spring.tour.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.TourServiceVo;


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
	public String selectAccomServiceMax(String user_id){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomServiceMax",user_id);
	}
	public String selectAccomOptioneMax(String accom_service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomOptioneMax",accom_service_number);
	}
	public AccomInfoVo selectAccomInfo(String accom_service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomInfo",accom_service_number);
	}
	public List<AccomOptionVo> selectAccomOptionList(String accom_service_number){
		return sqlSession.selectList(NAMESPACE+".selectAccomOptionList",accom_service_number);
	}
	public AccomOptionVo selectAccomOption(String accom_option_number){
		return sqlSession.selectOne(NAMESPACE+".selectAccomOption",accom_option_number);
	}
	public List<TourServiceVo> selectTourList(String user_id){
		return sqlSession.selectList(NAMESPACE+".selectTourList",user_id);
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
	public int insertImg(ImageVo vo) {
		return sqlSession.insert(NAMESPACE+".insertImg",vo);
	}
	
	public int updateAccomService(Accom_serviceVo vo) {
		return sqlSession.insert(NAMESPACE+".updateAccomService",vo);
	}
	public int updateAccomInfo(AccomInfoVo vo) {
		return sqlSession.insert(NAMESPACE+".updateAccomInfo",vo);
	}
	
	public int deletAccomService(String accom_service_number) {
		return sqlSession.delete(NAMESPACE+".deleteAccomService",accom_service_number);
	}
	public int deleteAccomInfo(String accom_service_number) {
		return sqlSession.delete(NAMESPACE+".deleteAccomInfo",accom_service_number);
	}
	public int deleteAccomOption(String accom_option_number) {
		return sqlSession.delete(NAMESPACE+".deleteAccomOption",accom_option_number);
	}
	public int deleteImg(ImageVo vo) {
		return sqlSession.delete(NAMESPACE+".deleteImg",vo);
	}
}
