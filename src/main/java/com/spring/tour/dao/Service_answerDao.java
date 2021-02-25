package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.Service_answerVo;

@Repository
public class Service_answerDao {
	@Autowired
	private SqlSession sqlSession;
	private static String NAMESPACE="com.spring.tour.mapper.Service_answerMapper";
	public int insert(Service_answerVo vo) {
		return sqlSession.insert(NAMESPACE+".insert",vo);
	}
	public int count(HashMap<String,Object> map) {
		return sqlSession.selectOne(NAMESPACE+".count", map);
	}
	public List<Service_answerVo> list(HashMap<String,Object> map){
		return sqlSession.selectList(NAMESPACE+".list",map);
	}
	public int delete(int service_answer_number) {
		return sqlSession.delete(NAMESPACE+".delete",service_answer_number);
	}
	public int update(Service_answerVo vo) {
		return sqlSession.update(NAMESPACE+".update",vo);
	}
	public Service_answerVo select(int service_answer_number) {
		return sqlSession.selectOne(NAMESPACE+".select",service_answer_number);
	}
	public Service_answerVo next(int service_answer_number) {
		return sqlSession.selectOne(NAMESPACE+".next",service_answer_number);
	}
	public Service_answerVo prev(int service_answer_number) {
		return sqlSession.selectOne(NAMESPACE+".prev",service_answer_number);
	}
}
