package com.spring.tour.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.tour.dao.AuthManageDao;
import com.spring.tour.vo.AuthManageVo;

@Service
public class AuthManageService {
	
	@Autowired
	private AuthManageDao dao;
	
	public List<AuthManageVo> authManageList(){
		return dao.authManageList();
	}
	public List<AuthManageVo> authManageId(String user_id){
		return dao.authManageId(user_id);
	}
	public List<AuthManageVo> authManageStatus(String user_condition){
		return dao.authManageStatus(user_condition);
	}
	public List<AuthManageVo> authManageAuth(String token_authority){
		return dao.authManageAuth(token_authority);
	}
	
	public void authChangeStatus(String user_id,String user_condition) {
		dao.authChangeStatus(user_id, user_condition);
	}
	
	public void authChangeAuth(String user_id,String token_authority) {
		dao.authChangeAuth(user_id, token_authority);
	}
	
}
