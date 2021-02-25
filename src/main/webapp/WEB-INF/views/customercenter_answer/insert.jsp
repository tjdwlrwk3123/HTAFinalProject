<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터등록페이지.</title>
</head>
<body>
<h1>글등록</h1>
<form method="post" action="${cp }/customercenter_answer/insert">
작성자아이디<br>
		<input type="text" name="user_id"> <!--<input type="text" name="user_id" value="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}"/> 로그인했을때는 이렇게 처리. -->
		<br>
		문의번호
		<input type="text" name="question_number">
		<br>
		답변제목<br>
		<input type="text" name="answer_title">
		<br>
		답변내용<br>
		<textarea rows="5" cols="100" name="answer_content"></textarea><br>
		<input type="submit" value="답변글등록">
</form>
</body>
</html>