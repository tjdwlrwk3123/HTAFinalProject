package com.spring.tour.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ServiceDao {
	@Autowired private SqlSession sqlSession;
	private static String NAMESPACE="com.test.spring.tour.mapper.ServiceMapper";
	
}
