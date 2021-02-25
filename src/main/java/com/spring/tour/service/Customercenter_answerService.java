package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.Customercenter_answerDao;
import com.spring.tour.vo.Customercenter_answerVo;

@Service
public class Customercenter_answerService {
	@Autowired
	private Customercenter_answerDao dao;
	public int insert(Customercenter_answerVo vo) {
		return dao.insert(vo);
	}
	public int count(HashMap<String,Object> map) {
		return dao.count(map);
	}
	public List<Customercenter_answerVo> list(HashMap<String,Object> map){
		return dao.list(map);
	}
	public Customercenter_answerVo select(int answer_number) {
		return dao.select(answer_number);
	}
	public int update(Customercenter_answerVo vo) {
		return dao.update(vo);
	}
	public int delete(int answer_number) {
		return dao.delete(answer_number);
	}
	public Customercenter_answerVo next(int answer_number) {
		return dao.next(answer_number);
	}
	public Customercenter_answerVo prev(int answer_number) {
		return dao.prev(answer_number);
	}
}
