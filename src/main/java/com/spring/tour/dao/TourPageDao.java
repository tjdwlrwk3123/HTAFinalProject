package com.spring.tour.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.TourPageVo;



@Repository
public class TourPageDao {
	@Autowired
	private SqlSession sqlsession;
	
	private final String NAMESPACE = "com.spring.tour.mapper.TourPageMapper";
	
	public List<TourPageVo> tourMainList(){
		return sqlsession.selectList(NAMESPACE+".list");
	}
}
