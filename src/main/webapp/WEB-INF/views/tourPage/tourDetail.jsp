<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script type="text/javascript" src="/finalproject/resources/js/jquery-3.5.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/174a2d5b3b.js" crossorigin="anonymous"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=def622213948a607b8b4062c406ef1e5&libraries=services"></script>

<style>
	#payment{width:300px; height:250px; position:fixed; padding:30px; right:250px; top:130px; background-color: red; z-index: 99;}
	#payment #wishbox{background-color: skyblue;}
	
	#tourDetail_wrapper{width:1100px; position:relative; margin:auto; background-color: royalblue;}
	#tourDetail_wrapper #title{width:100%; height:130px; position:relative; padding:20px; border-bottom:1px solid gray; background-color: green; }
	#tourDetail_wrapper #title #starbox{width:100%; position:relative; margin:10px; right:10px; background-color: pink; }
	#tourDetail_wrapper #option{width:100%; margin:auto; position:relative; padding:20px; border-bottom:1px solid gray; background-color: orange;}
	#tourDetail_wrapper #detail{width:100%; position:relative; margin:auto; background-color: yellow;}
	#tourDetail_wrapper #detail #photozone{width:100%; position:relative; margin:auto; padding:20px; align-content:center; background-color: gray;}
	#tourDetail_wrapper #detail #info{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#tourDetail_wrapper #detail #info #infobox{width:100%; position:relative; padding:20px; border-top:1px solid gray; border-bottom:1px solid gray; background-color: yellow;}
	#tourDetail_wrapper #detail #info #rulebox{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#tourDetail_wrapper #detail #info #reviewbox{width:100%; position:relative; padding:20px; border-bottom:1px solid gray; background-color: yellow;}
	#tourDetail_wrapper #detail #info #infobox #mapbox{width:500px; height:330px; margin-top:20px; border:3px solid black; overflow: hidden;}
	#tourDetail_wrapper #detail #info #infobox #mapbox #map{width:490px; height:300px; margin:auto;}
	
</style>

<!--
	 ${detail} 
	private int cate_number;
	private int service_number;
	private int minp; //옵션중에 최저가
	private String tour_addr;
	private String tour_name;
	private Date tour_expire;
	private String tour_how;
	private String tour_rule;
	private Double avgpoint; //리뷰평점
	
	 ${option} 리스트
	private int tour_option_number;
	private int tour_price;
	private int tour_option_index;
	private String tour_option;
	private int tour_amount;

	 ${review} 리스트
	private int review_number;
	private String user_id;
	private int service_number;
	private int star_point;
	private String review_comment;
	private int cate_number;
	private List<ImageVo> imglist;
	
	 ${de_image} ${pa_image} 리스트
	private int img_num;
	private String imgorgname;
	private String imgsavename;
	private int general_number;
	private int cate_number
	
	${wishlist} 검색한 회원의 위시리스트에 있는가
	true or false
 -->

<div id="payment">

<!-- 결제할 금액 / 결제버튼 / 위시리스트 넣기 버튼 -->
	<c:choose>
		<c:when test="${empty option}"><!-- option이 비엇으면 전체 티켓 개수 0 -->
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
			<c:when test="${wishlist==false}">
				<input type="button" value="위시리스트추가" id="wishbtn">
			</c:when>
			<c:otherwise>
				<input type="button" value="위시리스트제거" id="wishbtn">
			</c:otherwise>
		</c:choose>
		<!-- 일단보이게 해놓고 나중에 hidden 만들자 -->
		<input type="hidden" value="${detail.cate_number }" id="cate_number"><br>
		<input type="hidden" value="${detail.service_number }" id="service_number"><br>
		<input type="hidden" value="${sessionScope.user_id }" id="user_id">
	</div>

</div>


<div id="tourDetail_wrapper" >
	<div id="title">
		<!-- 제목 + 리뷰평점 -->
		<h3 style="font-weight:700;">${detail.tour_name }</h3>
		<div id="starbox">
			<span style="font-size:20px; font-weight:600;">평점 : ${detail.avgpoint}
			<c:if test="${!empty detail.tour_expire }">
				<p style="float:right;">유효기간 : ${detail.tour_expire}</p>
			</c:if>
			</span>
		</div>
	</div>
	<div id="option">
		<c:forEach var="o" items="${option}">
			<c:choose>
				<c:when test="${o.tour_amount==0 }">
					<span style="font-size:15px; font-weight:600;">[${o.tour_option_index}] ${o.tour_option}
					<input type="button" value="+" disabled="disabled"><input type="button" value="-"disabled="disabled"><span></span>
					<span style="color:blue;">매진된 상품입니다</span><br>
					</span>
				</c:when>
				<c:otherwise>
					<span style="font-size:15px; font-weight:600;">[${o.tour_option_index}] ${o.tour_option}
					<span style="padding-left:20px;">${o.tour_price}원 /명</span>	<span style="padding-left:20px;"><input type="button" value="+"><input type="button" value="-"></span><br>
					</span>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
	<div id="detail" >
		<div id="photozone" >
			<!-- 사진으로 된 홍보물 자리 -->
			<c:forEach var="p" items="${pa_image}">
				<img src='${cp}/resources/images/${p.imgsavename}' style="width:100%"alt="${cp}${p.imgsavename}">
			</c:forEach>
		</div>
		<div id="info">
			<!-- 기본정보 : 상품정보(제공사항), 주의사항, 이용방법, 위치안내, 취소환불 규정, 후기 -->			
			<c:if test="${!empty detail.tour_how}">
				<div id="infobox">
					<h2>상품정보</h2>
					<span>${detail.tour_how}</span>
					<br>
					<c:if test="${!empty detail.tour_addr }">
						<div id="mapbox">
							<div id="map">
							</div>
							<span style="margin-bottom:0px;">${detail.tour_addr }</span>
						</div>
					</c:if>
				</div>
			</c:if> 
			<c:if test="${!empty detail.tour_rule}">
				<div id="rulebox">
					<h2>취소 및 환불 규정</h2>
					<span>${detail.tour_rule}</span>
					<br>
				</div>
			</c:if>
			<div id="reviewbox">
				<c:if test="${!empty review }">
					<span>후기 ${fn:length(review)}</span><br>
					<c:forEach var="r" items="${review}">
						<span>[${r.star_point}] ${r.user_id} : ${r.review_content} </span><br>
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
	geocoder.addressSearch('${detail.tour_addr }', function(result, status) {
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
		        content: '<div style="width:150px;text-align:center;padding:6px 0;">이벤트장소</div>'
		    });
		    infowindow.open(map, marker);
		    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		    map.setCenter(coords);
		} 
	});    

</script>