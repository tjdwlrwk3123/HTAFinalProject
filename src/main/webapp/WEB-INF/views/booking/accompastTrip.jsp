<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="https://kit.fontawesome.com/b99e675b6e.js"></script> -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<style type="text/css">
	.accompastTripWrapper{
		display: flex;
		position: relative;
	}
	
	.accompastTripWrapper .bookingSidebar{
		position: fixed;
		width: 200px;
		height: 650px;
		background: #4b4276;
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
		padding-left:0px;
	}
	.accompastTripWrapper .bookingSidebar ul li a{
		color: #bdb8d7;
		display: block;
	}
	.accompastTripWrapper .bookingSidebar ul li a .fas{
		width: 25px;
	}
	.accompastTripWrapper .bookingSidebar ul li a .far{
		width: 25px;
	}
	.accompastTripWrapper .bookingSidebar ul li:hover{
		background: #594f8d;
	}
	.accompastTripWrapper .bookingSidebar ul li:hover a{
		color:#fff;
	}
	.accompastTripWrapper .accompastTripMain{
		width: 100%;
		margin-left: 200px;
		height: 710px;
	}
	.accompastTripWrapper .accompastTripMain #accompastTripWrap{
		height: 600px;
	}
	.accompastTripWrapper .accompastTripMain #accompastTripWrap .accompastTripList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
	}
	.accompastTripWrapper .accompastTripMain .accompastTripPaging{
		text-align: center;
		
	}
</style>
</head>
<body>

<div class="accompastTripWrapper">
	<div class="bookingSidebar">
		<h2>지난여행/후기</h2>
		<ul>
			<li><a href="${cp }/accomBookingCheck"><i class="fas fa-hotel"></i>숙소</a></li>
			<li><a href="${cp }/tourBookingCheck"><i class="fas fa-ticket-alt"></i>투어/티켓</a></li>
			<li>
				<a><i class="far fa-lightbulb"></i>지난여행/후기</a>
				<ul>
					<li><a href="${cp }/accompastTrip">숙박</a></li>
					<li><a href="${cp }/tourpastTrip">티켓/투어</a></li>
				</ul>
			</li>
			<li><a href="${cp }/cancelTrip"><i class="fas fa-plane-slash"></i>취소목록</a></li>
		</ul>
	</div>
	<div class="accompastTripMain">
		<div id="accompastTripWrap">
			<h2 style="text-align: center;">지난여행/후기</h2>
			<c:forEach var="vo" items="${bookingList }" varStatus="status">
				<div class="accompastTripList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/gimgs/${image[status.index][0].imgsavename}" 
						style="width: 100px; height: 100px;">
					</div>
					<div style="display: inline-block;">
						<h3><a href="${cp }/accomDetail?accomNum=${detail[status.index].accom_service_number}
						&cate_number=${service[status.index].cate_number}">${vo.service_name }</a></h3>
						<span>${detail[status.index].accom_rooms_option }</span><br>
						<span>여행날짜:</span><span>${vo.accom_startdate }~${vo.accom_enddate }</span>
						<br>
						<span>총 결제금액:</span><span>${vo.total_price }</span><span>원</span>
					</div>
					<div style="display:inline-block; position: relative; left: 100px;">
						<a href="">리뷰쓰기</a>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="accompastTripPaging">
			<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
				<c:choose>
					<c:when test="${i==pu.pageNum }">
						<a href="${cp }/accompastTrip?pageNum=${i}"><span style='color:blue'>[${i }]</span></a>
					</c:when>
					<c:otherwise>
						<a href="${cp }/accompastTrip?pageNum=${i}"><span style='color:gray'>[${i }]</span></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</div>
	</div>
</div>
</body>
</html>