package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.CustomercenterVo;

@Repository
public class CustomercenterDao {
	@Autowired
	private SqlSession sqlSession;
	private static String NAMESPACE="com.spring.tour.mapper.CustomercenterMapper";
	public int insert(CustomercenterVo vo) {
		return sqlSession.insert(NAMESPACE+".insert",vo);
	}
	public int count(HashMap<String,Object> map) {
		return sqlSession.selectOne(NAMESPACE+".count", map);
	}
	public List<CustomercenterVo> list(HashMap<String,Object> map){
		return sqlSession.selectList(NAMESPACE+".list",map);
	}
	public int delete(int question_number) {
		return sqlSession.delete(NAMESPACE+".delete",question_number);
	}
	public int update(CustomercenterVo vo) {
		return sqlSession.update(NAMESPACE+".update",vo);
	}
	public CustomercenterVo select(int question_number) {
		return sqlSession.selectOne(NAMESPACE+".select",question_number);
	}
	public CustomercenterVo next(int question_number) {
		return sqlSession.selectOne(NAMESPACE+".next",question_number);
	}
	public CustomercenterVo prev(int question_number) {
		return sqlSession.selectOne(NAMESPACE+".prev",question_number);
	}
}
