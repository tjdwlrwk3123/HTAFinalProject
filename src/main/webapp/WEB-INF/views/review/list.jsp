<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css);
/*styling star rating*/
.rating{
	border: none;
	float: left;
}
.rating > input{
	display: none;
}
.rating > label:before{
	content: '\f005';
	font-family: FontAwesome;
	margin: 5px;
	font-size: 1.5rem;
	display: inline-block;
	cursor: pointer;
}
.rating > .half:before{
	content: '\f089';
	position: absolute;
	cursor: pointer;
}
.rating > label{
	color: #ddd;
	float: right;
	cursor: pointer;
}
.rating > input:checked ~ label,
.rating:not(:checked) > label:hover, 
.rating:not(:checked) > label:hover ~ label{
	color: #2ce679;
}

.rating > input:checked + label:hover,
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label,
.rating > input:checked ~ label:hover ~ label{
	color: #2ddc76;
}
</style>
</head>
<body>
<h1>리뷰목록</h1>
<table border="1" width="500">
	<tr>
		<th>리뷰번호</th>
		<th>서비스고유번호</th>
		<th>카테고리번호</th>
		<th>작성일자</th>
		<th>작성자</th>
		<th>별점</th>
		<th>리뷰제목</th>
		<th>리뷰내용</th>
		<th>삭제</th>
		<th>수정</th>
		<th>보기</th>
	</tr>
	<c:forEach var="vo" items="${list}">
	<tr>
		<td>${vo.review_number}</td>
		<td>${vo.service_number}</td>
		<td>${vo.cate_number}</td>
		<td>${vo.review_date}</td>
		<td>${vo.user_id}</td>
		<!-- ${vo.star_point} -->
		<td>
					<c:choose>
						<c:when test="${vo.star_point eq 0}">
							☆☆☆☆☆
						</c:when>
						<c:when test="${vo.star_point eq 1}">
							★☆☆☆☆
						</c:when>
						<c:when test="${vo.star_point eq 2}">
							★★☆☆☆
						</c:when>
						<c:when test="${vo.star_point eq 3}">
							★★★☆☆
						</c:when>
						<c:when test="${vo.star_point eq 4}">
							★★★★☆
						</c:when>
						<c:when test="${vo.star_point eq 5}">
							★★★★★
						</c:when>
					</c:choose>
		</td>
		
		
		<td>${vo.review_title}</td>
		<td>${vo.review_content}</td>
		<td><a href="${cp}/review/delete?review_number=${vo.review_number}">삭제</a></td>
		<td><a href="${cp}/review/update?review_number=${vo.review_number}">수정</a></td>
		<td><a href="${cp}/review/detail?review_number=${vo.review_number}">보기</a></td>
	</tr>
	</c:forEach>
</table>
<div>
	<c:forEach var="i" begin="${pu.startPageNum}" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${i==pu.pageNum}">
			<a href="${cp}/review/list?pageNum=${i}&field=&{field}&keyword=${keyword}"><span style='color:green'>[${i}]</span></a>
			</c:when>
			<c:otherwise>
			<a href="${cp}/review/list?pageNum=${i}&field=&{field}&keyword=${keyword}"><span style='color:skyblue'>[${i}]</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>
<a href="${cp}/review/list">전체글보기</a><br>
<a href="${cp}/">home</a>
<div>
	<form method="post" action="${cp}/customercenter_answer/list">
	
		<select name="field"> 
			<option value="answer_title" <c:if test="${field=='title'}">selected</c:if>>제목</option>
		</select> 
		<input type="text" name="keyword" value="${keyword}">
		<input type="submit" value="검색">
	</form>
</div>
</body>
</html>