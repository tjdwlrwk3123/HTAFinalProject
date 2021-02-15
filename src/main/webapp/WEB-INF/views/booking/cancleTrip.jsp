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
	.cancleTripWrapper{
		display: flex;
		position: relative;
	}
	
	.cancleTripWrapper .bookingSidebar{
		position: fixed;
		width: 200px;
		height: 650px;
		background: #4b4276;
		padding: 30px 0;
	}
	.cancleTripWrapper .bookingSidebar h2{
		color: #fff;
		text-align: center;
		margin-bottom: 30px;
	}
	.cancleTripWrapper .bookingSidebar ul li{
		padding: 15px;
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		list-style:none;
		padding-left:0px;
	}
	.cancleTripWrapper .bookingSidebar ul li a{
		color: #bdb8d7;
		display: block;
	}
	.cancleTripWrapper .bookingSidebar ul li a .fas{
		width: 25px;
	}
	.cancleTripWrapper .bookingSidebar ul li a .far{
		width: 25px;
	}
	.cancleTripWrapper .bookingSidebar ul li:hover{
		background: #594f8d;
	}
	.cancleTripWrapper .bookingSidebar ul li:hover a{
		color:#fff;
	}
	.cancleTripWrapper .cancleTripMain{
		width: 100%;
		margin-left: 200px;
		height: 710px;
	}
	.cancleTripWrapper .cancleTripMain #cancleTripWrap{
		height: 600px;
	}
	.cancleTripWrapper .cancleTripMain #cancleTripWrap .cancleTripList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
	}
	.cancleTripWrapper .cancleTripMain .cancleTripPaging{
		text-align: center;
		
	}
</style>
</head>
<body>

<div class="cancleTripWrapper">
	<div class="bookingSidebar">
		<h2>취소목록</h2>
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
	<div class="cancleTripMain">
		<div id="cancleTripWrap">
			<h2 style="text-align: center;">취소목록</h2>
			<c:forEach var="vo" items="${accomCancleList }" varStatus="status">
				<div class="cancleTripList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/gimgs/${aimage[status.index][0].imgsavename}" 
						style="width: 100px; height: 100px;">
					</div>
					<div style="display: inline-block;">
						<h3><a href="${cp }/accomDetail?accomNum=${detail[status.index].accom_service_number}
						&cate_number=${service[status.index].cate_number}">${vo.service_name }</a></h3>
						<span>${detail[status.index].accom_rooms_option }</span><br>
						<span>결제 취소금액:</span><span>${vo.total_price }</span><span>원</span>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="vo" items="${tourCancleList }" varStatus="status">
				<div class="cancleTripList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/gimgs/${timage[status.index][0].imgsavename}" 
						style="width: 100px; height: 100px;">
					</div>
					<div style="display: inline-block;">
						<h3><a href="${cp }/tourDetail?service_number=${option[status.index].service_number}">${vo.service_name }</a></h3>
						<span>${option[status.index].tour_option }</span><br>
						<span>결제 취소금액:</span><span>${vo.total_price }</span><span>원</span>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
</body>
</html>