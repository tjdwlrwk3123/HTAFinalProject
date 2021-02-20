package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.AccomInfoVo;
import com.spring.tour.vo.AccomOptionVo;
import com.spring.tour.vo.AccomServiceReviewJoinVo;
import com.spring.tour.vo.Accom_serviceVo;
import com.spring.tour.vo.ImageVo;

@Repository
public class AccomDao {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.spring.tour.mapper.AccomMapper";
	
	public List<AccomServiceReviewJoinVo> accom_service_list(HashMap<String, Object> fcMap){
		return sqlSession.selectList(NAMESPACE+".accom_search", fcMap);
	}
	
	public List<HashMap<String, Object>> accom_minprice(HashMap<String, Object> pmap) {
		return sqlSession.selectList(NAMESPACE+".accom_minprice_search", pmap);
	}
	public AccomInfoVo accomInfo(int accomNum) {
		return sqlSession.selectOne(NAMESPACE+".accom_info_detail", accomNum);
	}
	public Accom_serviceVo accomService(int accomNum) {
		return sqlSession.selectOne(NAMESPACE+".accom_service_detail", accomNum);
	}
	public List<AccomOptionVo> accomOption(HashMap<String, Object> map){
		return sqlSession.selectList(NAMESPACE+".accom_option_detail", map);
	}
	public ImageVo accomRepresentImage(int serviceNum) {
		return sqlSession.selectOne(NAMESPACE+".accom_represent_image", serviceNum);
	}
	public List<ImageVo> accomWholeImage(int accomNum){
		return sqlSession.selectList(NAMESPACE+".accom_whole_image", accomNum);
	}
	public List<ImageVo> accomRoomImage(int optNum){
		return sqlSession.selectList(NAMESPACE+".accom_room_image", optNum);
	}
	public int isUsing(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE+".isUsing", map);
	}
	public int howLong(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE+".howLong", map);
	}
	public AccomOptionVo accomRoomDetail(int optNum) {
		return sqlSession.selectOne(NAMESPACE+".accom_room_detail", optNum);
	}
}
