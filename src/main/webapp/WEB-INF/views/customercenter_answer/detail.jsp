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
		<td>문의번호</td><td>${vo.question_number}</td>
	</tr>
		<tr>
		<td>문의제목</td><td>${vo.answer_title}</td>
	</tr>
		<tr>
		<td>문의내용</td><td><div style='width:300px;height:300px;'>${vo.answer_content}</div></td>
	</tr>
		<tr>
		<td>작성날짜</td><td>${vo.answer_date}</td>
	</tr>
		<tr>
		<td>다음문의글</td><td><a href='${cp}/customercenter_answer/detail?answer_number=${next.answer_number}'>${next.answer_title}</a></td>
	</tr>
		<tr>
		<td>이전문의글</td><td><a href='${cp}/customercenter_answer/detail?answer_number=${prev.answer_number}'>${prev.answer_title}</a></td>
	</tr>
</table>
</body>
</html>