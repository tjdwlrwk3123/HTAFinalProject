<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <div>
    	${sessionScope.token }
    	<a href="https://kauth.kakao.com/oauth/logout?client_id=1f17a34c3d9a0bc7805ae2a78679576f&logout_redirect_uri=http://localhost:8081/tour/kakaologout">카카오 로그아웃</a>
    </div>