<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
		<button type="button" id="nomal">일반 회원 가입</button><br>
		<button type="button" id="partner">파트너 회원 가입</button><br>
		<button type="button" id="kakao">카카오 아이디로 회원 가입</button>
</div>

<script type="text/javascript">
	$("#nomal").click(function(e){
		location.href="/tour/gojoin?usertype=member";
	});
	
	$("#partner").click(function(e){
		location.href="/tour/gojoin?usertype=partner";
	});
	
	$("#kakao").click(function(e){
		location.href="https://kauth.kakao.com/oauth/authorize?client_id=1f17a34c3d9a0bc7805ae2a78679576f&redirect_uri=http://localhost:8081/tour/kakaologin&response_type=code"
	})
	
</script>