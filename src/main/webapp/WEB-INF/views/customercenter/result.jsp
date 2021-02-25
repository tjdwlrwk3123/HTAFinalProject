<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${code=='성공'}">
			<h2>성공</h2>
		</c:when>
		<c:otherwise>
			<h2>성공2</h2>
		</c:otherwise>
</c:choose>
<a href="${cp}/">home</a>
</body>
</html>