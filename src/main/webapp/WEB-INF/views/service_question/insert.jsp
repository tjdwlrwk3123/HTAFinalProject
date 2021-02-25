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
<form method="post" action="${cp }/service_question/insert">
		작성자아이디<br>
		<input type="text" name="user_id"> <!--<input type="text" name="user_id" value="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}"/> 로그인했을때는 이렇게 처리. -->
		<br>
		서비스고유번호입력or선택 옵션값으로<br>
		<input type="text" name="service_number">
		<br>
		서비스문의제목<br>
		<input type="text" name="service_title">
		<br>
		서비스문의내용<br>
		<textarea rows="5" cols="100" name="service_question_content"></textarea><br>
		<input type="submit" value="문의글등록">
		카테고리번호선택<br>
		<input type="text" name="cate_number">
		<br>
</form>
</body>
</html>