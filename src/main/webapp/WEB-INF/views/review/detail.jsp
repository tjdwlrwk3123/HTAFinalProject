<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="500">
	<tr>
		<td>작성자</td><td>${vo.user_id}</td>
	</tr>
	<tr>
		<td>리뷰번호</td><td>${vo.review_number}</td>
	</tr>
		<tr>
		<td>리뷰제목</td><td>${vo.review_title}</td>
	</tr>
	<tr>
		<td>별점</td><td>${vo.star_point}</td>
	</tr>
		<tr>
		<td>리뷰내용</td><td><div style='width:300px;height:300px;'>${vo.review_content}</div></td>
	</tr>
		<tr>
		<td>작성날짜</td><td>${vo.review_date}</td>
	</tr>
	<tr>
		<td>사진넣을곳임</td><td></td>
	</tr>
	
		<tr>
		<td>다음문의글</td><td><a href='${cp}/review/detail?review_number=${next.review_number}'>${next.review_title}</a></td>
	</tr>
		<tr>
		<td>이전문의글</td><td><a href='${cp}/review/detail?review_number=${prev.review_number}'>${prev.review_title}</a></td>
	</tr>
</table>
</body>
</html>