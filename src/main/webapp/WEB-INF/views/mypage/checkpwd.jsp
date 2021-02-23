<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<a href="${cp }/userinfopage">유저정보</a>
	<a href="${cp }/usercoupon">쿠폰 내역</a>
	<form action="${cp }/changeuserinfopage" method="post">
		<p>비밀번호 확인</p>
		<input type="password" name="pwd"><br>
		<input type="submit" value="비밀번호 확인">
	</form>
</div>