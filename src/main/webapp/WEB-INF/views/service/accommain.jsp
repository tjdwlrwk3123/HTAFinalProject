<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div>
		<ul>
			<li><a href="/accommain">숙소서비스</a></li>
			<li><a href="/tourmain">투어서비스</a></li>
		</ul>
	</div>
	<div>
		<table>
			<tr>
				<th>서비스이름</th>
				<th>옵션</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td><a href="/accomservice?accom_service_number=${vo.accom_service_number }">${vo.accom_name }</a></td>
					<td><a href="/accomoption?accom_service_number=${vo.accom_service_number }">옵션</a></td>
					<td><a href="/accomupdate?accom_service_number=${vo.accom_service_number }">수정</a></td>
					<td><a href="/accomdelete?accom_service_number=${vo.accom_service_number }&cate_number=${vo.cate_number }">삭제</a></td>
				</tr> 
			</c:forEach>
		</table>
	</div>
	<div>
		<a href="/accominsert">서비스추가</a>
	</div>
</div>