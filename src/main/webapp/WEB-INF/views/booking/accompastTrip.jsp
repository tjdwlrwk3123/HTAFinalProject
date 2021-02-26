<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<!-- <script src="https://kit.fontawesome.com/b99e675b6e.js"></script> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b7621e8665f6a2b7f8fcf343ba118b6&libraries=services"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Stylish&display=swap" rel="stylesheet">

<style type="text/css">
	*{
		font-family: 'Stylish', sans-serif;
	}
	.accompastTripWrapper{
		display: flex;
		position: relative;
		height: 1000px;
		background-color: #F3F3F3;
	}
	
	.accompastTripWrapper .bookingSidebar{
		width: 250px;
		height: 940px;
		background: #4B70DD;
		padding: 30px 0;
	}
	.accompastTripWrapper .bookingSidebar h2{
		color: #fff;
		text-align: center;
		margin-bottom: 30px;
	}
	.accompastTripWrapper .bookingSidebar ul li{
		padding: 15px;
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		list-style:none;
		padding-left:10px;
	}
	.accompastTripWrapper .bookingSidebar ul li a{
		color: white;
		display: block;
		text-decoration: none;
	}
	.accompastTripWrapper .bookingSidebar ul li a .fas{
		width: 25px;
	}
	.accompastTripWrapper .bookingSidebar ul li a .far{
		width: 25px;
	}
	.accompastTripWrapper .bookingSidebar ul li:hover{
		background: #6799FF;
	}
	.accompastTripWrapper .bookingSidebar ul li:hover a{
		color:black;
	}
	.accompastTripWrapper .accompastTripMain{
		width: 100%;
		height: 1000px;
		background-color: #F3F3F3;
	}
	.accompastTripWrapper .accompastTripMain #accompastTripWrap{
		height: 900px;
	}
	.accompastTripWrapper .accompastTripMain #accompastTripWrap .accompastTripList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
	}
	.accompastTripList div img{
		width: 145px;
		height: 145px;
	}
	.accompastTripList a{
		text-decoration: none;
		color: black;
	}
	.accompastTripList a:hover{
		font-weight: 800;
	}
	.accompastTripWrapper .accompastTripMain .accompastTripPaging{
		text-align: center;	
	}
	.accompastTripPaging{
		margin-top: 10px;
	}
	.accompastTripPaging i{
		color:#C98AFF;
		margin-right: 5px;
	}
	#pastmask {  
    position:absolute;  
    z-index:9000;  
    background-color:#000;  
    display:none;  
    left:0;
    top:0;
	}
	.detailPopup{
    display: none;
    position:absolute;
    left:65%;
    top:200px;
    margin-left: -500px;
    width:500px;
    background-color:#FFF;
    z-index:10000;   
 	}
 	#gMap{
 		border: 1px solid skyblue;
 		background-color: rgba(0,0,0,0); 
 		color: skyblue; 
 		padding: 5px;
 		border-radius: 5px;
 	}
 	#gMap:hover{
 		color:white; 
 		background-color: skyblue;
 	}
</style>

<div class="accompastTripWrapper">
	<div class="bookingSidebar">
		<h2>지난여행/후기</h2>
		<ul>
			<li><a href="${cp }/accomBookingCheck"><i class="fas fa-hotel"></i>숙소</a></li>
			<li><a href="${cp }/tourBookingCheck"><i class="fas fa-ticket-alt"></i>투어/티켓</a></li>
			<li><a href="${cp }/accompastTrip"><i class="far fa-lightbulb"></i>지난여행/후기</a></li>
			<li><a href="${cp }/cancelTrip"><i class="fas fa-plane-slash"></i>취소목록</a></li>
		</ul>
	</div>
	<div class="accompastTripMain">
		<div id="accompastTripWrap">
			<h2 style="text-align: center; height: 30px; margin-bottom: 50px;">지난여행/후기</h2>
			<c:forEach var="vo" items="${bookingList }" varStatus="status">
				<div class="accompastTripList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/upload/${image[status.index][0].imgsavename}" 
						onselect="return false" ondragstart="return false">
					</div>
					<div style="display: inline-block; width:320px; position: relative; bottom: 30px;">
						<div>
						<h3 style="display: inline-block;"><a href="${cp }/accomDetail?accomNum=${detail[status.index].accom_service_number}
						&cate_number=${service[status.index].cate_number}">${vo.service_name }</a></h3>
						<span>(${detail[status.index].accom_rooms_option })</span>
						</div>
						<span>여행날짜:</span><span>${vo.accom_startdate }~${vo.accom_enddate }</span>
						<br>
						<c:choose>
						<c:when test="${vo.coupon_usecondition!=null }">
						<span>사용 쿠폰:</span><span>${vo.coupon_usecondition }</span><br>
						</c:when>
						<c:otherwise>
						<br>
						</c:otherwise>
						</c:choose>
						<span>총 결제금액:</span><span>${vo.total_price+vo.point_useamount }</span><span>원</span>
						<c:if test="${vo.point_useamount!='0' }">
						<span style="font-size: 0.5em;">(포인트 사용금액:</span><span style="font-size: 0.5em;">${vo.point_useamount }원)</span><br>
						</c:if>
					</div>
					<div style="display:inline-block; position: relative; left:40px;">
						<a href="#" class="openBookDetail">상세보기</a>
						<input type="hidden" value="${vo.accom_book_number }">
						<input type="hidden" value="${vo.accom_option_number }">
						<input type="hidden" value="${vo.accom_startdate }">
						<input type="hidden" value="${vo.accom_enddate }">
					</div>
					<div style="display:inline-block; position: relative; left: 70px;">
						<a href="">리뷰쓰기</a>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="accompastTripPaging">
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<c:choose>
					<c:when test="${i==pu.pageNum }">
						<a href="${cp }/accompastTrip?pageNum=${i}"><i class="fas fa-circle fa-la"></i></a>
					</c:when>
					<c:otherwise>
						<a href="${cp }/accompastTrip?pageNum=${i}"><i class="fas fa-circle"></i></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
	</div>
</div>

<div id="pastmask">
</div>

<div class="detailPopup">
<div class="detailPop"></div>
<div id="map" style="width:350px; height:200px; margin:auto;">
</div>
<input type="button" onclick="getMap()" value="지도보기" style="margin-left: 220px;" id="gMap">
</div>

<script>
function wrapWindowByDetailMask(bookNumber,optNum,startDate,endDate){
	 
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $("#pastmask").css({"width":maskWidth,"height":maskHeight});  

    //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    $("#pastmask").fadeIn(0);      
    $("#pastmask").fadeTo("slow",0.6);    
	
    
    $.ajax({
		url: '${cp}/accomBookDetail',
		dataType: 'json',
		data: {"bookNumber":bookNumber,"optNum":optNum},
		success: function(data) {
			$(".detailPop").empty();
			var visitorName=data.visitor.visitor_name;
			var visitorEmail=data.visitor.visitor_email;
			var visitorPhone=data.visitor.visitor_phone;
			var roomOption=data.detail.accom_rooms_option;
			var price=data.detail.accom_price;
			var addr=data.service.accom_addr;
			var accomMin=data.detail.accom_min_people;
			var accomMax=data.detail.accom_max_people;
			
			var content='<div style="margin:20px;">'+
			'<div>'+
			'<p style="font-size:1.5em; text-align:center;">'+roomOption+'</p>'+
			'<br>'+
			'</div>'+
			'<div>'+
			'<div style="display:inline-block;">'+
			'<span>방문자 이름: '+visitorName+'</span><br>'+
			'<span>방문자 이메일: '+visitorEmail+'</span><br>'+
			'<span>방문자 전화번호: '+visitorPhone+'</span><br>'+
			'<span>여행날짜: '+startDate+'~'+endDate+'</span><br>'+
			'<span>기준인원: '+accomMin+'명 / 최대인원'+accomMax+'명</span><br>'+
			'</div>'+
			'<div style="display:inline-block; float:right;">'+
			'</div>'+
			'<input type="hidden" value="'+addr+'" id="addr">'+
			'</div>'+
			'</div>';
			
			$(".detailPop").append(content);
			
				
			}
		});
    
    //윈도우 같은 거 띄운다.
    $(".detailPopup").show();
}


function getMap(){
	
	var addr=document.getElementById("addr").value;
	
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
	geocoder.addressSearch(addr, function(result, status) {
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
}

$(document).ready(function(){
	var bookNumber=0;

    //검은 막 띄우기
    $(".openMask").click(function(e){
        e.preventDefault();
        bookNumber=$(e.target).next().val();
        wrapWindowByMask();
    });
    $(".openBookDetail").click(function(e){
        e.preventDefault();
        bookNumber=$(e.target).next().val();
        optNum=$(e.target).next().next().val();
        var startDate=$(e.target).next().next().next().val();
        var endDate=$(e.target).next().next().next().next().val();
        wrapWindowByDetailMask(bookNumber,optNum,startDate,endDate);
        
    });

    //닫기 버튼을 눌렀을 때
    $(".cancelPopup .close").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        bookNumber=0;
        $("#pastmask, .cancelPopup").hide();  
    });       

    //검은 막을 눌렀을 때
    $("#pastmask").click(function () {  
    	bookNumber=0;
        $(this).hide();
        $(".cancelPopup").hide();
        $(".detailPopup").hide();
    });
    
    $(".cancelPopup .cancelApply").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        location.href="/tour/accomCancel?bookNumber="+bookNumber;
        $("#pastmask, .cancelPopup").hide();
    });  

});
</script>