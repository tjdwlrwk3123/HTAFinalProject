package com.spring.tour.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.ChatDao;
import com.spring.tour.vo.ChatVo;



@Service
public class ChatService {
	@Autowired
	private ChatDao dao;
	
	public ChatVo check(String username) {
		return dao.check(username);
	}
	public ChatVo getOne() {
		return dao.getOne();
	}
	
	public int isUsing(String username) {
		return dao.isUsing(username);
	}
	
	public int isWaiting(String username) {
		return dao.isWaiting(username);
	}
	
	public String newone() {
		System.out.println("锚辑厚胶 积己");
		return "chatService 积己";
	}
}
