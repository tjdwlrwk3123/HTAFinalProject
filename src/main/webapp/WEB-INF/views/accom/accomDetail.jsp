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

<style>
	#payment{width:300px; height:250px; position:fixed; padding:30px; right:250px; top:130px; background-color: red; z-index: 99;}
	#payment #wishbox{background-color: skyblue;}
	
	#accomDetail_wrapper{width:1100px; position:relative; margin:auto; background-color: royalblue;}
	#accomDetail_wrapper #title{width:100%; height:130px; position:relative; padding:20px; border-bottom:1px solid gray; background-color: green; }
	#accomDetail_wrapper #title #starbox{width:100%; position:relative; margin:10px; right:10px; background-color: pink; }
	#accomDetail_wrapper #option{width:100%; margin:auto; position:relative; padding:20px; border-bottom:1px solid gray; background-color: orange;}
	#accomDetail_wrapper #detail{width:100%; position:relative; margin:auto; background-color: yellow;}
	#accomDetail_wrapper #photozone{width:100%; position:relative; margin:auto; padding:20px; align-content:center; background-color: gray;}
	#accomDetail_wrapper #detail #info{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #infobox{width:100%; position:relative; padding:20px; border-top:1px solid gray; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #rulebox{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #reviewbox{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#accomDetail_wrapper #detail #info #infobox #mapbox{width:500px; height:330px; margin-top:20px; border:3px solid black; overflow: hidden;}
	#accomDetail_wrapper #detail #info #infobox #mapbox #map{width:490px; height:300px; margin:auto;}
	
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
		<div id="starbox">
			<span style="font-size:20px; font-weight:600;">평점 : 
			</span>
		</div>
	</div>
	<div id="photozone" >
		<!-- 사진으로 된 홍보물 자리 -->
		<c:forEach var="p" items="">
			<img src='${cp}/resources/images/' style="width:100%" alt="">
		</c:forEach>
	</div>
	<div id="option">
		<c:forEach var="o" items="">
			<c:choose>
				<c:when test="">
					<span style="font-size:15px; font-weight:600;">
					<input type="button" value="+" disabled="disabled"><input type="button" value="-"disabled="disabled"><span></span>
					<span style="color:blue;">매진된 상품입니다</span><br>
					</span>
				</c:when>
				<c:otherwise>
					<span style="font-size:15px; font-weight:600;">
					<span style="padding-left:20px;">원 /명</span>	<span style="padding-left:20px;"><input type="button" value="+"><input type="button" value="-"></span><br>
					</span>
				</c:otherwise>
			</c:choose>
		</c:forEach>
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
			<c:if test="">
				<div id="rulebox">
					<h2>취소 및 환불 규정</h2>
					<span></span>
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

</script>
