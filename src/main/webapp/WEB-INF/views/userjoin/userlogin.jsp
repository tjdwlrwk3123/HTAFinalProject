<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div>
<form:form action="/tour/loginCheck" method="post" id="loginform">
	<table align="center">
		<tr>
			<td colspan="4" align="center">회원 로그인</td>
		</tr>
		<tr>
			<td colspan="1">아이디</td>
			<td colspan="3"><input type="text" name="user_id" id="id"></td>
		</tr>
		<tr>
			<td colspan="1">비밀번호</td>
			<td colspan="3"><input type="password" name="user_pass" id="pwd"></td>
		</tr>
		<tr>
		    <td colspan="4" align="center"><input type="button" value="로그인" id="loginBtn"></td>
		</tr>
		<tr >
		    <td colspan="4" align="center">
		        <input type="button" value="아이디 찾기" id="findidBtn">
		        <input type="button" value="비밀번호 찾기" id="findpwdBtn">
		      </td>
		    
		</tr>
	</table>
</form:form>
</div>

<script>
	$("#loginBtn").click(function(){
		var id = $("#id").val();
		var pwd = $("#pwd").val();
		if(id==""){
			alert("아이디를 입력해주세요");
			return;
		}else if(pwd==""){
			alert("비밀번호를 입력해주세요");
			return;
		}else{
			$("#loginform").submit();
		}
	});
</script>