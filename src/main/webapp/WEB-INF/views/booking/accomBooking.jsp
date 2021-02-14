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
		padding-left:0px;
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
	}
	.accomBookingWrapper .accomBookingMain .accomPaging{
		text-align: center;
		
	}
</style>
</head>
<body>

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
					<li><a href="${cp }/tourpastTrip">티켓/투어</a></li>
				</ul>
			</li>
			<li><a href="${cp }/cancleTrip"><i class="fas fa-plane-slash"></i>취소목록</a></li>
		</ul>
	</div>
	<div class="accomBookingMain">
		<div id="accomListWrap">
			<h2 style="text-align: center;">숙소 예약내역</h2>
			<c:forEach var="vo" items="${bookingList }" varStatus="status">
				<div class="accomBookList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/gimgs/${image[status.index][0].imgsavename}" 
						style="width: 100px; height: 100px;">
					</div>
					<div style="display: inline-block;">
						<h3><a href="${cp }/accomDetail?">${vo.service_name }</a></h3>
						<span>${detail[status.index].accom_rooms_option }</span><br>
						<span>예약날짜:</span><span>${vo.accom_startdate }~${vo.accom_enddate }</span>
						<br>
						<span>총 결제금액:</span><span>${vo.total_price }</span><span>원</span>
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
</body>
</html>