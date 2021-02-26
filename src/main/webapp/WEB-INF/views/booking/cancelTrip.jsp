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

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Stylish&display=swap" rel="stylesheet">


<style type="text/css">
	*{
		font-family: 'Stylish', sans-serif;
	}
	.cancelTripWrapper{
		display: flex;
		position: relative;
		height: 1000px;
		background-color: #F3F3F3;
	}
	
	.cancelTripWrapper .bookingSidebar{
		width: 250px;
		height: 940px;
		background: #4B70DD;
		padding: 30px 0;
	}
	.cancelTripWrapper .bookingSidebar h2{
		color: #fff;
		text-align: center;
		margin-bottom: 30px;
	}
	.cancelTripWrapper .bookingSidebar ul li{
		padding: 15px;
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		list-style:none;
		padding-left:10px;
	}
	.cancelTripWrapper .bookingSidebar ul li a{
		color: white;
		display: block;
		text-decoration: none;
	}
	.cancelTripWrapper .bookingSidebar ul li a .fas{
		width: 25px;
	}
	.cancelTripWrapper .bookingSidebar ul li a .far{
		width: 25px;
	}
	.cancelTripWrapper .bookingSidebar ul li:hover{
		background: #6799FF;
	}
	.cancelTripWrapper .bookingSidebar ul li:hover a{
		color:black;
	}
	.cancelTripWrapper .cancelTripMain{
		width: 100%;
		height: 1000px;
		background-color: #F3F3F3;
	}
	.cancelTripWrapper .cancelTripMain #cancelTripWrap{
		height: 900px;
	}
	.cancelTripWrapper .cancelTripMain #cancelTripWrap .cancelTripList{
		border-bottom: 1px solid rgba(0,0,0,0.05);
		border-top: 1px solid rgba(225,225,225,0.05);
		margin-left: 50px;
		margin-top: 15px;
	}
	.cancelTripWrapper .cancelTripMain .cancelTripPaging{
		text-align: center;	
	}
	.cancelTripList div img{
		width: 145px;
		height: 145px;
	}
	.cancelTripList a{
		text-decoration: none;
		color: black;
	}
	.cancelTripList a:hover{
		font-weight: 800;
	}
</style>
</head>
<body>

<div class="cancelTripWrapper">
	<div class="bookingSidebar">
		<h2>취소목록</h2>
		<ul>
			<li><a href="${cp }/accomBookingCheck"><i class="fas fa-hotel"></i>숙소</a></li>
			<li><a href="${cp }/tourBookingCheck"><i class="fas fa-ticket-alt"></i>투어/티켓</a></li>
			<li><a href="${cp }/accompastTrip"><i class="far fa-lightbulb"></i>지난여행/후기</a></li>
			<li><a href="${cp }/cancelTrip"><i class="fas fa-plane-slash"></i>취소목록</a></li>
		</ul>
	</div>
	<div class="cancelTripMain">
		<div id="cancelTripWrap">
			<h2 style="text-align: center;">취소목록</h2>
			<c:forEach var="vo" items="${accomCancelList }" varStatus="status">
				<div class="cancelTripList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/upload/${aimage[status.index][0].imgsavename}">
					<div style="display: inline-block; width: 320px; position: relative; bottom: 30px;">
						<h3><a href="${cp }/accomDetail?accomNum=${detail[status.index].accom_service_number}
						&cate_number=${service[status.index].cate_number}">${vo.service_name }</a></h3>
						<span>${detail[status.index].accom_rooms_option }</span><br>
						<span>취소 수수료:</span><span>${vo.total_price }</span><span>원</span>
					</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="vo" items="${tourCancelList }" varStatus="status">
				<div class="cancelTripList">
					<div style="display: inline-block;">
						<img src="${cp}/resources/upload/${timage[status.index][0].imgsavename}">
					</div>
					<div style="display: inline-block; width: 320px; position: relative; bottom: 30px;">
						<h3><a href="${cp }/tourDetail?service_number=${vo.service_number}&cate_number=1">${vo.service_name }</a></h3>
						<span>취소 수수료:</span><span>${vo.total_price }</span><span>원</span>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
</body>
</html>