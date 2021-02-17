<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<!-- <script src="https://kit.fontawesome.com/b99e675b6e.js"></script> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<style type="text/css">
	.tourBookingWrapper{
		display: flex;
		position: relative;
	}
	
	.tourBookingWrapper .bookingSidebar{
		position: fixed;
		width: 200px;
		height: 650px;
		background: #4b4276;
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
		color: #bdb8d7;
		display: block;
	}
	.tourBookingWrapper .bookingSidebar ul li a .fas{
		width: 25px;
	}
	.tourBookingWrapper .bookingSidebar ul li a .far{
		width: 25px;
	}
	.tourBookingWrapper .bookingSidebar ul li:hover{
		background: #594f8d;
	}
	.tourBookingWrapper .bookingSidebar ul li:hover a{
		color:#fff;
	}
	.tourBookingWrapper .tourBookingMain{
		width: 100%;
		margin-left: 200px;
		height: 710px;
	}
	.tourBookingWrapper .tourBookingMain #tourListWrap{
		height: 600px;
	}
	.tourBookingWrapper .tourBookingMain #tourListWrap .tourBookList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
	}
	.tourBookingWrapper .tourBookingMain .tourPaging{
		text-align: center;
		
	}
	
	#mask {  
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

<div class="tourBookingWrapper">
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
	<div class="tourBookingMain">
		<div id="tourListWrap">
			<h2 style="text-align: center;">투어 예약내역</h2>
			<c:forEach var="vo" items="${bookingList }" varStatus="status">
				<div class="tourBookList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/gimgs/${image[status.index][0].imgsavename}" 
						style="width: 100px; height: 100px;">
					</div>
					<div style="display: inline-block;">
						<h3><a href="${cp }/tourDetail?service_number=${vo.service_number}">${vo.service_name }</a></h3>
						<span>유효기간:</span><span>${vo.tour_startdate }~${vo.tour_enddate }</span>
						<br>
						<span>사용 쿠폰:</span><span>${vo.coupon_usecondition }</span><br>
						<span>총 결제금액:</span><span>${vo.total_price+vo.point_useamount}</span><span>원</span>
					</div>
					<div style="display:inline-block; position: relative; left: 100px;">
						<a href="#" class="openBookDetail">상세보기</a>
						<input type="hidden" value="${vo.tour_book_number }">
					</div>
					<div style="display:inline-block; position: relative; left: 125px;">
						<a href="#" class="openMask">결제취소</a>
						<input type="hidden" value="${vo.tour_book_number }">
					</div>
					<div style="display:inline-block; position: relative; left: 150px;">
						<span>리뷰쓰기</span>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="tourPaging">
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<c:choose>
					<c:when test="${i==pu.pageNum }">
						<a href="${cp }/tourBookingCheck?pageNum=${i}"><span style='color:blue'>[${i }]</span></a>
					</c:when>
					<c:otherwise>
						<a href="${cp }/tourBookingCheck?pageNum=${i}"><span style='color:gray'>[${i }]</span></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
	</div>
</div>

<div id="mask">
</div>

<div class="detailPopup">
</div>

<div class="cancelPopup">
    <p style="width:500px;height:300px;text-align:center;vertical-align:middle;">
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
    $("#mask").css({"width":maskWidth,"height":maskHeight});  

    //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    $("#mask").fadeIn(0);      
    $("#mask").fadeTo("slow",0.6);    

    //윈도우 같은 거 띄운다.
    $(".cancelPopup").show();

}

function wrapWindowByDetailMask(bookNumber){
	 
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $("#mask").css({"width":maskWidth,"height":maskHeight});  

    //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

    $("#mask").fadeIn(0);      
    $("#mask").fadeTo("slow",0.6);    
	
    
    $.ajax({
		url: '${cp}/tourBookDetail',
		dataType: 'json',
		data: {"bookNumber":bookNumber},
		success: function(data) {
			$(".detailPopup").empty();
			for(let i=0;i<data.detail.length;i++){
				var optName=data.detail[i].tour_option;
				var count=data.count[i];
				var price=data.detail[i].tour_price;
				var discount=data.detail[i].discount;
				console.log(discount);
				if(discount!=null){
					price-=price*(discount*0.01);
				}
				var content='<div style="margin:20px;">'+
				'<div style="display:inline-block">'+
				'<span style="font-size:1.3em;">'+optName+'/</span>'+
				'<span>'+count+'장</span><br>'+
				'</div>'+
				'<div style="display:inline-block; float:right;">'+
				'<span>실 가격: '+price+'원</span>'+
				'</div>'+
				'</div>';
				
				$(".detailPopup").append(content);
				
			}
		}
	});
    
    //윈도우 같은 거 띄운다.
    $(".detailPopup").show();

}

$(document).ready(function(){
	var bookNumber=0;

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
        wrapWindowByDetailMask(bookNumber);
    });

    //닫기 버튼을 눌렀을 때
    $(".cancelPopup .close").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        bookNumber=0;
        $("#mask, .cancelPopup").hide();  
    });

    //검은 막을 눌렀을 때
    $("#mask").click(function () {  
    	bookNumber=0;
        $(this).hide();
        $(".cancelPopup").hide();
        $(".detailPopup").hide();
    });
    
    $(".cancelPopup .cancelApply").click(function (e) {  
        //링크 기본동작은 작동하지 않도록 한다.
        e.preventDefault();
        location.href="/tour/tourCancel?bookNumber="+bookNumber;
        $("#mask, .cancelPopup").hide();
    });  

});
</script>