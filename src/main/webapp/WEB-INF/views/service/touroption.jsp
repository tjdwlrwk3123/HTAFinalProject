<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div>
		<ul>
			<li><a href="${cp }/accommain">숙소서비스</a></li>
			<li><a href="${cp }/tourmain">투어서비스</a></li>
		</ul>
	</div>
	<div>
		<table>
			<tr>
				<th>옵션번호</th>
				<th>옵션</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.tour_option_index }</td>
					<td>${vo.tour_option }</td>
					<td><a href="${cp }/touroptionupdate?tour_option_number=${vo.tour_option_number }">수정</a></td>
					<td><a href="${cp }/touroptiondelete?service_number=${service_number }&tour_option_number=${vo.tour_option_number }">삭제</a></td>
				</tr> 
			</c:forEach>
		</table>
	</div>
	<div>
		<a href="${cp }/touroptioninsert?service_number=${service_number }">옵션추가</a>
	</div>
</div>