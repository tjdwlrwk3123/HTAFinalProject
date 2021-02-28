package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.ReviewVo;

@Repository
public class ReviewDao {
	@Autowired
	private SqlSession sqlSession;
	private static String NAMESPACE="com.spring.tour.mapper.ReviewMapper";
	public int insert(ReviewVo vo) {
		return sqlSession.insert(NAMESPACE+".insert",vo);
	}
	public int count(HashMap<String, Object> map) {
		return sqlSession.selectOne(NAMESPACE + ".count", map);
	}

	public List<ReviewVo> list(HashMap<String, Object> map) {
		return sqlSession.selectList(NAMESPACE + ".list", map);
	}

	public int delete(int review_number) {
		return sqlSession.delete(NAMESPACE + ".delete", review_number);
	}

	public int update(ReviewVo vo) {
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	public ReviewVo select(int review_number) {
		return sqlSession.selectOne(NAMESPACE + ".select", review_number);
	}

	public ReviewVo next(int review_number) {
		return sqlSession.selectOne(NAMESPACE + ".next", review_number);
	}

	public ReviewVo prev(int review_number) {
		return sqlSession.selectOne(NAMESPACE + ".prev", review_number);
	}
	public int insert1(ImageVo vo) {
		return sqlSession.insert(NAMESPACE+".insert1",vo);
	}
}
