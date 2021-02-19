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

<style>

*{
	margin:0;
	padding:0;
	box-sizing: border-box;
	text-decoration: none;
	list-style: none;
	
}
#tourSelect_wrapper {
	width: 1000px;
	margin: auto;
	display : flex;
	background-color: #FFCA6C;
}
a{
	color:black;
	font-weight:500;
}
a:hover{
	text-decoration:none;
	color:black;
	font-weight:800;
}

#tour_filterbox {
	width: 200px;
	height: 100%;
	background-color: #FFCA6C;
	padding: 30px 0;
}
#tour_filterbox h3{
	text-align:center;
	margin-bottom:20px;	
}

#tour_filterbox ul li{
	padding: 15px;
	border-top: 0.5px solid yellow;
	border-bottom: 0.5px solid yellow;
}

#tour_contentbox {
	width: 85%;
	background-color: #D9E5FF;
	height:auto;
	padding : 10px;
}
#tour_content .card p{
	margin:3px;
}
#tour_content .card:hover{
	border: 2px dotted black;
}


#tour_content div h5{
	margin-top:15px;
	font-weight: 800;
	font-size :24px;
	margin-bottom: 20px;
}
#tour_option{
	text-align: right;
	padding: 10px;
}

#tour_option a{
	padding:15px;	
}

#loading {
	height: 100%;
	width: 100%;
	left: 0px;
	top: 0px;
	position: fixed;
	_position:absolute; 
	filter:alpha(opacity=50);
	-moz-opacity:0.5;
	opacity : 0.5;
}
.loading {
	background-color: white;
	z-index: 199;
}
#loading_img{
	position:absolute; 
	top:50%;
	left:50%;
	height:35px;
	margin-top:-75px;
	margin-left:-75px;	
	z-index: 200;
}


h5{
	margin-top:15px;
	font-weight: 800;
	font-size :24px;
	margin-bottom: 20px;
}
#cardbox div p{
	margin:3px;

}
.heartbox{
		position: absolute;
		bottom:0;
		padding-right:3px;
		margin-bottom:3px;
	 	width: 100%;
	 	text-align: right;
}
.heartbox i{
	right:3px;
	bottom:3px;
}
.discountImg{
		position: absolute;
		top:3px;
		left:3px;
}
.heartImg{
		position: absolute;
		width:25px;
		bottom:3px;
		right:3px;
 	
}
.starImg{
	width:20px;
}

#sorryMsg{
	text-align: center;
}

#sorryMsg p{
	font-size:50px;
	font-weight: 800;
}


</style>

<div id="tourSelect_wrapper">
	<div id="tour_filterbox">
		<h3>카테고리</h3>
		<div id="type">
			<input type="hidden" id="user_id" value="${sessionScope.user_id}">
			<input type="hidden" id="tourType" value="${tourType}">
			<ul>
				<li><a href="javascript:cateChange(0);" <c:if test='${tourType==0}'>style="font-weight: 800;"</c:if>>전체</a></li>
				<li><a href="javascript:cateChange(1);" <c:if test='${tourType==1}'>style="font-weight: 800;"</c:if>>티켓/패스</a></li>
				<li><a href="javascript:cateChange(2);" <c:if test='${tourType==2}'>style="font-weight: 800;"</c:if>>테마파크</a></li>
				<li><a href="javascript:cateChange(3);" <c:if test='${tourType==3}'>style="font-weight: 800;"</c:if>>취미/클래스</a></li>
				<li><a href="javascript:cateChange(4);" <c:if test='${tourType==4}'>style="font-weight: 800;"</c:if>>맛집</a></li>
			</ul>
		</div>
		<div id="filter">
			<button onclick="clearFilter();" value="<img src='${cp }/resources/images/reset.svg'>" id="clear">필터초기화</button><br>
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
	<div id="tour_contentbox">
		<div id="tour_option">
			<input type="text" placeholder="검색어 입력" id="keyword"><button id="btn1" onclick="search()">검색</button>
			<input type="hidden" id="classification">
			<a href="javascript:orderChange(1);"<c:if test='${classification==1}'>style="font-weight: 800;"</c:if>>추천순</a>
			<a href="javascript:orderChange(2);"<c:if test='${classification==2}'>style="font-weight: 800;"</c:if>>리뷰많은순</a>
			<a href="javascript:orderChange(3);"<c:if test='${classification==3}'>style="font-weight: 800;"</c:if>>낮은가격순</a>
			<a href="javascript:orderChange(4);"<c:if test='${classification==4}'>style="font-weight: 800;"</c:if>>높은가격순</a>
		</div>
		<div id="tour_content">
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
			$("#tour_content").empty();
			console.log(data.list.length);
			if(data.list.length==0){
				console.log("yes");
				
				var str = "<div id='sorryMsg'><img src='${cp }/resources/images/sorry.jpg' style='width:500px;'><br>"+
							"<p>Sorry, There is nothing</p><div>";
				$("#tour_content").append(str);
				return;
			}
			
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-3'>"; //첫번째 div
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
			$("#showRange").html(minprice+"원  ~ 최대 "+ $("#price_range").val()+"원");
			
			for(let i=0; i<data.list.length; i++){
				let cate_number= data.list[i].cate_number;
				let service_number= data.list[i].service_number;
				let imgsavename= data.list[i].imgsavename;
				let tour_name= data.list[i].tour_name;
				let tourType= data.list[i].tour_type;
				let avgpoint= data.list[i].avgpoint;
				let tour_price= data.list[i].tour_price;
				let rcnt= data.list[i].rcnt;
				let discount = data.list[i].discount;
				let dcnt = data.list[i].dcnt;
				let user_id = data.list[i].user_id;
				
				
				var fullstars = Math.floor(avgpoint);
				var decimal =  Math.round(avgpoint*10%10);
				var stars ="";
				
				if(avgpoint==0){
					for(let l=0; l<5; l++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>";
					}
				}else{
					for(let k=0; k<fullstars; k++){
						stars+="<img src='${cp }/resources/images/fullStar.svg' class='starImg'>";
					}
					if(decimal>=1 && decimal<3){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>";
					}else if(decimal>=3 && decimal<8 ){
						stars+="<img src='${cp }/resources/images/halfStar.svg' class='starImg'>";
					}else if(decimal>=8){
						stars+="<img src='${cp }/resources/images/fullStar.svg' class='starImg'>";
					}
					for(let l=0; l<5-fullstars-1; l++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>";
					}
				}
				str+="<div class='col mb-4'>"+ //두번째 div
						"<div class='card h-100' style='width: 14rem;'>"+  //3번째 div
						   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
						   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
						 	 "<img src='${cp }/resources/images/"+imgsavename+"' class='card-img-top'  alt='"+tour_name+"' onclick='move(event)'>"+
						 	 "<div class="+tour_name+">"+ //4번째 div
						   		 "<h5 class='card-title'>"+tour_name+"</h5>"+
							   	 "<p class='card-text'>"+tourType+"</p>"+
							   	 "<p class='card-text'>"+stars+"("+rcnt+")"+"</p>";
				if(discount>0){
							str+="<p class='card-text' style='text-decoration:line-through'>옵션최저가 "+tour_price+"원/명</p>"+
								 "<p class='card-text'>할인특가 "+(tour_price-tour_price*discount/100)+"원/명</p>"+
								 "<img src='${cp }/resources/images/discount1.svg' class='discountImg'>";  
				}else if(dcnt>0){
							str+="<p class='card-text'>옵션최저가 "+tour_price+"원/명</p>"+
								 "<p class='card-text'>할인된 옵션이 있습니다</p>"+
								 "<img src='${cp }/resources/images/discount1.svg' class='discountImg'>";
				}else{
							str+="<p class='card-text'>옵션최저가 "+tour_price+"원/명</p>";
				}			   	 
			   	 		str+="</div>";//4번째 div
			   	if(user_id!=null){
					  	 	str +="<div class='heartbox'><img src='${cp }/resources/images/Heart.svg' class='heartImg' onclick='wish(this)' alt='heart'></div>";
			   	}else{
					  	 	str +="<div class='heartbox'><img src='${cp }/resources/images/emptyHRT.svg' class='heartImg' onclick='wish(this)' alt='emptyheart'></div>";
			   	}
				 str+="</div>"+  //3번째 div
				  "</div>";  //두번째 div
			}
			str+="</div>"; //1번째 div
			$("#tour_content").append(str);
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
	
	function wish(img){
		var cate_number= img.parentNode.parentNode.firstChild
		var service_number= cate_number.nextSibling;
		
		if(img.alt=='heart'){
			$.getJSON("${cp}/wishDelete", {"cate_number":cate_number.value,"service_number":service_number.value },
				function(data) {
				let result = data.code;
				if(result=='delete_success'){
					img.src="${cp }/resources/images/brokenHRT.svg"
					img.alt = 'brokenHRT';
				}else if(result=='delete_fail'){
					alert("delete ERROR");
				}
			});
// 			console.log(user_id.value+"/"+cate_number.value+"/"+service_number.value);
		}else if(img.alt=='brokenHRT' ){
			$.getJSON("${cp}/wishInsert", {"cate_number":cate_number.value,"service_number":service_number.value},
				function(data) {
				let result = data.code;
				if(result=='insert_success'){
					img.src="${cp}/resources/images/Heart.svg"
					img.alt = 'heart';
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}else if(img.alt=='emptyheart'){
			$.getJSON("${cp}/wishInsert", {"cate_number":cate_number.value,"service_number":service_number.value},
				function(data) {
				let result = data.code;
				if(result=='insert_success'){
					img.src="${cp }/resources/images/Heart.svg"
					img.alt = 'heart';
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}
	}
	
	
	function move(e){
		var cate_number=parseInt(e.target.previousSibling.previousSibling.value);
		var service_number=parseInt(e.target.previousSibling.value);
		window.location.href="${cp}/tourDetail?cate_number="+cate_number+"&service_number="+service_number;
	}
</script>
</div>
