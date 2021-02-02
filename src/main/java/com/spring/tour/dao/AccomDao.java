package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.Accom_serviceVo;

@Repository
public class AccomDao {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.spring.tour.mapper.AccomMapper";
	
	public List<Accom_serviceVo> accom_service_list(HashMap<String, Object> map){
		return sqlSession.selectList(NAMESPACE+".accom_search", map);
	}
	
	public int accom_minprice(int serviceNum) {
		return sqlSession.selectOne(NAMESPACE+".accom_minprice_search", serviceNum);
	}
}
