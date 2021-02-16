package com.spring.tour.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.AccomInfoVo;
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
	public AccomInfoVo selectAccomInfo(String accom_service_number){ 
		return sqlSession.selectOne(NAMESPACE+".selectAccomInfo",accom_service_number);
	}
	public List<TourServiceVo> selectTourList(String user_id){
		return sqlSession.selectList(NAMESPACE+".selectTourList",user_id);
	}
	public int insertAccomService(Accom_serviceVo vo) {
		return sqlSession.insert(NAMESPACE+".insertAccomService",vo);
	}
	public int insertAccomInfo(AccomInfoVo vo) {
		return sqlSession.insert(NAMESPACE+".insertAccomInfo",vo);
	}
	public int insertImg(ImageVo vo) {
		return sqlSession.insert(NAMESPACE+".insertImg",vo);
	}
	public int deletAccomService(String accom_service_number) {
		return sqlSession.delete(NAMESPACE+".deleteAccomService",accom_service_number);
	}
}
