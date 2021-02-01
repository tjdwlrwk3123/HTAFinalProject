<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<input type="text" id="search"> || 시작 날짜<input type="text" id="d1"> || <span onclick="">1명</span>
<div></div>


<script type="text/javascript">
	$("#d1").datepicker({
		dateFormat:'yy/mm/dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true
	});
</script>
</body>
</html>