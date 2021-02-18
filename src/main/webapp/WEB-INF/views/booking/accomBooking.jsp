<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<!-- <script src="https://kit.fontawesome.com/b99e675b6e.js"></script> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b7621e8665f6a2b7f8fcf343ba118b6&libraries=services"></script>
<style type="text/css">
	.accomBookingWrapper{
		display: flex;
		position: relative;
	}
	
	.accomBookingWrapper .bookingSidebar{
		position: fixed;
		width: 200px;
		height: 650px;
		background: #4b4276;
		padding: 30px 0;
	}
	.accomBookingWrapper .bookingSidebar h2{
		color: #fff;
		text-align: center;
		margin-bottom: 30px;
	}
	.accomBookingWrapper .bookingSidebar ul li{
		padding: 15px;
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		list-style:none;
		padding-left:10px;
	}
	.accomBookingWrapper .bookingSidebar ul li a{
		color: #bdb8d7;
		display: block;
	}
	.accomBookingWrapper .bookingSidebar ul li a .fas{
		width: 25px;
	}
	.accomBookingWrapper .bookingSidebar ul li a .far{
		width: 25px;
	}
	.accomBookingWrapper .bookingSidebar ul li:hover{
		background: #594f8d;
	}
	.accomBookingWrapper .bookingSidebar ul li:hover a{
		color:#fff;
	}
	.accomBookingWrapper .accomBookingMain{
		width: 100%;
		margin-left: 200px;
		height: 710px;
	}
	.accomBookingWrapper .accomBookingMain #accomListWrap{
		height: 600px;
	}
	.accomBookingWrapper .accomBookingMain #accomListWrap .accomBookList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
		margin-top: 15px;
	}
	.accomBookingWrapper .accomBookingMain .accomPaging{
		text-align: center;
		
	}
	
	#accommask {  
    position:absolute;  
    z-index:9000;  
    background-color:#000;  
    display:none;  
    left:0;
    top:0;
	} 
/* 팝업으로 뜨는 윈도우 css  */ 
	.cancelPopup{
    display: none;
    position:absolute;
    left:65%;
    top:200px;
    margin-left: -500px;
    width:500px;
    height:400px;
    background-color:#FFF;
    z-index:10000;   
 	}
 	.detailPopup{
    display: none;
    position:absolute;
    left:65%;
    top:200px;
    margin-left: -500px;
    width:500px;
    height:400px;
    background-color:#FFF;
    z-index:10000;   
 	}

</style>

<div class="accomBookingWrapper">
	<div class="bookingSidebar">
		<h2>예약내역</h2>
		<ul>
			<li><a href="${cp }/accomBookingCheck"><i class="fas fa-hotel"></i>숙소</a></li>
			<li><a href="${cp }/tourBookingCheck"><i class="fas fa-ticket-alt"></i>투어/티켓</a></li>
			<li>
				<a><i class="far fa-lightbulb"></i>지난여행/후기</a>
				<ul>
					<li><a href="${cp }/accompastTrip">숙박</a></li>
				</ul>
			</li>
			<li><a href="${cp }/cancelTrip"><i class="fas fa-plane-slash"></i>취소목록</a></li>
		</ul>
	</div>
	<div class="accomBookingMain">
		<div id="accomListWrap">
			<h2 style="text-align: center; height: 50px;">숙소 예약내역</h2>
			<c:forEach var="vo" items="${bookingList }" varStatus="status">
				<div class="accomBookList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/gimgs/${image[status.index][0].imgsavename}" 
						style="width: 100px; height: 100px;">
					</div>
					<div style="display: inline-block; width:320px;">
						<h3><a href="${cp }/accomDetail?accomNum=${detail[status.index].accom_service_number}
						&cate_number=${service[status.index].cate_number}">${vo.service_name }</a></h3>
						<span>${detail[status.index].accom_rooms_option }</span><br>
						<span>예약날짜:</span><span>${vo.accom_startdate }~${vo.accom_enddate }</span>
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
					<div style="display:inline-block; position: relative; left:10px;">
						<a href="#" class="openBookDetail">상세보기</a>
						<input type="hidden" value="${vo.accom_book_number }">
						<input type="hidden" value="${vo.accom_option_number }">
					</div>
					<div style="display:inline-block; position: relative; left:40px;">
						<a href="#" class="openMask">예약취소</a>
						<input type="hidden" value="${vo.accom_book_number }">
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="accomPaging">
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<c:choose>
					<c:when test="${i==pu.pageNum }">
						<a href="${cp }/accomBookingCheck?pageNum=${i}"><span style='color:blue'>[${i }]</span></a>
					</c:when>
					<c:otherwise>
						<a href="${cp }/accomBookingCheck?pageNum=${i}"><span style='color:gray'>[${i }]</span></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
	</div>
</div>

<div id="accommask">
</div>

<div class="detailPopup">
<div class="detailPop"></div>
<input type="button" onclick="getMap()" value="지도보기" style="margin-left: 220px;">
<div id="map" style="width:350px; height:200px; margin:auto;">
</div>
</div>
<div class="cancelPopup">
    <p style="width:500px;height:300px;text-align:center;vertical-align:middle;">
    	<span style="font-weight:bold; color: red;">규정에 따라 취소 수수료가 발생할 수 있습니다.</span><br><br><br>
    	- 체크인 6일 전 : 취소 수수료 없음<br>
    	- 체크인 5일 전 : 취소 수수료 10%<br>
		- 체크인 4일 전 : 취소 수수료 20%<br>
		- 체크인 3일 전 : 취소 수수료 30%<br>
		- 체크인 2일 전 : 취소 수수료 50%<br>
		- 체크인 1일 전 : 취소 수수료 70%<br>
		- 체크인 당일 : 취소 수수료 100%<br><br>
		<span>사용한 포인트는 환불되나, 사용한 쿠폰은 환불되지 않고 소멸합니다.</span>
    </p>
    <p style="text-align:center;">취소하시겠습니까?</p>
    <div style="text-align:center;">
    <p style="background:#ffffff; padding:20px; display: inline-block;"><a href="#" class="cancelApply">예</a></p>
    <p style="background:#ffffff; padding:20px; display: inline-block;"><a href="#" class="close">닫기</a></p>
    </div>
</div>


<script>
function wrapWindowByMask(){
	 
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $("#accommask").css({"width":maskWidth,"height":maskHeight});  

    //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    $("#accommask").fadeIn(0);      
    $("#accommask").fadeTo("slow",0.6);    

    //윈도우 같은 거 띄운다.
    $(".cancelPopup").show();

}

function wrapWindowByDetailMask(bookNumber){
	 
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $("#accommask").css({"width":maskWidth,"height":maskHeight});  

    //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    $("#accommask").fadeIn(0);      
    $("#accommask").fadeTo("slow",0.6);    
	
    
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
			'</div>'+
			'<div style="display:inline-block; float:right;">'+
			'<span>기본 가격: '+price+'원</span>'+
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
        wrapWindowByDetailMask(bookNumber,optNum);
        
    });

    //닫기 버튼을 눌렀을 때
    $(".cancelPopup .close").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        bookNumber=0;
        $("#accommask, .cancelPopup").hide();  
    });       

    //검은 막을 눌렀을 때
    $("#accommask").click(function () {  
    	bookNumber=0;
        $(this).hide();
        $(".cancelPopup").hide();
        $(".detailPopup").hide();
    });
    
    $(".cancelPopup .cancelApply").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        location.href="/tour/accomCancel?bookNumber="+bookNumber;
        $("#accommask, .cancelPopup").hide();
    });  

});
</script>