<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout.jsp</title>
<script src="https://kit.fontawesome.com/174a2d5b3b.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/tour/resources/css/tourSelect.css">
<link rel="stylesheet" type="text/css" href="/tour/resources/css/main.css">
<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>

</head>
<body>
<div id="wrap">
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>
</body>
</html>