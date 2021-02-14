package com.spring.tour.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.spring.tour.vo.IdTokenVo;

public class MemberUserDetail implements UserDetails{
	private String user_id;
	private String user_pass;
	private String user_condition;
	private List<IdTokenVo> authoList;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> auths= new ArrayList<GrantedAuthority>();
		for(IdTokenVo vo:authoList) {
			auths.add(new SimpleGrantedAuthority(vo.getToken_authority()));
		}
		return auths;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return user_pass;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return user_id;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
	
	
}
