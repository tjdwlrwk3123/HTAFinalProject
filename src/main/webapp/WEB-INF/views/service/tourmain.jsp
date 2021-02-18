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
				<th>서비스이름</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="vo" items="${list }">
				<tr>
					<td><a href="${cp }/tourservice?service_number=${vo.service_number }">${vo.tour_name }</a></td>
					<td><a href="${cp }/tourupdate?service_number=${vo.service_number }">수정</a></td>
					<td><a href="${cp }/tourdelete?service_number=${vo.service_number }">삭제</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<a href="${cp }/tourinsert">서비스추가</a>
	</div>
</div>