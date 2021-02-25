<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>고객센터답변목록</h1>
<table border="1" width="500">
	<tr>
		<th>답변번호</th>
		<th>문의번호</th>
		<th>작성자</th>
		<th>답변제목</th>
		<th>답변일</th>
		<th>삭제</th>
		<th>수정</th>
		<th>보기</th>
	</tr>
	<c:forEach var="vo" items="${list}">
	<tr>
		<td>${vo.service_answer_number}</td>
		<td>${vo.service_question_number}</td>
		<td>${vo.user_id}</td>
		<td>${vo.service_answer_title}</td>
		<td>${vo.service_answer_date}</td>
		<td><a href="${cp}/service_answer/delete?service_answer_number=${vo.service_answer_number}">삭제</a></td>
		<td><a href="${cp}/service_answer/update?service_answer_number=${vo.service_answer_number}">수정</a></td>
		<td><a href="${cp}/service_answer/detail?service_answer_number=${vo.service_answer_number}">보기</a></td>
	</tr>
	</c:forEach>
</table>
<div>
	<c:forEach var="i" begin="${pu.startPageNum}" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${i==pu.pageNum}">
			<a href="${cp}/service_answer/list?pageNum=${i}&field=&{field}&keyword=${keyword}"><span style='color:green'>[${i}]</span></a>
			</c:when>
			<c:otherwise>
			<a href="${cp}/service_answer/list?pageNum=${i}&field=&{field}&keyword=${keyword}"><span style='color:skyblue'>[${i}]</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>
<a href="${cp}/service_answer/list">전체글보기</a><br>
<a href="${cp}/">home</a>
<div>
	<form method="post" action="${cp}/service_answer/list">
	
		<select name="field"> 
			<option value="service_answer_title" <c:if test="${field=='title'}">selected</c:if>>제목</option>
		</select> 
		<input type="text" name="keyword" value="${keyword}">
		<input type="submit" value="검색">
	</form>
</div>
</body>
</html>