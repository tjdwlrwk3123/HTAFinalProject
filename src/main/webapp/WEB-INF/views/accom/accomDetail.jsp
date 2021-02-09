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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b7621e8665f6a2b7f8fcf343ba118b6&libraries=services"></script>

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
	
	#accomDetail_wrapper{width:1100px; position:relative; margin:auto; background-color: royalblue;}
	#accomDetail_wrapper #title{width:100%; height:130px; position:relative; padding:20px; border-bottom:1px solid gray; background-color: green; }
	#accomDetail_wrapper #title #starbox{width:100%; position:relative; margin:10px; right:10px; background-color: pink; }
	#accomDetail_wrapper #option{width:100%; margin:auto; position:relative; padding:20px; border-bottom:1px solid gray; background-color: orange;}
	#accomDetail_wrapper #detail{width:100%; position:relative; margin:auto; background-color: yellow;}
	#accomDetail_wrapper #accomWholeImage{width:100%; position:relative; margin:auto; padding:20px; align-content:center; background-color: gray;}
	#accomDetail_wrapper #detail #info{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #infobox{width:100%; position:relative; padding:20px; border-top:1px solid gray; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #rulebox{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #reviewbox{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #infobox #mapbox{width:500px; height:330px; margin-top:20px; border:3px solid black; overflow: hidden;}
	#accomDetail_wrapper #detail #info #infobox #mapbox #map{width:490px; height:300px; margin:auto;}
	#accomDetail_wrapper #option .fotorama{width: 230px; display: inline-block;}
	#accomDetail_wrapper #option .tableformOpt{border: 1px solid black; margin: 1px; padding: 2px;}
	#accomDetail_wrapper #option .opt{display: inline-block; position: relative; bottom: 70px;}

</style>


<div id="payment">

<!-- 결제할 금액 / 결제버튼 / 위시리스트 넣기 버튼 -->
	<c:choose>
		<c:when test=""><!-- option이 비엇으면 전체 티켓 개수 0 -->
			<span style="font-size:30px; font-weight:700; color:royalblue;">매진된상품입니다</span>
		</c:when>
		<c:otherwise>
			<span style="font-size:30px; font-weight:700; color:royalblue;" id="price">${detail.minp}원 <span style="font-size:15px;">부터</span></span>
			<br>
<!-- 			<span style="width:200px; margin:auto; align-content: center;"><input type="button" value="결제하기" id="payBtn"></span> -->
			<!-- 옵션중 최저가 보여주기, 나중에 옵션 추가 제거 하면 금액 변동시키기-->
		</c:otherwise>
	</c:choose>
	
	<div id="wishbox">
		<c:choose>
			<c:when test="">
				<input type="button" value="위시리스트추가" id="wishbtn">
			</c:when>
			<c:otherwise>
				<input type="button" value="위시리스트제거" id="wishbtn">
			</c:otherwise>
		</c:choose>
		<!-- 일단보이게 해놓고 나중에 hidden 만들자 -->
		<input type="hidden" value="" id="cate_number"><br>
		<input type="hidden" value="" id="service_number"><br>
		<input type="hidden" value="" id="user_id">
	</div>

</div>


<div id="accomDetail_wrapper" >
	<div id="title">
		<!-- 제목 + 리뷰평점 -->
		<h3 style="font-weight:700;">${service.accom_name }</h3>
		<input type="hidden" value="${accomNum }" id="accomNum">
		<div id="starbox">
			<span style="font-size:20px; font-weight:600;">평점 : 
			</span>
		</div>
	</div>
	<!-- 메인 사진들 -->
	<div class="fotorama" data-nav="thumbs" data-width="500" data-heigth="500">
		<c:forEach var="p" items="${wholeImage }" varStatus="status">
			<img src='${cp}/resources/gimgs/${p.imgsavename}' width="500" height="500">
		</c:forEach>
	</div>
	<div style="width: 1100px; background-color: #E4F7BA;">
	<div style="display: inline-block;">
	날짜<input type="text" id="d1" readonly="readonly" size="10" value="${startDate }">~
	<input type="text" id="d2" readonly="readonly" size="10" value="${endDate }">
	</div>
	<div style="display: inline-block;">
	<div id="numCount" name="nCount">
	<span id="totCount" name="nCount">${count }명</span>
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
	<input type="button" value="재검색" id="reSearch">
	</div>
	<div id="option">
	</div>
	<div id="detail" >
		<div id="info">
			<!-- 기본정보 : 상품정보(제공사항), 주의사항, 이용방법, 위치안내, 취소환불 규정, 후기 -->			
				<div id="infobox">
					<h2>상품정보</h2>
					<pre>${info.accom_info_content }</pre>
					<br>
					<h2>이용안내</h2>
					<div>${info.accom_how }</div>
					<br>
					<c:if test="${!empty service.accom_addr }">
						<div id="mapbox">
							<div id="map">
							</div>
							<span style="margin-bottom:0px;">${service.accom_addr }</span>
						</div>
					</c:if>
				</div>
			<c:if test="${!empty info.accom_rule }">
				<div id="rulebox">
					<h2>취소 및 환불 규정</h2>
					<span>${info.accom_rule }</span>
					<br>
				</div>
			</c:if>
			<div id="reviewbox">
				<c:if test="">
					<span>후기 </span><br>
					<c:forEach var="r" items="">
						<span> </span><br>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
</div>
<script>

	$("#wishbtn").click(function(){
		if($("#wishbtn").val()=="위시리스트추가"){
			$.getJSON("${cp}/wishInsert", {"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
				function(data) {
				let result = data.code;
				if(result=='insert_success'){
					$("#wishbtn").val("위시리스트제거");
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}else{
			$.getJSON("${cp}/wishDelete", {"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
				function(data) {
					let result = data.code;
					if(result=='delete_success'){
						$("#wishbtn").val("위시리스트추가");
					}else if(result=='delete_fail'){
						alert("delete ERROR");
					}
				});
		}
	});
	
	////////////////이미지 미리보기 기능(magnific)///////////////////
	
/*	$('#accomWholeImage').magnificPopup({
		delegate: 'a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
		mainClass: 'mfp-img-mobile',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
		},
		zoom: {
			enabled:true,
			duration: 400
		},
	});			*/



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
		var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="${cp}/resources/gimgs/viewLoading.gif" />').appendTo(document.body).hide();
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
			if(data.options==null){
				$("#option").append("조건에 해당하는 방이 없습니다.");
			}
			for(let i=0;i<data.options.length;i++){
				var optNum=data.options[i].accom_option_number;
				console.log(data.using[i]);
				console.log(data.image[i]);
				var imgdiv='<div class="fotorama" data-width="200" data-heigth="200"'+
				' data-allowfullscreen="native" width="200">';
				for(let j=0;j<data.image[i].length;j++){
					var img=data.image[i][j].imgsavename;
					imgdiv+='<img src="${cp}/resources/gimgs/'+img+'">'
				}
				imgdiv+='</div>';
				//예약 가능불가능 확인
				if(data.using[i]=='예약가능'){
					var endContent=
						'<span><a href="">예약</a></span>'+
						'</div>'+
						'</div>';
				}else{
					var endContent=
						'<span>예약불가</span>'+
						'</div>'+
						'</div>';
				}
				var count=data.count;
				var howLong=data.howLong;
				var price=data.options[i].accom_price;
				var totPrice=count*howLong*price;
				
				var content=
					'<div class="tableformOpt">'+
					imgdiv+
					'<div class="opt">'+
					'<h4>'+data.options[i].accom_rooms_option+'</h4>'+
					'<span>기준인원:'+data.options[i].accom_min_people+'/최대인원:'+data.options[i].accom_max_people+'</span><br>'+
					'<span style="font:\'bold\'">'+howLong+'박 총'+totPrice+'원</span>'+
					endContent;
					
				$("#option").append(content);
			}
			$('.fotorama').fotorama();
		});
	}

</script>
