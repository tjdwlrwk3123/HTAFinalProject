package com.spring.tour.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class LoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		List<String> roleNames=new ArrayList();
		for(GrantedAuthority auth:authentication.getAuthorities()) {
			roleNames.add(auth.getAuthority());
		}
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect(request.getContextPath()+"/admin");
		}else if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect(request.getContextPath()+"/member");
		}else if(roleNames.contains("ROLE_PARTNER")) {
			response.sendRedirect(request.getContextPath()+"/partner");
		}else {
			response.sendRedirect(request.getContextPath()+"/");
		}
	}
}
