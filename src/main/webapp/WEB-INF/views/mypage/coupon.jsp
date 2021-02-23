<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<a href="${cp }/userinfopage">유저정보</a>
<a href="${cp }/usercoupon">쿠폰 내역</a>

<h1>쿠폰</h1>
<table border="1" width="500">
	<tr>
		<th>쿠폰이름</th>
		<th>유효기간</th>
		<th>할인금액</th>
	</tr>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.num }</td>
			<td>${vo.writer }</td>
			<td><a href="${cp }/select?num=${vo.num }">${vo.title }</a></td>
		</tr>
	</c:forEach>
</table>
<div>
	<c:if test="${pu.startPageNum>1 }">
		<a href="${cp }?pageNum=${pu.startPageNum-1}"><span style='color:gray'>[이전]</span></a>
	</c:if>
	<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${i==pu.pageNum }">
				<a href="${cp }?pageNum=${i}"><span style='color:blue'>[${i }]</span></a>
			</c:when>
			<c:otherwise>
				<a href="${cp }?pageNum=${i}"><span style='color:gray'>[${i }]</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${pu.totalPageCount>pu.endPageNum }">
		<a href="${cp }?pageNum=${pu.endPageNum+1}"><span style='color:gray'>[다음]</span></a>
	</c:if>
</div>