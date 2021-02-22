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
<h1>초기화면!</h1>
<a href='${cp }/wishlist?user_id=kaka'>위시리스트</a>
<a href='${cp }/tourMain'>tourMain</a>
<a href='${cp }/tourDetail?user_id=kaka&cate_number=1&service_number=1'>tourDetail</a>
<a href='${cp }/tourSelect?tourType=0'>tourSelect</a>
<a href='${cp }/accomlist'>숙소페이지</a>
<a href="${cp }/accomBookingCheck">예약내역(회원)</a>
<a href="${cp }/couponManage">회원관리(관리자페이지)</a>
<a href='${cp }/userterms'>회원 테스트페이지</a>
<a href='${cp }/adminchat'>관리자 채팅 페이지</a>
<a href='${cp }/AdminMail'>관리자 메일 테스트</a>

<c:choose>
	<c:when test="${empty sessionScope.user_id }">
		<a href='${cp }/userlogin'>로그인 테스트페이지</a>
	</c:when>
	<c:otherwise>
		<h3>${sessionScope.user_id }</h3>
		<a href='${cp }/logout'>로그아웃</a>
		<a href='${cp }/dropUser'>회원 탈퇴</a>
	</c:otherwise>
</c:choose>

<%
	//session.setAttribute("user_id", "kaka");
%>
</body>
</html>