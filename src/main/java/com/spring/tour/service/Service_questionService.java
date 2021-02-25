package com.spring.tour.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.Service_questionDao;
import com.spring.tour.vo.Service_questionVo;

@Service
public class Service_questionService {
	@Autowired
	private Service_questionDao dao;

	public int insert(Service_questionVo vo) {
		return dao.insert(vo);
	}

	public int count(HashMap<String, Object> map) {
		return dao.count(map);
	}

	public List<Service_questionVo> list(HashMap<String, Object> map) {
		return dao.list(map);
	}

	public Service_questionVo select(int service_question_number) {
		return dao.select(service_question_number);
	}

	public int update(Service_questionVo vo) {
		return dao.update(vo);
	}

	public int delete(int service_question_number) {
		return dao.delete(service_question_number);
	}

	public Service_questionVo next(int service_question_number) {
		return dao.next(service_question_number);
	}

	public Service_questionVo prev(int service_question_number) {
		return dao.prev(service_question_number);
	}

}
