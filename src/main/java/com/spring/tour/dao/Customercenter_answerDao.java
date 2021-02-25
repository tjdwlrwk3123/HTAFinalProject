package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.Customercenter_answerVo;

@Repository
public class Customercenter_answerDao {
	@Autowired
	private SqlSession sqlSession;
	private static String NAMESPACE="com.spring.tour.mapper.Customercenter_answerMapper";
	public int insert(Customercenter_answerVo vo) {
		return sqlSession.insert(NAMESPACE+".insert",vo);
	}
	public int count(HashMap<String,Object> map) {
		return sqlSession.selectOne(NAMESPACE+".count", map);
	}
	public List<Customercenter_answerVo> list(HashMap<String,Object> map){
		return sqlSession.selectList(NAMESPACE+".list",map);
	}
	public int delete(int answer_number) {
		return sqlSession.delete(NAMESPACE+".delete",answer_number);
	}
	public int update(Customercenter_answerVo vo) {
		return sqlSession.update(NAMESPACE+".update",vo);
	}
	public Customercenter_answerVo select(int answer_number) {
		return sqlSession.selectOne(NAMESPACE+".select",answer_number);
	}
	public Customercenter_answerVo next(int answer_number) {
		return sqlSession.selectOne(NAMESPACE+".next",answer_number);
	}
	public Customercenter_answerVo prev(int answer_number) {
		return sqlSession.selectOne(NAMESPACE+".prev",answer_number);
	}
}
