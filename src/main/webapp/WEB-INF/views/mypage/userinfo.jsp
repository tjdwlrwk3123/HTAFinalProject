<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div>
	<a href="${cp }/userinfopage">유저정보</a>
	<a href="${cp }/usercoupon">쿠폰 내역</a>
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
			<td colspan="7"><button type="button" onclick="location.href='${cp}/changeuserinfopage'">정보변경</button></td>
		</tr>
	</table>
</div>
