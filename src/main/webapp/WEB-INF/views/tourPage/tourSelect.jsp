<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/174a2d5b3b.js" crossorigin="anonymous"></script>




<!-- 데이트피커 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link rel="stylesheet" type="text/css" href="${cp }/resources/css/tourSelectCss.css">

<div id="tourSelect_wrapper">
	
	<div id="filterbox">
		<h3>카테고리</h3>
		<div id="type">
			<input type="hidden" id="user_id" value="${sessionScope.user_id}">
			<input type="hidden" id="tourType" value="${tourType}">
			<ul>
				<li><a href="javascript:cateChange(0);" <c:if test='${tourType==0}'>style="background-color:gray;"</c:if>>전체</a></li>
				<li><a href="javascript:cateChange(1);" <c:if test='${tourType==1}'>style="background-color:gray;"</c:if>>티켓/패스</a></li>
				<li><a href="javascript:cateChange(2);" <c:if test='${tourType==2}'>style="background-color:gray;"</c:if>>테마파크</a></li>
				<li><a href="javascript:cateChange(3);" <c:if test='${tourType==3}'>style="background-color:gray;"</c:if>>취미/클래스</a></li>
				<li><a href="javascript:cateChange(4);" <c:if test='${tourType==4}'>style="background-color:gray;"</c:if>>맛집</a></li>
			</ul>
		</div>
		<div id="filter">
			<button onclick="clearFilter();" id="clear">필터초기화</button><br>
			<p>조회기간</p>
			<input type="text" id="from" placeholder="시작일 지정" size="10" onchange="dateChange();"><br> <!-- 유효기간 + 티켓 갯수 남은애들 -->
			<input type="text" id="to" placeholder="마지막날 지정" size="10" onchange="dateChange();"><br>
			<input type="radio" name="starPoint" id="starDefault" onclick="starChange(this.value)" value='0' checked="checked" >전체<br> <!-- 평균 별점 갯수 + 티켓개수 남은애들 -->
			<input type="radio" name="starPoint" onclick="starChange(this.value)" value='4.5'>별5개 만<br>
			<input type="radio" name="starPoint" onclick="starChange(this.value)" value='4'>별4개 이상<br>
			가격대<br> <!-- 가격대 + 티켓개수 남은애들 -->
			<input type="range" id="price_range" step="1000" onchange="rangeChange(this.value)"><br> <!-- 숫자 보여주고 -->
			<span id="showRange"></span>
		</div>
	</div>
	<div id="contentbox">
		<div id="option">
			<input type="text" placeholder="검색어 입력" id="keyword"><button id="btn1" onclick="search()">검색</button>
			<input type="hidden" id="classification">
			<a href="javascript:orderChange(1);"<c:if test='${classification==1}'>style="color:gray;"</c:if>>추천순</a>
			<a href="javascript:orderChange(2);"<c:if test='${classification==2}'>style="color:gray;"</c:if>>리뷰많은순</a>
			<a href="javascript:orderChange(3);"<c:if test='${classification==3}'>style="color:gray;"</c:if>>가격낮은순</a>
			<a href="javascript:orderChange(4);"<c:if test='${classification==4}'>style="color:gray;"</c:if>>가격높은순</a>
		</div>
		<div id="content">
		</div>
	</div>

<script>
	var MAXPRICE = 0;
	
	$(document).ready(function(){
		var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="${cp}/resources/gimgs/viewLoading.gif" />').appendTo(document.body).hide();
		$(window)	
		.ajaxStart(function(){
		loading.show();
		})
		.ajaxStop(function(){
		loading.hide();
		});
		
		$("#from").datepicker('setDate','today');
		$("#to").datepicker('setDate','+1M');
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		
		var tourType=$("#tourType").val();
		
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"tourType" : tourType
		}
		console.log(tourType);
		initialPage(param);
		
	});
	function search(){
		var keyword = $("#keyword").val();
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"keyword" : keyword
		}
		initialPage(param);		
	}
	document.getElementById("keyword").addEventListener("keyup", function(e) {
		if(e.keyCode==13){
			search();
		}
	}, false);
	
	function dateChange(){
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		var tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		if(document.getElementById("classification").value!=null){
			classification= document.getElementById("classification").value;
		}
		var targetPoint = $("input:radio[name=starPoint]:checked").val();
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": targetPoint,
				"targetPrice": targetPrice,
				"keyword": keyword
		}
		initialPage(param);
	}
	
	
	function cateChange(tourType){ // 필터 항상 초기화 
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"tourType": tourType
		}
		initialPage(param);
	}
	
	function orderChange(classification){ // 정렬 순서 변할때 
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		var tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		var targetPoint = $("input:radio[name=starPoint]:checked").val();
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": targetPoint,
				"targetPrice": targetPrice,
				"keyword": keyword
		}
		initialPage(param);
	}
	
	function starChange(val){ // 별점 선택 기준 변할때 
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		var tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		if(document.getElementById("classification").value!=null){
			classification= document.getElementById("classification").value;
		}
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": val,
				"targetPrice": targetPrice,
				"keyword": keyword
		}
		initialPage(param);
	}
	
	function rangeChange(val){//레인지 변할때 
		$("#price_range").val(val);
		$("#showRange").html($("#price_range").prop("min")+"원  ~ "+ $("#price_range").val()+"원");
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		var tourType="0";
		
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		var classification="0";
		if(document.getElementById("classification").value!=null){
			classification= document.getElementById("classification").value;
		}
		var targetPoint = $("input:radio[name=starPoint]:checked").val();
		var keyword = $("#keyword").val();
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": targetPoint,
				"targetPrice": val,
				"keyword": keyword
		}
		initialPage(param);
		
	}
	
	function initialPage(param){
		$.getJSON('${cp}/tourSelectList', param, function(data){
			$("#content").empty();
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-4'>";
			$("#tourType").val(param.tourType);
			
			let minprice= data.minprice;
			let maxprice= data.maxprice;
			
			let targetPrice = maxprice;
			if(data.targetPrice!=0){
				targetPrice=data.targetPrice;
			}
			if(MAXPRICE!=0){
				$("#price_range").prop({"min":minprice,"max":MAXPRICE,"value":targetPrice});
			}else{
				$("#price_range").prop({"min":minprice,"max":maxprice,"value":targetPrice});
			}
			$("#showRange").html(minprice+"원  ~ "+ $("#price_range").val()+"원");
			
			for(let i=0; i<data.list.length; i++){
				let cate_number= data.list[i].cate_number;
				let service_number= data.list[i].service_number;
				let imgsavename= data.list[i].imgsavename;
				let tour_name= data.list[i].tour_name;
				let tourType= data.list[i].tour_type;
				let avgpoint= Math.round(data.list[i].avgpoint);
				let tour_price= data.list[i].tour_price;
				let rcnt= data.list[i].rcnt;
				var stars = "";
				for(let k=0; k<avgpoint; k++){
					stars+="<i class='fas fa-star'></i>";
				}
				for(let l=0; l<5-avgpoint; l++){
					stars+="<i class='far fa-star'></i>";
				}
				str+= "<div class='col mb-4'>"+
					"<div class='card h-100 mx-auto' style='width: 12rem;'>"+
				   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
				   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
				 	 "<img src='${cp}/resources/images/"+imgsavename+"' class='card-img-top' onclick='move(event)' alt='"+tour_name+"'>"+
				 	  "<div class='card-body'>"+
				   		 "<h5 class='card-title'>"+tour_name+"</h5><br>"+
				   		 "<div class='bottomline'>"+
				   		 "<p>"+tourType+"</p>"+
				   		 stars+"&nbsp;("+rcnt+")<br>"+
				   		 "<p>"+tour_price+"원/명</p>"+
				   		 "</div>"+
			 		 "</div>"+
			 		 "</div>"+
		 		 "</div>"
			}
			str+="</div>";
			$("#content").append(str);
		});
		MAXPRICE= $("#price_range").prop("max");
	}
	
	function clearFilter(){
		$("#from").datepicker('setDate','today');
		$("#to").datepicker('setDate','+1M');
		var startDate=$("#from").val();
		var endDate=$("#to").val();
		var tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		$("#price_range").val(MAXPRICE);
		$("#showRange").html($("#price_range").prop("min")+"원  ~ "+ $("#price_range").val()+"원");
		var param={
				"startDate" : startDate,
				"endDate" : endDate,
				"tourType":tourType
		}
		$("#starDefault").prop("checked","checked");
	}


	
	$("#from").datepicker({
		dateFormat:'yy-mm-dd',
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
			nextTwo.setDate(nextTwo.getDate()+21);
			$("#to").datepicker("option","minDate",nextDay);
			$("#to").datepicker("option","maxDate",nextTwo);
		}
	});
	$("#to").datepicker({
		dateFormat:'yy-mm-dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true,
		minDate:0,
		showAnim:"toggle"
	});
	
	
	
	function move(e){
		var user_id=$("#user_id").val();
		var cate_number=parseInt(e.target.previousSibling.previousSibling.value);
		var service_number=parseInt(e.target.previousSibling.value);
		console.log(cate_number+"//"+service_number);
		
		window.location.href="${cp}/tourDetail?user_id="+user_id+"&cate_number="+cate_number+"&service_number="+service_number;
	}
</script>
</div>
