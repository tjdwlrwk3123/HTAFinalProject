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
		<td>서비스문의제목</td><td>${vo.service_title}</td>
	</tr>
		<tr>
		<td>문의내용</td><td><div style='width:300px;height:300px;'>${vo.service_question_content}</div></td>
	</tr>
		<tr>
		<td>작성날짜</td><td>${vo.service_question_date}</td>
	</tr>
		<tr>
		<td>다음문의글</td><td><a href='${cp}/service_question/detail?service_question_number=${next.service_question_number}'>${next.service_title}</a></td>
	</tr>
		<tr>
		<td>이전문의글</td><td><a href='${cp}/service_question/detail?service_question_number=${prev.service_question_number}'>${prev.service_title}</a></td>
	</tr>
</table>
</body>
</html>