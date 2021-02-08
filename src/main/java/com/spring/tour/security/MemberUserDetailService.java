package com.spring.tour.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;



public class MemberUserDetailService implements UserDetailsService{
	@Autowired
	private MemberService service;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		MemberUserDetail userDetail=service.userDetail(username);
		return userDetail;
	}
}
