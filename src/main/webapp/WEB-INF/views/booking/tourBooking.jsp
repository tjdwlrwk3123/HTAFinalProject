<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<!-- <script src="https://kit.fontawesome.com/b99e675b6e.js"></script> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b7621e8665f6a2b7f8fcf343ba118b6&libraries=services"></script>

<!-- 구글폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Stylish&display=swap" rel="stylesheet">

<style type="text/css">
	*{
		font-family: 'Stylish', sans-serif;
	}
	.tourBookingWrapper{
		display: flex;
		position: relative;
		height: 1000px;
		background-color: #F3F3F3;
	}
	
	.tourBookingWrapper .bookingSidebar{
		width: 250px;
		height: 940px;
		background: #FFCA6C;
		padding: 30px 0;
	}
	.tourBookingWrapper .bookingSidebar h2{
		color: #fff;
		text-align: center;
		margin-bottom: 30px;
	}
	.tourBookingWrapper .bookingSidebar ul li{
		padding: 15px;
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		list-style:none;
		padding-left:10px;
	}
	.tourBookingWrapper .bookingSidebar ul li a{
		color: #5853EB;
		display: block;
		text-decoration: none;
	}
	.tourBookingWrapper .bookingSidebar ul li a .fas{
		width: 25px;
	}
	.tourBookingWrapper .bookingSidebar ul li a .far{
		width: 25px;
	}
	.tourBookingWrapper .bookingSidebar ul li:hover{
		background: #FFE08C;
	}
	.tourBookingWrapper .bookingSidebar ul li:hover a{
		color:black;
	}
	.tourBookingWrapper .tourBookingMain{
		width: 100%;
		height: 1000px;
		background-color: #F3F3F3;
	}
	.tourBookingWrapper .tourBookingMain #tourListWrap{
		height: 900px;
	}
	.tourBookingWrapper .tourBookingMain #tourListWrap .tourBookList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
		margin-top: 15px;
	}
	.tourBookList div img{
		width: 145px;
		height: 145px;
	}
	.tourBookList a{
		text-decoration: none;
		color: black;
	}
	.tourBookList a:hover{
		font-weight: 800;
	}
	.tourBookingWrapper .tourBookingMain .tourPaging{
		text-align: center;
		
	}
	.tourPaging i{
		color:#C98AFF;
		margin-right: 5px;
	}
	
	#tourmask {  
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
    width:600px;
    height:500px;
    background-color:#FFF;
    z-index:10000;   
 	}
 	.cancelPopup a{
 		text-decoration: none;
		color: black;
		border: 1px solid black;
		border-radius:5px;
		display:block;
		width: 50px;
		height: 30px;
		padding-top: 15px;
 	}
 	.cancelPopup a:hover{
		transition-duration:500ms;
		font-weight: 800;
		border: 1px solid black;
		background-color: red;
		color: white;
		
	}
 	.detailPopup{
    display: none;
    position:absolute;
    left:65%;
    top:200px;
    width:500px;
    margin-left: -500px;
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

<div class="tourBookingWrapper">
	<div class="bookingSidebar">
		<h2>예약내역</h2>
		<ul>
			<li><a href="${cp }/accomBookingCheck"><i class="fas fa-hotel"></i>숙소</a></li>
			<li><a href="${cp }/tourBookingCheck"><i class="fas fa-ticket-alt"></i>투어/티켓</a></li>
			<li><a href="${cp }/accompastTrip"><i class="far fa-lightbulb"></i>지난여행/후기</a></li>
			<li><a href="${cp }/cancelTrip"><i class="fas fa-plane-slash"></i>취소목록</a></li>
		</ul>
	</div>
	<div class="tourBookingMain">
		<div id="tourListWrap">
			<h2 style="text-align: center; height:30px; margin-bottom: 50px;">투어 예약내역</h2>
			<c:forEach var="vo" items="${bookingList }" varStatus="status">
				<div class="tourBookList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/upload/${image[status.index][0].imgsavename}">
					</div>
					<div style="display: inline-block; width:320px; position: relative; bottom: 30px;">
						<h3><a href="${cp }/tourDetail?service_number=${vo.service_number}&cate_number=1">${vo.service_name }</a></h3>
						<span>유효기간:</span><span>${vo.tour_startdate }~${vo.tour_enddate }</span>
						<br>
						<c:choose>
						<c:when test="${vo.coupon_usecondition!=null }">
						<span>사용 쿠폰:</span><span>${vo.coupon_usecondition }</span><br>
						</c:when>
						<c:otherwise>
						<br>
						</c:otherwise>
						</c:choose>
						<span>총 결제금액:</span><span>${vo.total_price+vo.point_useamount}</span><span>원</span>
						<c:if test="${vo.point_useamount!='0' }">
						<span style="font-size: 0.5em;">(포인트 사용금액:</span><span style="font-size: 0.5em;">${vo.point_useamount }원)</span><br>
						</c:if>
					</div>
					<div style="display:inline-block; position: relative; right: 15px;">
					<div style="display:inline-block; position: relative; left:10px;">
						<input type="hidden" value="${vo.service_number }">
						<a href="#" class="openBookDetail">상세보기</a>
						<input type="hidden" value="${vo.tour_book_number }">
						<input type="hidden" value="${vo.tour_startdate }">
						<input type="hidden" value="${vo.tour_enddate }">
						<input type="hidden" value="${vo.bookername }">
						<input type="hidden" value="${vo.bookerphone }">
					</div>
					<div style="display:inline-block; position: relative; left:40px;">
						<a href="#" class="openMask">결제취소</a>
						<input type="hidden" value="${vo.tour_book_number }">
					</div>
					<div style="display:inline-block; position: relative; left:70px;">
						<span>리뷰쓰기</span>
					</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="tourPaging">
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<c:choose>
					<c:when test="${i==pu.pageNum }">
						<a href="${cp }/tourBookingCheck?pageNum=${i}"><i class="fas fa-circle fa-la"></i></a>
					</c:when>
					<c:otherwise>
						<a href="${cp }/tourBookingCheck?pageNum=${i}"><i class="fas fa-circle fa-sm"></i></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
	</div>
</div>

<div id="tourmask">
</div>

<div class="detailPopup">
<div class="detailPop"></div>
<div id="map" style="width:350px; height:200px; margin:auto;">
</div>
<input type="button" onclick="getMap()" value="지도보기" style="margin-left: 220px;" id="gMap">

</div>

<div class="cancelPopup">
    <p style="width:600px;height:300px;text-align:center;vertical-align:middle;">
    	<span style="font-weight:bold; color: red;">규정에 따라 취소 수수료가 발생할 수 있습니다.</span><br><br><br>
    	유효기간이 없는 티켓인 경우<br>
    	- 구입 후 7일 이내 : 취소 수수료 무료<br>
    	- 구입 후 7일 이후 : 취소 수수료 10%<br><br>
    	유효기간이 있는 티켓인 경우<br>
    	- 구입 후 7일 이내 : 취소 수수료 무료<br>
    	- 유효기간 7일 이전 : 취소 수수료 10%<br>
    	- 유효기간 7일 이내 : 취소 수수료 100%<br><br>
		<span>사용한 포인트는 환불되나, 사용한 쿠폰은 환불되지 않고 소멸합니다.</span><br>
		<span style="color:red;">부분취소의 경우 서비스관리자에게 문의 바랍니다.</span>
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
    $("#tourmask").css({"width":maskWidth,"height":maskHeight});  

    //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    $("#tourmask").fadeIn(0);      
    $("#tourmask").fadeTo("slow",0.6);    

    //윈도우 같은 거 띄운다.
    $(".cancelPopup").show();

}

function wrapWindowByDetailMask(bookNumber,serviceNum,startdate,enddate,bookerName,bookerPhone){
	 
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $("#tourmask").css({"width":maskWidth,"height":maskHeight});  

    //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    $("#tourmask").fadeIn(0);      
    $("#tourmask").fadeTo("slow",0.6);
	
    
    $.ajax({
		url: '${cp}/tourBookDetail',
		dataType: 'json',
		data: {"bookNumber":bookNumber,"serviceNum":serviceNum},
		success: function(data) {
			$(".detailPop").empty();
			for(let i=0;i<data.detail.length;i++){
				var optName=data.detail[i].tour_option;
				var count=data.count[i];
				var price=data.detail[i].tour_price;
				var addr=data.addr;
				if(enddate==''){
					var expire='<span>유효기간:'+startdate+'~</span><br>';
				}else{
					var expire='<span>유효기간:'+startdate+'~'+enddate+'</span><br>';
				}
				
				var content='<div style="margin:20px;">'+
				'<div style="display:inline-block">'+
				'<span style="font-size:1.3em;">'+optName+'/</span>'+
				'<span>'+count+'장</span><br>'+
				'</div>'+
				'</div>';
				
				$(".detailPop").append(content);
			}
			var endcontent=
				'<div style="text-align:center"'+
				'<input type="hidden" value="'+addr+'" id="addr">'+
				expire+
				'<span>예약자:'+bookerName+'</span><br>'+
				'<span>예약자 연락처:'+bookerPhone+'</span><br>'+
				'</div>';
			$(".detailPop").append(endcontent);
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
	var serviceNum=0;

    //검은 막 띄우기
    $(".openMask").click(function(e){
        e.preventDefault();
        bookNumber=$(e.target).next().val();
        wrapWindowByMask();
    });
    
    //검은 막 띄우기
    $(".openBookDetail").click(function(e){
        e.preventDefault();
        bookNumber=$(e.target).next().val();
        serviceNum=$(e.target).prev().val();
        var startdate=$(e.target).next().next().val();
        var enddate=$(e.target).next().next().next().val();
        var bookerName=$(e.target).next().next().next().next().val();
        var bookerPhone=$(e.target).next().next().next().next().next().val();
        console.log(startdate);
        console.log(enddate);
        console.log(bookerName);
        console.log(bookerPhone);
        wrapWindowByDetailMask(bookNumber,serviceNum,startdate,enddate,bookerName,bookerPhone);
    });

    //닫기 버튼을 눌렀을 때
    $(".cancelPopup .close").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        bookNumber=0;
        serviceNum=0;
        $("#tourmask, .cancelPopup").hide();  
    });

    //검은 막을 눌렀을 때
    $("#tourmask").click(function () {  
    	bookNumber=0;
    	serviceNum=0;
        $(this).hide();
        $(".cancelPopup").hide();
        $(".detailPopup").hide();
    });
    
    $(".cancelPopup .cancelApply").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        location.href="/tour/tourCancel?bookNumber="+bookNumber;
        $("#tourmask, .cancelPopup").hide();
    });  

});
</script>