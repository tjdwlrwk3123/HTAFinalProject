<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div>
	<ul>
		<li><a href="${cp }/userinfopage">유저정보</a></li>
		<li><a href="${cp }/usercoupon">쿠폰 내역</a></li>
		<li><a href="${cp }/wishlist">위시리스트</a></li>
	</ul>
</div>
<div>
	<table align="center">
		<tr>
			<td colspan="7" align="center">회원 정보</td>
		</tr>
		<tr>
			<td align="left">이름 : </td>
			<td colspan="6">${vo.user_name }</td>
		</tr>
		<tr>
			<td align="left">전화번호 : </td>
			<td colspan="6">${vo.user_phone }</td>
		</tr>
		<tr>
			<td align="left">주소 : </td>
			<td colspan="6">${vo.user_addr }</td>
		</tr>
		<tr>
			<td align="left">메일 : </td>
			<td colspan="6">${vo.user_email }</td>
		</tr>
		<tr>
			<td align="left">포인트 : </td>
			<td colspan="6">${vo.user_point }</td>
		</tr>
		<tr>
			<td colspan="7"><button type="button" onclick="location.href='${cp}/changeuserinfopage'">정보변경</button></td>
		</tr>
	</table>
</div>
