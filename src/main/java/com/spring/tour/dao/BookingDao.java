package com.spring.tour.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tour.vo.AccomBookVo;
import com.spring.tour.vo.TourBookOptionVo;
import com.spring.tour.vo.TourBookVo;

@Repository
public class BookingDao {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.spring.tour.mapper.BookingMapper";
	
	public List<AccomBookVo> accomBookList(HashMap<String, Object> accomMap){
		return sqlSession.selectList(NAMESPACE+".accomBookingList", accomMap);
	}
	public int accomCount(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".accomBookingCount", user_id);
	}
	//지난 숙소 목록
	public List<AccomBookVo> accompastList(HashMap<String, Object> accomMap){
		return sqlSession.selectList(NAMESPACE+".accompastList", accomMap);
	}
	public int accompastCount(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".accompastCount", user_id);
	}
	//숙소 취소목록
	public List<AccomBookVo> accomCancelList(String user_id){
		return sqlSession.selectList(NAMESPACE+".accomCancelList", user_id);
	}
	public int getUsedPointA(int bookNumber) {
		return sqlSession.selectOne(NAMESPACE+".getUsedPointA", bookNumber);
	}
	public int pointRefund(HashMap<String, Object> map) {
		return sqlSession.update(NAMESPACE+".pointRefund", map);
	}
	public int accomCancel(int bookNumber) {
		return sqlSession.update(NAMESPACE+".accomCancel", bookNumber);
	}
	
	
	public List<TourBookVo> tourBookList(HashMap<String, Object> tourMap){
		return sqlSession.selectList(NAMESPACE+".tourBookingList", tourMap);
	}
	public int tourCount(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".tourBookingCount", user_id);
	}
	//지난 투어목록
	public List<TourBookVo> tourpastList(HashMap<String, Object> tourMap){
		return sqlSession.selectList(NAMESPACE+".tourpastList", tourMap);
	}
	public int tourpastCount(String user_id) {
		return sqlSession.selectOne(NAMESPACE+".tourpastCount", user_id);
	}
	//투어 취소목록
	public List<TourBookVo> tourCancelList(String user_id){
		return sqlSession.selectList(NAMESPACE+".tourCancelList", user_id);
	}
	public int getUsedPointT(int bookNumber) {
		return sqlSession.selectOne(NAMESPACE+".getUsedPointT", bookNumber);
	}
	public int tourOptionDel(int bookNumber) {
		return sqlSession.delete(NAMESPACE+".tourBookOptionDel",bookNumber);
	}
	public int tourCancel(int bookNumber) {
		return sqlSession.update(NAMESPACE+".tourCancel", bookNumber);
	}
	
	//투어 디테일
	public List<TourBookOptionVo> tourBookOption(int bookNumber){
		return sqlSession.selectList(NAMESPACE+".tourBookDetail", bookNumber);
	}
}
