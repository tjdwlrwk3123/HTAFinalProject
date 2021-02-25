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
<h1>글수정</h1>
<form method="post" action="${cp }/service_answer/update">
		글번호 <input type="text" name="service_answer_number" value="${vo.service_answer_number}" readonly="readonly"><br>
		작성자아이디<br>
		<input type="text" name="user_id" value="${vo.user_id}" readonly="readonly"> 
		<!--<input type="text" name="user_id" value="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}"/> 로그인했을때는 이렇게 처리. -->
		<br>
		문의제목<br>
		<input type="text" name="service_answer_title" value="${vo.service_answer_title}">
		<br>
		문의내용<br>
		<textarea rows="5" cols="100" name="service_answer_content">${vo.service_answer_content}</textarea><br>
		수정일<input type="text" value="${vo.service_answer_date}" readonly="readonly">
		<input type="submit" value="문의글등록">
</form>
</body>
</html>