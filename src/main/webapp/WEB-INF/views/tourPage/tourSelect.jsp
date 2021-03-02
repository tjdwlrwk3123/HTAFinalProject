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

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">

<style>

*{
	margin:0;
	padding:0;
	box-sizing: border-box;
	text-decoration: none;
	list-style: none;
	font-family: 'Stylish', sans-serif;
	
}


#tourSelect_wrapper {
	width: 1500px;
	margin: auto;
	display : flex;
	background-color: white;
	margin-top:-50px;
/* 	드래그방지 */
	-ms-user-select: none;
	-moz-user-select: -moz-none;
	-webkit-user-select: none; 
	-khtml-user-select: none; 
	user-select:none;
	-webkit-user-drag: none;
}

#tour_filterbox {
	width: 200px;
	padding: 30px 0; 
	background-color:#4B70DD;	
	color:white;
}
#tour_filterbox h3:not(i){
	left:10px;
	padding-top: 10px;
	font-size:15px;
	text-align:center;
	margin-bottom:20px;
	font-weight:600;
}
#tour_filterbox h3 i{
	margin-right:10px;
	font-size:30px;
	transform: rotate(-20deg);
	-ms-transform: rotate(-20deg);
	-moz-transform: rotate(-20deg);
	-webkit-transform: rotate(-20deg);
	-o-transform: rotate(-20deg);
	margin-bottom:-10px;
}

#tour_filterbox ul li{
	padding: 20px;
}

#tourTypeSelectBox ul li:not(i){
	text-decoration:none;
	color:white;
}
#tourTypeSelectBox i{
	width:30px;
	margin-right:10px;
	color:#829CE8;
}
#tourTypeSelectBox ul li a:hover i{
	color:white;
}
#tourTypeSelectBox ul li a:hover a{
	color:white;
}
 #tourTypeSelectBox ul li a{ 
	color:white; 
 } 

#tour_contentbox {
	width: 85%;
	background-color: white;
	height:auto;
	padding : 10px;
}
#tour_content .card p{
	margin:3px;
}
#tour_content .card:hover{
	box-shadow: 1px 1px 2px 2px gray;
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
#tour_select_loading_img{
	position:absolute; 
	top:50%;
	left:50%;
	height:100px;
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

.card-img-top{
	width:222px;
	height:170px;
}
.tourSelectHeartBox{
		position: absolute;
		bottom:0;
		padding-right:3px;
		margin-bottom:3px;
	 	width: 100%;
	 	text-align: right;
}
.tourSelectHeartBox i{
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
	vertical-align: -18%;
}

#sorryMsg{
	text-align: center;
}

#sorryMsg p{
	font-size:50px;
	font-weight: 800;
}

.classification:hover{
	font-weight:800; 
} 

#btn1{
	width:45px;
	height:38px;
	background-color:#4B70DD;
}
#searchInput, #btn1{
	margin-top:8px;
}
#keyword{
	border-radius: 25px 0 0 25px;
}
#btn1{
	border-radius: 0 25px 25px 0;
	margin-right:25px;
}
.filterOption{
	margin-left:15px;
	margin-bottom:30px;
}
.filterOption p, input[text]{
	margin-bottom: -20px;
}
#filterTitle{
	padding-left:15px;
	font-size:20px;
	font-weight:800;
}
#clearFilterBtn{
	margin-left: 5px;
	border-radius: 50%;
	border:0px;
	background-color:transparent;
	vertical-align: 5px;
}
#resetBTN{
	color:white;
	width:28px;
	margin:5px;
	vertical-align: -17%;
}
#isDiscount{
	margin-top:30px;
}
#starFilter{
	margin-top: 15px;
}

#starFilter label{
	margin-left:10px;
}

#dateFilter{
	margin-top:15px;
}

#dateFilter input{
	margin-left:15px;
	width:85%;
	border-radius: 25px 25px 25px 25px;
}
#dateFilter span{
	margin-left:15px;
}
#dateFilter label{
	margin-left:10px;
}

#priceFilter{
	margin-top:20px;
}

#priceFilter label{
	margin-left:15px;
	font-weight: 600;
	margin-bottom: 10px;
}
#priceFilter p{
	margin-left:15px;
	font-weight: 600;
	font-size:15px;
	margin-top:0px;
}

#slider-range-max{
	margin-left:15px;
	width:85%;
}


</style>

<div id="tourSelect_wrapper">
	<div id="tour_filterbox">
		<h3><i class="fas fa-laugh-wink"></i>CONNECTRIP</h3>
		<div id="tourTypeSelectBox">
			<input type="hidden" id="user_id" value="${sessionScope.user_id}">
			<input type="hidden" id="tourType" value="${tourType}">
			<ul>
				<li><a href="javascript:cateChange(0);" ><i class="fas fa-globe fa-lg" id="globeIMG"></i>전체</a></li>
				<li><a href="javascript:cateChange(1);" ><i class="fas fa-ticket-alt fa-lg" id="ticketIMG"></i>티켓/패스</a></li>
				<li><a href="javascript:cateChange(2);" ><i class="fab fa-fort-awesome-alt fa-lg" id="themeparkIMG"></i>테마파크</a></li>
				<li><a href="javascript:cateChange(3);" ><i class="fas fa-palette fa-lg" id="paletteIMG"></i>취미/클래스</a></li>
				<li><a href="javascript:cateChange(4);" ><i class="fas fa-utensils fa-lg" id="forkIMG"></i>맛집</a></li>
			</ul>
		</div>
		<div id="filter">
			<div>
				<div id="filterTitle">필터설정<button id="clearFilterBtn" onclick="clearFilter()"><i class="fas fa-undo-alt fa-la" id="resetBTN"></i></button></div>
			</div>
			<span><input type="checkbox" name="isDiscount" id="isDiscount" onclick="discountChange(this)" style="margin-left:15px; margin-top:20px;" ><label for="isDiscount" style="margin-left:10px;">할인 상품만 보기</label></span><br>
			<div id="starFilter" style="margin-left:15px;">
			<input type="radio" name="starPoint" id="starDefault" onclick="starChange(this.value)" value='0' checked="checked" ><label for="starDefault">별점 전체</label><br> <!-- 평균 별점 갯수 + 티켓개수 남은애들 -->
			<input type="radio" name="starPoint" id="starFive" onclick="starChange(this.value)" value='4.5'><label for="starFive">별5개 만</label><br>
			<input type="radio" name="starPoint" id="starFour" onclick="starChange(this.value)" value='4'><label for="starFour">별4개 이상</label><br>
			</div>
			<div id="dateFilter">
				<span class="filterOption"><i class="far fa-calendar-alt"></i><label for="from">일정</label><br>
				<input type="text" id="from" placeholder="시작일 지정" size="10" onchange="dateChange();" style="text-align: center;"></span>
			</div>
			<div id="priceFilter">
				<label for="amount" >MAX PRICE</label><br>
				<p id="amount"  style="border:0; font-weight:bold;"></p>
				<div id="slider-range-max"></div>
			</div>
		</div>
	</div>
	<div id="tour_contentbox">
		<div id="tour_option" style="width:100%;">
			<div class="input-group">
				<div class="form-outline" id="searchInput">
					<input type="search" class="form-control" placeholder="검색어 입력" id="keyword" style="width:270px;">
				</div>
				<button type="button" class="btn btn-primary" id="btn1" onclick="search()">
			   		<i class="fas fa-search"></i>
			  	</button>
				<input type="hidden" id="classification">
			  	<a href="javascript:orderChange(1);" class="classification">추천순</a>
				<a href="javascript:orderChange(2);" class="classification">리뷰많은순</a>
				<a href="javascript:orderChange(3);" class="classification" >낮은가격순</a>
				<a href="javascript:orderChange(4);" class="classification">높은가격순</a>
			</div>
		</div>
		<div id="tour_content">
		</div>
	</div>

<script>
	


	var MAXPRICE=0;
	var isSelected = false;
	var tourType = 0;
	var classification =0;
	$(function(){
		var loading = $('<div id="loading" class="loading"></div><img id="tour_select_loading_img" alt="loading"  src="${cp}/resources/images/Spinner.gif"/>').appendTo(document.body).hide();
		$(window)	
		.ajaxStart(function(){
			loading.show();
		})
		.ajaxStop(function(){
			loading.hide();
		});
				
		//카테고리 0번 , 보여질 순서 0추천순
		$("li:eq(0) a").css({"font-weight":800, "font-size":'18px'});
		$(".classification:eq(0)").css({"font-weight":800, "font-size":'17px'});
		
		$("li a").hover(function(){
			$(this).css({"text-decoration":'none','color':'white'});
			$(this).css("font-weight",800);	
		},function(){
			$(this).css("font-weight",400);	
			$("li:eq("+tourType+") a").css({"font-weight":800, "font-size":'18px'});
		}); 
		$(".classification").hover(function(){
			$(this).css({"text-decoration":'none'});
			$(this).css("font-weight",800);	
		},function(){
			$(this).css("font-weight",400);	
			$(".classification:eq(" + classification + ")").css({"font-weight":800, "font-size":'17px'});
		});

				
		
		$("#from").datepicker('setDate','today');
		var startDate=$("#from").val();
		tourType=$("#tourType").val();
		var param={
				"startDate" : startDate,
				"tourType" : tourType
		}
		
		$( "#slider-range-max" ).slider({
			min:0,
			value:0,
			max:100000,
			step:10000,
			slide: function( event, ui ) {
		    	$( "#amount" ).text( ui.value+" 원" );
			},stop: function(event,ui){
				rangeApply(ui.value);
			}
		});

		console.log("tourtype: "+tourType);
		initialPage(param);
		
		console.log("MAX"+MAXPRICE);
		
		$('img').on('dragstart', false);
	});

	
	function rangeApply(v){
		var startDate=$("#from").val();
		tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		classification="0";
		if(document.getElementById("classification").value!=null){
			classification= document.getElementById("classification").value;
		}
		var targetPoint = $("input:radio[name=starPoint]:checked").val();
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var isDiscount= $("#isDiscount").prop("checked");
		var param={
				"startDate" : startDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": targetPoint,
				"targetPrice": v,
				"keyword": keyword,
				"isDiscount" : isDiscount,
		}
		initialPage(param);
	}
	
	function search(){
		MAXPRICE=0;
		var keyword = $("#keyword").val();
		var startDate=$("#from").val();
		var isDiscount= $("#isDiscount").prop("checked");
		var param={
				"startDate" : startDate,
				"keyword" : keyword,
				"isDiscount" : isDiscount
		}
		initialPage(param);
	}
	
	document.getElementById("keyword").addEventListener("keyup", function(e) {
		if(e.keyCode==13){
			search();
		}
	}, false);

	
	function clearFilter(){
		$("#from").datepicker('setDate','today');
		var startDate=$("#from").val();
		tourType="0";
		$("#isDiscount").prop("checked",false);
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		$("#price_range").val(MAXPRICE);
		$("#showRange").html($("#price_range").prop("min")+"원  ~ "+ $("#price_range").val()+"원");
		var param={
				"startDate" : startDate,
				"tourType":tourType
		}
		$("#starDefault").prop("checked","checked");
		$( "#slider-range-max" ).slider("value",MAXPRICE);
		$( "#amount" ).text(MAXPRICE+" 원");
	}

	
	function dateChange(){
		MAXPRICE=0;
		var startDate=$("#from").val();
		tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		classification="0";
		if(document.getElementById("classification").value!=null){
			classification= document.getElementById("classification").value;
		}
		var targetPoint = $("input:radio[name=starPoint]:checked").val();
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var isDiscount= $("#isDiscount").prop("checked");
		var param={
				"startDate" : startDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": targetPoint,
				"targetPrice": targetPrice,
				"keyword": keyword,
				"isDiscount" : isDiscount
		}
		initialPage(param);
	}
	
	
	function cateChange(t){ // 필터 항상 초기화 
		MAXPRICE=0;
		tourType = t;
		$("li a").css({"font-weight":400, "font-size":'16px'});
		$("li:eq("+tourType+") a").css({"font-weight":800, "font-size":'18px'});
		var startDate=$("#from").val();
		var isDiscount= $("#isDiscount").prop("checked");
		var param={
				"startDate" : startDate,
				"tourType": tourType,
				"isDiscount" : isDiscount
		}
		initialPage(param);
	}
	
	function orderChange(cnum){ // 정렬 순서 변할때 
		$(".classification").css({"font-weight":400, "font-size":'16px'});
		$(".classification:eq("+(cnum-1)+")").css({"font-weight":800, "font-size":'17px'});
		classification=cnum-1;
		var startDate=$("#from").val();
		tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		var targetPoint = $("input:radio[name=starPoint]:checked").val();
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var isDiscount= $("#isDiscount").prop("checked");
		var param={
				"startDate" : startDate,
				"tourType": tourType,
				"classification": cnum,
				"targetPoint": targetPoint,
				"targetPrice": targetPrice,
				"keyword": keyword,
				"isDiscount" : isDiscount
		}
		initialPage(param);
	}
	
	function discountChange(isdc){ // 정렬 순서 변할때 
		MAXPRICE=0;
		console.log(isdc.checked);
		var isDiscount =  $(this).prop("checked");		
		var startDate=$("#from").val();
		tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		
		classification="0";
		if(document.getElementById("classification").value!=null){
			classification= document.getElementById("classification").value;
		}
		var targetPoint = $("input:radio[name=starPoint]:checked").val();
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var isDiscount= $("#isDiscount").prop("checked");
		var param={
				"startDate" : startDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": targetPoint,
				"targetPrice": targetPrice,
				"keyword": keyword,
				"isDiscount" : isDiscount
		}
		initialPage(param);
	}
	
	function starChange(val){ // 별점 선택 기준 변할때 
		MAXPRICE=0;
		var startDate=$("#from").val();
		tourType="0";
		if(document.getElementById("tourType").value!=null){
			tourType= document.getElementById("tourType").value;
		}
		classification="0";
		if(document.getElementById("classification").value!=null){
			classification= document.getElementById("classification").value;
		}
		var targetPrice = $("price_range").val();
		var keyword = $("#keyword").val();
		var isDiscount= $("#isDiscount").prop("checked");
		var param={
				"startDate" : startDate,
				"tourType": tourType,
				"classification": classification,
				"targetPoint": val,
				"targetPrice": targetPrice,
				"keyword": keyword,
				"isDiscount" : isDiscount
		}
		initialPage(param);
	}
	
	
	function initialPage(param){
		$.getJSON('${cp}/tourSelectList', param, function(data){
			$("#tour_content").empty();
			
			console.log("가져올 데이터 갯수 : "+ data.list.length);
			
			if(data.list.length==0){ // 검색되는 데이터가 없으면
				var str = "<div id='sorryMsg'><img src='${cp }/resources/images/sorry.jpg' style='width:500px;'><br>"+
							"<p>Sorry, There is nothing</p><div>";
				$("#tour_content").append(str);
				return;
			}
			
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-4'>"; //첫번째 div
			$("#tourType").val(param.tourType);

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
				
				console.log("userID : "+user_id);
				
				var fullstars = Math.floor(avgpoint);
				var decimal =  Math.round(avgpoint*10%10);
				var stars ="";
			
				if(avgpoint==0){
					for(let l=0; l<5; l++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>";
					}
				}else{
					if(fullstars==5){ // 평점이 5점이면~ 
						for(let k=0; k<fullstars; k++){
							stars+="<img src='${cp }/resources/images/fullStar.svg' class='starImg'>";
						}
					}else{
						for(let k=0; k<fullstars; k++){
							stars+="<img src='${cp }/resources/images/fullStar.svg' class='starImg'>";
						}
						if(decimal>=0 && decimal<3){
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
				}
				str+="<div class='col mb-4'>"+ //두번째 div
						"<div class='card h-100 ml-3' style='width: 14rem;' onclick='move(this)'>"+  //3번째 div
						   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
						   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
						 	 "<img src='${cp }/resources/upload/"+imgsavename+"' class='card-img-top'  alt='"+tour_name+"' >"+
						 	 "<div class="+tour_name+">"+ //4번째 div
						   		 "<h5 class='card-title'>"+tour_name+"</h5>"+
							   	 "<p class='card-text'>"+tourType+"</p>"+
							   	 "<p class='card-text'>"+stars+"("+rcnt+")"+"</p>";
				if(discount>0){	
							str+="<p class='card-text' style='text-decoration:line-through'>옵션최저가 "+tour_price+"원/명</p>"+
								 "<p class='card-text'>할인특가 "+Math.ceil(tour_price-tour_price*discount/100)+"원/명</p>"+
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
					  	 	str +="<div class='tourSelectHeartBox'><img src='${cp }/resources/images/HRT.svg' class='heartImg' onclick='wish(this)' alt='heart'></div>";
			   	}else{
					  	 	str +="<div class='tourSelectHeartBox'><img src='${cp }/resources/images/emptyHRT.svg' class='heartImg' onclick='wish(this)' alt='emptyheart'></div>";
			   	}
				 str+="</div>"+  //3번째 div
				  "</div>";  //두번째 div
			}
			str+="</div>"; //1번째 div
			$("#tour_content").append(str);
		
			let minprice= data.minprice;
			let maxprice= data.maxprice;
			
			console.log("max1? = "+maxprice);
			
			if(MAXPRICE==0){
				MAXPRICE = (Math.ceil(maxprice/10000))*10000;
				$("#slider-range-max").slider("value", MAXPRICE );
				$( "#amount" ).text( $( "#slider-range-max" ).slider( "value" ) +" 원");
			}
			console.log("rounded"+MAXPRICE);
			$("#slider-range-max").slider("option","max", MAXPRICE );
		});
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
	
	function wish(img){
		event.stopPropagation(); //이벤트 중복일때 후순위 이벤트는 일어나지 않도록 막는 메소드
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
					img.src="${cp}/resources/images/HRT.svg"
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
					img.src="${cp }/resources/images/HRT.svg"
					img.alt = 'heart';
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}
	}
	
	
	function move(m){
		var cate_number=parseInt(m.firstChild.value);
		var service_number=parseInt(m.firstChild.nextSibling.value);
		window.location.href="${cp}/tourDetail?cate_number="+cate_number+"&service_number="+service_number;
	}
</script>
</div>
