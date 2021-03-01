<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<ul>
		<li><a href="${cp }/userinfopage">유저정보</a></li>
		<li><a href="${cp }/usercoupon">쿠폰 내역</a></li>
		<li><a href="${cp }/wishlist">위시리스트</a></li>
		<li><a href="${cp }/accomBookingCheck">예약내역</a></li>
	</ul>
</div>
<div>
	<form action="${cp }/changeuserinfopage" method="post">
		<p>비밀번호 확인</p>
		<input type="password" name="pwd"><br>
		<input type="submit" value="비밀번호 확인">
	</form>
</div>