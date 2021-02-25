package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.CustomercenterDao;
import com.spring.tour.vo.CustomercenterVo;

@Service
public class CustomercenterService {
	@Autowired
	private CustomercenterDao dao;
	public int insert(CustomercenterVo vo) {
		return dao.insert(vo);
	}
	public int count(HashMap<String,Object> map) {
		return dao.count(map);
	}
	public List<CustomercenterVo> list(HashMap<String,Object> map){
		return dao.list(map);
	}
	public CustomercenterVo select(int question_number) {
		return dao.select(question_number);
	}
	public int update(CustomercenterVo vo) {
		return dao.update(vo);
	}
	public int delete(int question_number) {
		return dao.delete(question_number);
	}
	public CustomercenterVo	next(int question_number) {
		return dao.next(question_number);
	}
	public CustomercenterVo prev(int question_number) {
		return dao.prev(question_number);
	}
}
