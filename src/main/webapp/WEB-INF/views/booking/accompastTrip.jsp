<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<!-- <script src="https://kit.fontawesome.com/b99e675b6e.js"></script> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04c1ebe9cbcfe54ddfd424342eee90fc&libraries=services"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>


<style type="text/css">
	.accompastTripWrapper{
		display: flex;
		position: relative;
		height: 1000px;
		left: 20%;
		top: -35px;
	}
	
	.accompastTripWrapper .bookingSidebar{
		width: 250px;
		height: 940px;
		background: #4F61FF;
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
		width: 50%;
	}
	.accompastTripWrapper .accompastTripMain #accompastTripWrap{
		height: 900px;
	}
	.accompastTripWrapper .accompastTripMain #accompastTripWrap .accompastTripList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
		margin-top: 15px;
		width: 800px;
		height: 145px;
	}
	.accompastTripList div img{
		width: 145px;
		height: 145px;
		margin-bottom: 120px;
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
		<h2>????????????/??????</h2>
		<ul>
			<li><a href="${cp }/accomBookingCheck"><i class="fas fa-hotel"></i>??????</a></li>
			<li><a href="${cp }/tourBookingCheck"><i class="fas fa-ticket-alt"></i>??????/??????</a></li>
			<li><a href="${cp }/accompastTrip"><i class="far fa-lightbulb"></i>????????????/??????</a></li>
			<li><a href="${cp }/cancelTrip"><i class="fas fa-plane-slash"></i>????????????</a></li>
		</ul>
		<ul>
			<li><a href="${cp }/userinfopage">????????????</a></li>
			<li><a href="${cp }/usercoupon">?????? ??????</a></li>
			<li><a href="${cp }/wishlist">???????????????</a></li>
		</ul>
	</div>
	<div class="accompastTripMain">
		<div id="accompastTripWrap">
			<h2 style="text-align: center; height: 30px; margin-bottom: 50px;">????????????/??????</h2>
			<c:forEach var="vo" items="${bookingList }" varStatus="status">
				<div class="accompastTripList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/upload/${image[status.index][0].imgsavename}" 
						onselect="return false" ondragstart="return false">
					</div>
					<div style="display: inline-block; width:450px; position: relative; bottom: 30px;">
						<div>
						<h3 style="display: inline-block;"><a href="${cp }/accomDetail?accomNum=${detail[status.index].accom_service_number}
						&cate_number=${service[status.index].cate_number}">${vo.service_name }</a></h3>
						<span>(${detail[status.index].accom_rooms_option })</span>
						</div>
						<span>????????????:</span><span>${vo.accom_startdate }~${vo.accom_enddate }</span>
						<br>
						<c:choose>
						<c:when test="${vo.coupon_usecondition!=null }">
						<span>?????? ??????:</span><span>${vo.coupon_usecondition }</span><br>
						</c:when>
						<c:otherwise>
						<br>
						</c:otherwise>
						</c:choose>
						<span>??? ????????????:</span><span>${vo.total_price+vo.point_useamount }</span><span>???</span>
						<c:if test="${vo.point_useamount!='0' }">
						<span style="font-size: 0.5em;">(????????? ????????????:</span><span style="font-size: 0.5em;">${vo.point_useamount }???)</span><br>
						</c:if>
					</div>
					<div style="display:inline-block; position: relative; left:40px;">
						<a href="#" class="openBookDetail">????????????</a>
						<input type="hidden" value="${vo.accom_book_number }">
						<input type="hidden" value="${vo.accom_option_number }">
						<input type="hidden" value="${vo.accom_startdate }">
						<input type="hidden" value="${vo.accom_enddate }">
					</div>
					<div style="display:inline-block; position: relative; left: 70px;">
						<a href="${cp }/review/insert?cate_number=${service[status.index].cate_number}&service_number=${detail[status.index].accom_service_number}&service_name=${vo.service_name }">????????????</a>
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
<input type="button" onclick="getMap()" value="????????????" style="margin-left: 220px;" id="gMap">
</div>

<script>
function wrapWindowByDetailMask(bookNumber,optNum,startDate,endDate){
	 
    //????????? ????????? ????????? ?????????.
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  

    //???????????? ????????? ????????? ?????? ????????? ????????? ?????? ????????? ?????????.
    $("#pastmask").css({"width":maskWidth,"height":maskHeight});  

    //??????????????? ?????? - ?????? 0????????? ????????? ????????? 60% ??????????????? ??????.

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
			'<span>????????? ??????: '+visitorName+'</span><br>'+
			'<span>????????? ?????????: '+visitorEmail+'</span><br>'+
			'<span>????????? ????????????: '+visitorPhone+'</span><br>'+
			'<span>????????????: '+startDate+'~'+endDate+'</span><br>'+
			'<span>????????????: '+accomMin+'??? / ????????????'+accomMax+'???</span><br>'+
			'</div>'+
			'<div style="display:inline-block; float:right;">'+
			'</div>'+
			'<input type="hidden" value="'+addr+'" id="addr">'+
			'</div>'+
			'</div>';
			
			$(".detailPop").append(content);
			
				
			}
		});
    
    //????????? ?????? ??? ?????????.
    $(".detailPopup").show();
}


function getMap(){
	
	var addr=document.getElementById("addr").value;
	
	var mapContainer = document.getElementById('map'), // ????????? ????????? div

	mapOption = {
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
	    level: 3 
	};

	//????????? ???????????????    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	//??????-?????? ?????? ????????? ???????????????
	var geocoder = new kakao.maps.services.Geocoder();


	//????????? ????????? ???????????????
	geocoder.addressSearch(addr, function(result, status) {
		// ??????????????? ????????? ??????????????? 
		 if (status === kakao.maps.services.Status.OK) {
		    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		    // ??????????????? ?????? ????????? ????????? ???????????????
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: coords
		    });
		    // ?????????????????? ????????? ?????? ????????? ???????????????
		    var infowindow = new kakao.maps.InfoWindow({
		        content: '<div style="width:150px;text-align:center;padding:6px 0;">????????????</div>'
		    });
		    infowindow.open(map, marker);
		    // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
		    map.setCenter(coords);
		} 
	});
}

$(document).ready(function(){
	var bookNumber=0;

    //?????? ??? ?????????
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

    //?????? ????????? ????????? ???
    $(".cancelPopup .close").click(function (e) {  
        //?????? ??????????????? ???????????? ????????? ??????.
        e.preventDefault();
        bookNumber=0;
        $("#pastmask, .cancelPopup").hide();  
    });       

    //?????? ?????? ????????? ???
    $("#pastmask").click(function () {  
    	bookNumber=0;
        $(this).hide();
        $(".cancelPopup").hide();
        $(".detailPopup").hide();
    });
    
    $(".cancelPopup .cancelApply").click(function (e) {  
        //?????? ??????????????? ???????????? ????????? ??????.
        e.preventDefault();
        location.href="/tour/accomCancel?bookNumber="+bookNumber;
        $("#pastmask, .cancelPopup").hide();
    });  

});
</script>