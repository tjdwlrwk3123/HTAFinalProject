<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<div style="display: inline-block;">
	<input type="text" id="search">
</div>
<div style="display: inline-block;">
	날짜<input type="text" id="d1" readonly="readonly" size="10">~
	<input type="text" id="d2" readonly="readonly" size="10">
</div>
<div style="display: inline-block;">
	<div id="numCount">1명</div>
	<div id="changeCount" style="width: 400px; display: none; background-color: pink;"></div>
</div>


<script type="text/javascript">
	$("#numCount").toggle(function(){
		$("#changeCount").css("display","block");
		
	});
	$("#d1").datepicker({
		dateFormat:'yy/mm/dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true,
		minDate:0,
		maxDate:"1M",
		showAnim:"toggle",
		onClose: function(selectedDate) {
			var nextDay=new Date(selectedDate);
			nextDay.setDate(nextDay.getDate()+1);
			var nextTwo=new Date(selectedDate);
			nextTwo.setDate(nextTwo.getDate()+14);
			$("#d2").datepicker("option","minDate",nextDay);
			$("#d2").datepicker("option","maxDate",nextTwo);
		}
	});
	$("#d2").datepicker({
		dateFormat:'yy/mm/dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true,
		minDate:0,
		showAnim:"toggle"
	});
</script>
</body>
</html>