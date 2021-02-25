package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.Service_questionVo;

@Repository
public class Service_questionDao {
	@Autowired
	private SqlSession sqlSession;
	private static String NAMESPACE = "com.spring.tour.mapper.Service_questionMapper";

	public int insert(Service_questionVo vo) {
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	public int count(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE + ".count", map);
	}

	public List<Service_questionVo> list(HashMap<String, Object> map) {
		return sqlSession.selectList(NAMESPACE + ".list", map);
	}

	public int delete(int service_question_number) {
		return sqlSession.delete(NAMESPACE + ".delete", service_question_number);
	}

	public int update(Service_questionVo vo) {
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	public Service_questionVo select(int service_question_number) {
		return sqlSession.selectOne(NAMESPACE + ".select", service_question_number);
	}

	public Service_questionVo next(int service_question_number) {
		return sqlSession.selectOne(NAMESPACE + ".next", service_question_number);
	}

	public Service_questionVo prev(int service_question_number) {
		return sqlSession.selectOne(NAMESPACE + ".prev", service_question_number);
	}
}
