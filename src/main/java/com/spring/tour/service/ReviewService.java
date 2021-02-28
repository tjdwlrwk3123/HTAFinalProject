package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.ReviewDao;
import com.spring.tour.vo.ImageVo;
import com.spring.tour.vo.ReviewVo;

@Service
public class ReviewService {
	@Autowired
	private ReviewDao dao;
	
	public int insert(ReviewVo vo) {
		return dao.insert(vo);
	}
	public int count(HashMap<String,Object> map) {
		return dao.count(map);
	}
	public List<ReviewVo> list(HashMap<String,Object> map){
		return dao.list(map);
	}
	public ReviewVo select(int review_number) {
		return dao.select(review_number);
	}
	public int update(ReviewVo vo) {
		return dao.update(vo);
	}
	public int delete(int review_number) {
		return dao.delete(review_number);
	}
	public ReviewVo	next(int review_number) {
		return dao.next(review_number);
	}
	public ReviewVo prev(int review_number) {
		return dao.prev(review_number);
	}
	public int insert1(ImageVo vo) {
		return dao.insert1(vo);
	}
}
