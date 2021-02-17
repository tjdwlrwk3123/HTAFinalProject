package com.spring.tour.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.PaymentVo;


@Repository
public class PaymentDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	private final String NAMESPACE= "com.spring.tour.mapper.PayMapper";
	
	public PaymentVo getUserInfo(String user_id) {
		return sqlsession.selectOne(NAMESPACE+".getUserInfo",user_id);		
	}
	
	public int insertTourBook(HashMap<String, Object> map) {
		return sqlsession.insert(NAMESPACE+".insertTourBook",map);
	}
	
	public int insertTourBookOption(HashMap<String, Object> map) {
		return sqlsession.insert(NAMESPACE+".insertTourBookOption",map);
	}
	
	public int tourBookMax() {
		return sqlsession.selectOne(NAMESPACE+".tourBookMax");
	}
	
	public int updatePoint(HashMap<String, Object> map) {
		return sqlsession.update(NAMESPACE+".updatePoint", map);
	}
	public int updateCoupon(HashMap<String, Object> map) {
		return sqlsession.update(NAMESPACE+".updateCoupon", map);
	}
	public int updateTicket(HashMap<String, Object> map) {
		return sqlsession.update(NAMESPACE+".updateTicket", map);
	}
}
	
	
	
	
	
	
