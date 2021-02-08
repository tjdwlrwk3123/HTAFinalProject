<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
		<button type="button" id="nomal">일반 회원 가입</button><br>
		<button type="button" id="partner">파트너 회원 가입</button>
</div>

<script type="text/javascript">
	$("#nomal").click(function(e){
		location.href="/tour/gojoin?usertype=member";
	});
	
	$("#partner").click(function(e){
		location.href="/tour/gojoin?usertype=partner";
	});
	
</script>