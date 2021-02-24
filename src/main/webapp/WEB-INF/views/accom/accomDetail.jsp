<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/174a2d5b3b.js" crossorigin="anonymous"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04c1ebe9cbcfe54ddfd424342eee90fc&libraries=services"></script>

<!-- 이미지 미리보기 기능 라이브러리들 -->
<!-- Magnific Popup core CSS file -->
<link rel="stylesheet" href="/tour/resources/css/magnific-popup.css">
<!-- Magnific Popup core JS file -->
<script src="/tour/resources/js/jquery.magnific-popup.min.js"></script>

<!-- datepicker라이브러리 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- photorama -->

<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>

<style>
	#payment{width:300px; height:250px; position:fixed; padding:30px; right:250px; top:130px; background-color: red; z-index: 99;}
	#payment #wishbox{background-color: skyblue;}
	
	#accomDetail_wrapper{
	width:1000px; 
	position:relative;
	margin:auto;
	display: flex;
	background-color:white;
	}
	#accom_content_wrapper #title{
	width:100%; 
	height:130px; 
	position:relative; 
	padding:10px; 
	border-bottom:1px solid gray;
	display:table;
	background-color: white;
	margin-bottom: 20px;
	}
	#accom_content_wrapper{
	width:675px; 
	position:relative;
	}
	#accom_content_wrapper #fotorama{
	width:100%;
	margin:auto;
	}
	#accomDetail_wrapper #accomWishWrapper
	{
	width:300px; 
	height:150px; 
	position: sticky;
	margin-left:25px;
	top:50px; 
	border:2px solid gray;
	background-color:white;
	display:table;
	padding-top: 20px;
	}
	#accomDetail_wrapper #accomWishWrapper #wishbox{
	width:100%;
	maring:auto;
	text-align: center;
	display:table-row;
	}
	#accomDetail_wrapper #accomWishWrapper #wishbox .btn{
	position:relative;
	width:200px;
	margin:10px;
	}
	#accomDetail_wrapper #title #accom_starbox
	{
	width:100%; 
	position:relative; 
	margin:10px;
	margin-top:30px;
	right:10px; 
	background-color: white;
	}
	#accomDetail_wrapper #title #accom_starbox .starImg{
		width:30px;
		vertical-align: top;
	}
	#accomDetail_wrapper #option{
	width:100%; 
	margin:auto; 
	position:relative; 
	border-bottom:1px solid gray; 
	background-color: #F6F6F6;
	user-select:none;
	padding-top:15px;
	padding-bottom:15px;
	padding-left: 30px;
	}
	#accomDetail_wrapper #detail{
	width:100%; 
	position:relative; 
	margin:auto;
	background-color: gray; 
	}
	#accomDetail_wrapper #accomWholeImage{width:100%; position:relative; margin:auto; padding:20px; align-content:center; background-color: gray;}
	#accomDetail_wrapper #detail #info{
	width:100%;
	position:relative; 
	border-bottom:1px solid gray; 
	background-color: white;
	}
	#accomDetail_wrapper #detail #info #infobox h3{
	margin-bottom: 20px;
	font-weight: 600;
	}
	#accomDetail_wrapper #detail #info #infobox #accominfo{
	width:100%; 
	position:relative;
	padding:20px;
	border-bottom:1px solid gray;
	background-color: white;
	}
	#accomDetail_wrapper #detail #info #infobox #facilityBox{
	width:100%; 
	position:relative;
	padding:20px;
	border-bottom:1px solid gray;
	background-color: white;
	}
	#accomDetail_wrapper #detail #info #infobox #facilityBox div{width: 100%; display: flex;}
	#accomDetail_wrapper #detail #info #infobox #facilityBox div div{justify-content: space-between;}
	#accomDetail_wrapper #detail #info #infobox #convenBox{
	width:100%; 
	position:relative;
	padding:20px;
	border-bottom:1px solid gray;
	background-color: white;
	}
	#accomDetail_wrapper #detail #info #infobox #convenBox div{width: 100%; display: flex;}
	#accomDetail_wrapper #detail #info #infobox #convenBox div div{justify-content: space-between;}
	#accomDetail_wrapper #detail #info #infobox #accomhow{
	width:100%; 
	position:relative;
	padding:20px;
	border-bottom:1px solid gray;
	background-color: white;
	}
	#accomDetail_wrapper #detail #info #rulebox{
	width:100%;
	position:relative; 
	padding:20px; 
	border-top:1px solid gray;
	border-bottom:1px solid gray; 
	background-color: white;
	}
	#accomDetail_wrapper #detail #info #reviewbox{
	width:100%; 
	position:relative; 
	padding:20px; 
	background-color: white;
	}
	#accomDetail_wrapper #detail #info #infobox #mapbox{
	width:90%; 
	height:330px; 
	margin-top:20px; 
	border:2px solid black; 
	overflow: hidden;
	margin-bottom: 20px;
	margin-left: 5%;
	text-align: center;
	}
	#accomDetail_wrapper #detail #info #infobox #mapbox #map{
	width:100%;
	height:300px; 
	margin:auto;
	}
	#accomDetail_wrapper #option .fotorama{width: 230px; display: inline-block; text-align: center;}
	#accomDetail_wrapper #option .tableformOpt{border: 1px solid black; margin: 1px; padding: 2px; width: 600px; height:200px;}
	#accomDetail_wrapper #option .opt{display: inline-block; position: relative; float: left; top:50px;}
	#adultNum{
		-ms-user-select: none;
		-moz-user-select: -moz-none; 
		-webkit-user-select: none; 
		-khtml-user-select: none; 
		user-select:none;
	}
	#changeCount{
		user-select:none;
		display: none;
		position: absolute;
		background-color: #f9f9f9;
		min-width: 160px;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		padding: 12px 16px;
		z-index: 1;
	}
	#changeCount div{
 		-ms-user-select: none;
 		-moz-user-select: -moz-none; 
 		-webkit-user-select: none; 
 		-khtml-user-select: none;
	}
	.reviewStar{
		width:20px;
		vertical-align: -15%;
	}
	.card{
		border:none;
	}
	.row{
		box-shadow: 3px 3px 5px 5px gray;
	}
	.accomReviewImage{
		width: 90px;
		height: 90px;
		margin-top: 5px;
	}
</style>



<div id="accomDetail_wrapper" >
	<div id="accom_content_wrapper">
	
	<div id="title">
		<!-- 제목  -->
		<h3 style="font-weight:700;">${service.accom_name }</h3>
		<input type="hidden" value="${accomNum }" id="accomNum">
		<div id="accom_starbox">
			<c:choose>
				<c:when test="${avgpoint==0}">
					<c:forEach begin="1" end="5">
						<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>
					</c:forEach>
				</c:when>
				<c:when test="${avgpoint>0}">
					<c:set var="full" value="${avgpoint-(avgpoint%1)}"/>
					<c:set var="decimal" value="${(avgpoint%1)*10}"/>
					<c:choose>
						<c:when test="${avgpoint==5}">
							<c:forEach begin="1" end="5">
								<img src='${cp }/resources/images/fullStar.svg' class='starImg'>
							</c:forEach>
						</c:when>
						<c:when test="${avgpoint!=5 }">
							<c:forEach begin="1" end="${full}">
								<img src='${cp }/resources/images/fullStar.svg' class='starImg'>
							</c:forEach>
							<c:choose>
								<c:when test="${decimal>=0 && decimal <3}">
									<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>
								</c:when> 
								<c:when test="${decimal>=3 && decimal <8 }">
									<img src='${cp }/resources/images/halfStar.svg' class='starImg'>
								</c:when>
								<c:when test="${decimal>=8 }">
									<img src='${cp }/resources/images/fullStar.svg' class='starImg'>
								</c:when>
							</c:choose>
							<c:forEach var="e" begin="1" end="${5-full-1}">
								<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>			
							</c:forEach>
						</c:when>
					</c:choose>
				</c:when>
			</c:choose>
			<span style="font-size:20px; font-weight:600;">평점 : <fmt:formatNumber value="${avgpoint}" pattern="0.0" /></span>
		</div>
	</div>
	<!-- 메인 사진들 -->
	<div class="fotorama" data-nav="thumbs">
		<c:forEach var="p" items="${wholeImage }" varStatus="status">
			<img src='${cp}/resources/upload/${p.imgsavename}' width="500" height="500">
		</c:forEach>
	</div>
	<div style="width: 100%; background-color: #FFEBFE; text-align: center;">
		<div style="display: inline-block;">
		날짜<input type="text" id="d1" readonly="readonly" size="10" value="${startDate }">~
		<input type="text" id="d2" readonly="readonly" size="10" value="${endDate }">
		</div>
		<div style="display: inline-block;">
		<div id="numCount" name="nCount">
		<span id="totCount" name="nCount">${count }명</span>
		</div>
			<div id="changeCount" name="nCount">
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
		<input type="button" value="재검색" id="reSearch" class="btn btn-primary">
	</div>
	<div id="option">
	</div>
	<input type="hidden" value="${service.cate_number }" id="catNum">
	<input type="hidden" value="${service.accom_name }" id="serviceName">
	<input type="hidden" value="${service.accom_service_number }" id="serviceNum">
	<div id="detail" >
		<div id="info">
			<!-- 기본정보 : 상품정보(제공사항), 주의사항, 이용방법, 위치안내, 취소환불 규정, 후기 -->			
				<div id="infobox">
					<div id="accominfo">
						<h3>상품정보</h3>
						<pre>${info.accom_info_content }</pre>
					</div>
					<div id="accomhow">
						<h3>이용안내</h3>
						<div>${info.accom_how }</div>
					</div>
					<div id="facilityBox">
						<h3>편의시설</h3>
						<div style="text-align: center;">
						<c:forEach var="fac" items="${facility}">
							<c:choose>
								<c:when test="${fac =='바베큐' }">
									<div style="display: inline-block;">
									<i class="fas fa-drumstick-bite"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='수영장' }">
									<div style="display: inline-block;">
									<i class="fas fa-swimming-pool"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='편의점' }">
									<div style="display: inline-block;">
									<i class="fas fa-store"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='탁구장' }">
									<div style="display: inline-block;">
									<i class="fas fa-table-tennis"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='연회장' }">
									<div style="display: inline-block;">
									<i class="fas fa-birthday-cake"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='유아시설' }">
									<div style="display: inline-block;">
									<i class="fas fa-baby-carriage"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='카페' }">
									<div style="display: inline-block;">
									<i class="fas fa-coffee"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='온천' }">
									<div style="display: inline-block;">
									<i class="fas fa-spa"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='골프장' }">
									<div style="display: inline-block;">
									<i class="fas fa-golf-ball"></i><br>
									${fac }
									</div>
								</c:when>
								<c:when test="${fac =='족구장' }">
									<div style="display: inline-block;">
									<i class="far fa-futbol"></i><br>
									${fac }
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
						</div>
					</div>
					<div id="convenBox">
						<h3>서비스</h3>
						<div style="text-align: center;">
						<c:forEach var="con" items="${conven}">
							<c:choose>
								<c:when test="${con =='조식' }">
									<div style="display: inline-block;">
									<i class="fas fa-bacon"></i><br>
									${con }
									</div>
								</c:when>
								<c:when test="${con =='픽업' }">
									<div style="display: inline-block;">
									<i class="fas fa-truck-pickup"></i><br>
									${con }
									</div>
								</c:when>
								<c:when test="${con =='무료주차' }">
									<div style="display: inline-block;">
									<i class="fas fa-parking"></i><br>
									${con }
									</div>
								</c:when>
								<c:when test="${con =='금연' }">
									<div style="display: inline-block;">
									<i class="fas fa-smoking-ban"></i><br>
									${con }
									</div>
								</c:when>
								<c:when test="${con =='보드게임' }">
									<div style="display: inline-block;">
									<i class="fas fa-chess-board"></i><br>
									${con }
									</div>
								</c:when>
								<c:when test="${con =='영화관람' }">
									<div style="display: inline-block;">
									<i class="fas fa-film"></i><br>
									${con }
									</div>
								</c:when>
								<c:when test="${con =='wifi' }">
									<div style="display: inline-block;">
									<i class="fas fa-wifi"></i><br>
									${con }
									</div>
								</c:when>
								<c:when test="${con =='반려동물동반' }">
									<div style="display: inline-block;">
									<i class="fas fa-paw"></i><br>
									${con }
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
						</div>
					</div>
					<c:if test="${!empty service.accom_addr }">
						<div id="mapbox">
							<div id="map">
							</div>
							<span style="margin-bottom:0px;">${service.accom_addr }</span>
						</div>
					</c:if>
					<c:if test="${!empty info.accom_rule }">
						<div id="rulebox">
							<h3>취소 및 환불 규정</h3>
							<span>${info.accom_rule }</span>
							<br>
						</div>
					</c:if>
				</div>
			<div id="reviewbox">
			</div>
		</div>
	</div>
	</div>
	<div id="accomWishWrapper">
		<div id="wishbox">
			<c:choose>
				<c:when test="${wishlist==false}">
					<button type="button" id="wishbtn" class="btn btn-danger btn-lg">위시리스트추가</button>
				</c:when>
				<c:otherwise>
					<button type="button" id="wishbtn" class="btn btn-outline-danger btn-lg">위시리스트제거</button>
				</c:otherwise>
			</c:choose>
			<button type="button" id="goTicket" class="btn btn-outline-secondary btn-lg">티켓보기</button>

			<input type="hidden" value="${service.cate_number }" id="cate_number"><br>
			<input type="hidden" value="${service.accom_service_number }" id="service_number"><br>
			<input type="hidden" value="${sessionScope.user_id }" id="user_id">
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$.getJSON("${cp}/getAccomReviewList", 
				{"cate_number":$("#catNum").val(),"service_number":$("#serviceNum").val()}, function(data) {
			var str="";
			str= "<h4>후기 ("+data.reviewlist.length+")</h4>"
			if(data.reviewlist.length>3){
				for(let i=0; i<3; i++){
					var stars ="";
					for(let f=0; f<data.reviewlist[i].star_point; f++){
						console.log(f);
						stars+="<img src='${cp }/resources/images/fullStar.svg' class='reviewStar'>";
					}
					console.log(data.reviewlist[i].star_point);
					for(let e=0; e<5-data.reviewlist[i].star_point; e++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='reviewStar'>";
					}
					console.log("stars"+stars);
					str+="<div class='card mb-3' style='max-width: 1000px;'>"+
							"<div class='row g-0'>"+
								"<div class='col-md-10'>"+
									"<div class='card-body' >"+
										"<h5 class='card-title'>"+stars+"  "+data.reviewlist[i].user_id+"<small class='col-md-1'>"+data.reviewlist[i].review_date+"</small></h5>"+
										"<p class='card-text'>"+data.reviewlist[i].review_content+"</p>"+
									"</div>"+
								"</div>"+
								"<div class='col-md-2' style='text-align: center;'>"+
									"<img src='${cp}/resources/images/"+data.reviewlist[i].review_image+"' style='width:100%; height:100px;' onerror='this.style.display=\"none\";' class='accomReviewImage'>"+
								"</div>"+
							"</div>"+
						"</div>";
				}
				str+="<div style='text-align: center;'>"+
						"<button type='button' class='btn btn-outline-primary' id='moreBtn' onclick='moreReview()'>리뷰더보기</button>"+
					"</div>";
			}else{
				for(let i in data.reviewlist){
					var stars ="";
					for(let f=0; f<data.reviewlist[i].star_point; f++){
						console.log(f);
						stars+="<img src='${cp }/resources/images/fullStar.svg' class='reviewStar'>";
					}
					console.log(data.reviewlist[i].star_point);
					for(let e=0; e<5-data.reviewlist[i].star_point; e++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='reviewStar'>";
					}
					str+="<div class='card mb-3' style='max-width: 1000px;'>"+
							"<div class='row g-0'>"+
								"<div class='col-md-10' >"+
									"<div class='card-body'>"+
										"<h5 class='card-title'>"+stars+"  "+data.reviewlist[i].user_id+"<small class='col-md-1'>"+data.reviewlist[i].review_date+"</small></h5>"+
										"<p class='card-text'>"+data.reviewlist[i].review_content+"</p>"+
									"</div>"+
								"</div>"+
								"<div class='col-md-2' style='text-align: center;'>"+
									"<img src='${cp}/resources/images/"+data.reviewlist[i].review_image+"' style='width:100%; height:100px;' onerror='this.style.display=\"none\";'>"+
								"</div>"+
							"</div>"+
						"</div>";
				}
			}
			$("#reviewbox").append(str);
		});
	});
	
	function moreReview(){
		console.log("11");
		$.getJSON("${cp}/getAccomReviewList", 
				{"cate_number":$("#catNum").val(),"service_number":$("#serviceNum").val()}, function(data) {
			var str="";
			for(let i=3; i<data.reviewlist.length; i++){
				var stars ="";
				for(let f=0; f<data.reviewlist[i].star_point; f++){
					console.log(f);
					stars+="<img src='${cp }/resources/images/fullStar.svg' class='reviewStar'>";
				}
				console.log(data.reviewlist[i].star_point);
				for(let e=0; e<5-data.reviewlist[i].star_point; e++){
					stars+="<img src='${cp }/resources/images/emptyStar.svg' class='reviewStar'>";
				}
						str+="<div class='card mb-3' style='max-width: 1000px; display:none;'>"+
						"<div class='row g-0' >"+
							"<div class='col-md-10'>"+
								"<div class='card-body'>"+
									"<h5 class='card-title'>"+stars+"  "+data.reviewlist[i].user_id+"<small class='col-md-1'>"+data.reviewlist[i].review_date+"</small></h5>"+
									"<p class='card-text'>"+data.reviewlist[i].review_content+"</p>"+
								"</div>"+
							"</div>"+
							"<div class='col-md-2' style='text-align: center;'>"+
								"<img src='${cp}/resources/images/"+data.reviewlist[i].review_image+"' style='width:100%; height:100px;' onerror='this.style.display=\"none\";'>"+
							"</div>"+
						"</div>"+
					"</div>";
			}
			console.log(str);
			$("#moreBtn").hide();
			$("#reviewbox").append(str);
			$(".card").fadeIn(500);
		});
	}
	
	$("#wishbtn").click(function(){
		if($("#wishbtn").text()=="위시리스트추가"){
			$.getJSON("${cp}/wishInsert", {"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
				function(data) {
				let result = data.code;
				if(result=='insert_success'){
					$("#wishbtn").text("위시리스트제거");
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}else{
			$.getJSON("${cp}/wishDelete", {"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
				function(data) {
					let result = data.code;
					if(result=='delete_success'){
						$("#wishbtn").text("위시리스트추가");
					}else if(result=='delete_fail'){
						alert("delete ERROR");
					}
				});
		}
	});
	
	$("#goTicket").on("click",function(){ 
		var scrollPosition = $("#accom_content_wrapper").offset().top;
		$("html").animate({
			scrollTop: scrollPosition
		}, 500);
	});
	



	////////////////////// 지도관련 코드 ///////////////////////////

		
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	
	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 
	};
	
	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	
	//주소로 좌표를 검색합니다
	geocoder.addressSearch('${service.accom_addr }', function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		 if (status === kakao.maps.services.Status.OK) {
		    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		    // 결과값으로 받은 위치를 마커로 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: coords
		    });
		    // 인포윈도우로 장소에 대한 설명을 표시합니다
		    var infowindow = new kakao.maps.InfoWindow({
		        content: '<div style="width:150px;text-align:center;padding:6px 0;">숙소위치</div>'
		    });
		    infowindow.open(map, marker);
		    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		    map.setCenter(coords);
		} 
	});
	
	//인원 날짜를 재검색 하기 위한 datepicker,카운트
	var acnt=1; //어른 인원수
	var totcnt=1; //총 인원수
		
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
			nextTwo.setDate(nextTwo.getDate()+14);
			$("#d2").datepicker("option","minDate",nextDay);
			$("#d2").datepicker("option","maxDate",nextTwo);
		}
	});
	$("#d2").datepicker({
		dateFormat:'yy-mm-dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true,
		minDate:0,
		showAnim:"toggle"
	});
	
	///////////////재검색 ajax////////////////////
	$(document).ready(function(){
		var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="${cp}/resources/images/viewLoading.gif" />').appendTo(document.body).hide();
		$(window)	
		.ajaxStart(function(){
		loading.show();
		})
		.ajaxStop(function(){
		loading.hide();
		});
		var accomNum=$("#accomNum").val();
		var count=$("#totCount").text().replace(/[^0-9]/g,"");
		var startDate=$("#d1").val();
		var endDate=$("#d2").val();
		if(startDate=='' || endDate==''){
			$("#d1").datepicker('setDate','today');
			$("#d2").datepicker('setDate','+1D');
			startDate=$("#d1").val();
			endDate=$("#d2").val();
		}
		var param={
				"accomNum":accomNum,
				"count":count,
				"startDate":startDate,
				"endDate":endDate
		}
		
		getOptions(param);
		
	});
	
	$("#reSearch").click(function(){
		var accomNum=$("#accomNum").val();
		var count=$("#totCount").text().replace(/[^0-9]/g,"");
		var startDate=$("#d1").val();
		var endDate=$("#d2").val();
		var param={
				"accomNum":accomNum,
				"count":count,
				"startDate":startDate,
				"endDate":endDate
		}
		getOptions(param);
	});
	
	function getOptions(param){
		$("#option").empty();
		$.getJSON('${cp}/accomDetail_list',param, function(data) {
			if(data.options.length==0){
				$("#option").append("<h2>조건에 해당하는 방이 없습니다.</h2>");
			}
			for(let i=0;i<data.options.length;i++){
				var optNum=data.options[i].accom_option_number;
				var serviceNum=data.options[i].accom_service_number;
				var startDate=param.startDate;
				var endDate=param.endDate;
				var count=param.count;
				var service_option=data.options[i].accom_rooms_option;
				var howLong=data.howLong;
				var price=data.options[i].accom_price;
				var totPrice=price*howLong;
				var discount=data.options[i].discount;
				if(discount!=0){
					var discountPrice=data.options[i].discountPrice;
					var dTotPrice=discountPrice*howLong;
				}
				var cateNumber=document.getElementById("catNum").value;
				var serviceName=document.getElementById("serviceName").value;
				
				var imgdiv='<div class="fotorama" data-width="200" data-heigth="200"'+
				' data-allowfullscreen="native" width="200">';
				for(let j=0;j<data.image[i].length;j++){
					var img=data.image[i][j].imgsavename;
					imgdiv+='<img src="${cp}/resources/upload/'+img+'">'
				}
				imgdiv+='</div>';
				//예약 가능불가능 확인
				if(data.using[i]=='예약가능'){
					if(discount!=0){
						var pricehd='<input type="hidden" name="optionPrice" value="'+dTotPrice+'">'+
						'<input type="hidden" name="discount" value="'+discount+'">';
					}else{
						var pricehd='<input type="hidden" name="optionPrice" value="'+totPrice+'">';
					}
					var endContent=
						'<div style="float:right; margin-top:130px; margin-right:20px;">'+
						'<form action="${cp}/payment" method="post">'+
						'<input type="hidden" name="serviceName" value="'+serviceName+'">'+
						'<input type="hidden" name="cateNumber" value="'+cateNumber+'">'+
						'<input type="hidden" name="serviceNumber" value="'+serviceNum+'">'+
						'<input type="hidden" name="startDate" value="'+startDate+'">'+
						'<input type="hidden" name="endDate" value="'+endDate+'">'+
						'<input type="hidden" name="option_index" value="'+optNum+'">'+
						'<input type="hidden" name="service_option" value="'+service_option+'">'+
						'<input type="hidden" name="count" value="'+count+'">'+
						pricehd+
						'<input type="submit" class="btn btn-outline-primary" value="예약">'+
						'</form>'+
						'</div>'+
						'</div>';
				}else{
					var endContent=
						'<div style="float:right; margin-top:130px; margin-right:20px;">'+
						'<span style="font-size:1.3em;">예약불가</span>'+
						'</div>'+
						'</div>';
				}
				if(discount!=0){
					var isDiscount=
						'<span style="font:bold;text-decoration: line-through;color:red;font-size:0.9em;">'+howLong+'박 총'+totPrice+'원</span><br>'+
						'<span style="font:bold;">'+howLong+'박 총'+discountPrice+'원</span>'+
						'<p style="font-size: 0.7em;">1인당 '+parseInt(dTotPrice/count)+'원</p>';
				}else{
					var isDiscount=
						'<span style="font:bold;">'+howLong+'박 총'+totPrice+'원</span>'+
						'<p style="font-size: 0.7em;">1인당 '+parseInt(totPrice/count)+'원</p>';
				}
				
				var content=
					'<div class="tableformOpt">'+
					'<div style="float:left;">'+
					imgdiv+
					'</div>'+
					'<div class="opt">'+
					'<h4>'+data.options[i].accom_rooms_option+'</h4>'+
					'<span>기준인원:'+data.options[i].accom_min_people+'/최대인원:'+data.options[i].accom_max_people+'</span><br>'+
					isDiscount+
					'</div>'+
					endContent;
					
				$("#option").append(content);
			}
			$('.fotorama').fotorama();
		});
	}

</script>
