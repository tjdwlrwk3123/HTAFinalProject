package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.Service_answerDao;
import com.spring.tour.vo.Service_answerVo;

@Service
public class Service_answerService {
	@Autowired
	private Service_answerDao dao;
	public int insert(Service_answerVo vo) {
		return dao.insert(vo);
	}
	public int count(HashMap<String,Object> map) {
		return dao.count(map);
	}
	public List<Service_answerVo> list(HashMap<String,Object> map){
		return dao.list(map);
	}
	public Service_answerVo select(int service_answer_number) {
		return dao.select(service_answer_number);
	}
	public int update(Service_answerVo vo) {
		return dao.update(vo);
	}
	public int delete(int service_answer_number) {
		return dao.delete(service_answer_number);
	}
	public Service_answerVo next(int service_answer_number) {
		return dao.next(service_answer_number);
	}
	public Service_answerVo prev(int service_answer_number) {
		return dao.prev(service_answer_number);
	}
}




