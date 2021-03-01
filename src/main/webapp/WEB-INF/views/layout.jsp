<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ConnecTrip</title>

<link rel="shortcut icon" href="/tour/resources/mainimg/domain.png" type="image/x-icon">
<link rel="icon" href="/tour/resources/mainimg/domain.png" type="image/x-icon">

<script src="https://kit.fontawesome.com/174a2d5b3b.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/tour/resources/css/tourSelect.css">
<link rel="stylesheet" type="text/css" href="/tour/resources/css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>
<body>
<div id="wrap">
	<div id="header" style="display:inline-block">
		<tiles:insertAttribute name="header"/>
	</div>
	<br><br><br><br><br>
	<div id="content" style="display:inline-block">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id="footer" style="display:inline-block">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>
</body>
</html>