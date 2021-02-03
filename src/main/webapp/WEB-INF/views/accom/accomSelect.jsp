<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#adultNum{
		-ms-user-select: none;
		-moz-user-select: -moz-none; 
		-webkit-user-select: none; 
		-khtml-user-select: none; 
		user-select:none;
	}
	#changeCount div{
		-ms-user-select: none;
		-moz-user-select: -moz-none; 
		-webkit-user-select: none; 
		-khtml-user-select: none; 
		user-select:none;
	}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>
<body>



<div style="width: 800px; height: 60px; background-color: #E4F7BA;">
<div style="display: inline-block;">
	<input type="text" id="search">
</div>
<div style="display: inline-block;">
	날짜<input type="text" id="d1" readonly="readonly" size="10">~
	<input type="text" id="d2" readonly="readonly" size="10">
</div>
<div style="display: inline-block;">
	<div id="numCount" name="nCount">
	<span id="totCount" name="nCount">1명</span>
	</div>
	<div id="changeCount" name="nCount" style="width: 200px; display: none; background-color: pink;">
		인원<br><br>
		<div name="nCount">성인
			<i class="fas fa-minus-circle fa-2x" name="nCount" id="minCount"
			style="color: #B2EBF4;"></i>
			<span id="adultNum" name="nCount">1명</span>
			<i class="fas fa-plus-circle fa-2x" name="nCount" id="plusCount"
			style="color: #B2EBF4;"></i>
		</div>
	</div>
</div>
<input type="button" value="검색" id="searchAccom">
</div>
<br>
<div>
<input type="checkbox" name="fck" value="수영장">수영장<br>
<input type="checkbox" name="fck" value="바베큐장">바베큐장<br>
<input type="checkbox" name="cck" value="wifi">wifi<br>
</div>
<input type="range">
<div id="accom">
	
</div>


<script type="text/javascript">
var acnt=1; //어른 인원수
var totcnt=1; //총 인원수
var facility=[]; //시설 배열
var conven=[]; //편의서비스 배열
var finCount=
	$(document).ready(function(){
		getlist();
		$("#d1").datepicker('setDate','today');
		$("#d2").datepicker('setDate','+1D');
	});
	$("#searchAccom").click(function(){
		$("input[type='checkbox']").prop("checked",false);
		$("#totCount").text();
		$("#d1").val();
		$("#d2").val();
		
	});
	$("input[type='checkbox']").click(function(){
		
		 $("input[name='fck']:checked").each(function(i){ //시설에 체크된 리스트 저장
             facility.push($(this).val());
         });
		 $("input[name='cck']:checked").each(function(i){ //편의서비스에 체크된 리스트 저장
             conven.push($(this).val());
         });
		 var facilityMap= {
				 "startDate" : startDate,
				 "endDate" : endDate,
				 "totcnt" : totcnt,
				 "facility" : facility,
				 "conven" : conven
		 }
		 getlist(facilityMap);
		 console.log(facilityMap);
		 
	});
	function getlist(param){
		$.getJSON('${cp}/accomSelect_list',param, function(data) {
			
			for(let i=0;i<data.list.length;i++){
				var accomName=data.list[i].accom_name;
				var price=data.price[i].MINP;
				console.log(accomName);
				console.log(price);
			}
		});
	}
	
	$("#plusCount").click(function(){
		if(!(acnt>=14)){
			acnt++;
			totcnt++;
		}
		$("#adultNum").text(acnt+"명");
		$("#totCount").text(totcnt+"명");
	});
	$("#minCount").click(function(){
		if(!(acnt<=1)){
			acnt--;
			totcnt--;
		}
		$("#adultNum").text(acnt+"명");
		$("#totCount").text(totcnt+"명");
	});
	$("#numCount").click(function(){
		$("#changeCount").slideToggle(200);
	});
	$('html').click(function(e){
		if(!$(e.target).is("[name='nCount']")){
			$("#changeCount").slideUp(200);
		}
	});
	$("#d1").datepicker({
		dateFormat:'yy/mm/dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true,
		minDate:0,
		maxDate:"2M",
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