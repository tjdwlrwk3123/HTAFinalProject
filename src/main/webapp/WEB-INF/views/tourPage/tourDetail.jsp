<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script> 
  
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/174a2d5b3b.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=def622213948a607b8b4062c406ef1e5&libraries=services"></script>

<!-- 이미지 슬라이드 --> 
<!-- jQuery 1.8 or later, 33 KB -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Fotorama from CDNJS, 19 KB -->
<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>

<style>
	
	#tourDetail_wrapper{
		width:1000px; 
		position:relative;
		margin:auto;
		display: flex;
		background-color:white;
/* 		드래그 막기 */
		-ms-user-select: none;
		-moz-user-select: -moz-none;
		-webkit-user-select: none; 
		-khtml-user-select: none; 
		user-select:none;

	}
	#title{
		width:100%; 
		height:130px; 
		position:relative; 
		padding:20px; 
		border-bottom:1px solid gray;
		display:table;
		background-color: white;
	}
	#content_wrapper{
		width:675px; 
		position:relative; 
	}
	#wish_wrapper{
		width:300px; 
		height:150px; 
		position: sticky;
		margin-left:25px;
		top:50px; 
		border:2px solid gray;
		background-color:white;
		display:table;
	}
	#summaryBox{
		padding:15px;
		text-align: center;
	}
	#wishbox{
		width:100%;
		maring:auto;
		text-align: center;
		display:table-row;
	}
	.btn{
		position:relative;
		width:200px;
		margin:10px;
	}
	
	#starbox{
		width:100%; 
		position:relative; 
		margin:10px;
		margin-top:30px;
		right:10px; 
		background-color: white; 
	}
	
	#option{
		width:100%; 
		margin:auto; 
		position:relative; 
		border-bottom:1px solid gray; 
		background-color: white;
		user-select:none;
		padding-top:15px;
		padding-bottom:15px;
	}
	
	#optionTable{
		width:100%;
		border-collapse: separate;
		border-spacing:10px;
		vertical-align: middle;
	}
	.optionTable td:nth-child(1) {
		width: 50%;
	}
	.optionTable td:nth-child(2){
		width: 15%; text-align: center; 
	}
	.optionTable td:nth-child(3){
		width: 20%; text-align: center; 
	}
	.optionTable td:nth-child(4){
		width: 15%; text-align: center;
	}
	#detail{
		width:100%; 
		position:relative; 
		margin:auto;
		background-color: gray;
	}
	#photozone{
		width:100%; 
		position:relative;
		margin:auto; 
		align-content:center; 
		border-bottom:1px solid gray; 
		background-color: white;
	}
	#thumbnailbox{
		width:100%;
		position:relative; 
		margin:auto; 
		text-align:center; 
		align-content:center; 
		align-items:center;
		padding-top:15px;
		padding-bottom:15px;
	}
	#fotorama{
		width:100%;
		margin:auto;
	}
	
	#info{
		width:100%;
		position:relative; 
		border-bottom:1px solid gray; 
		background-color: white;
	}
	#contentbox{
		width:100%; 
		position:relative;
		padding:20px;
		border-bottom:1px solid gray;
		background-color: white;
	}
	#infobox{
		width:100%; 
		position:relative;
		padding:20px;
		border-bottom:1px solid gray;
		background-color: white;
	}
		
	#rulebox{
		width:100%;
		position:relative; 
		padding:20px; 
		border-bottom:1px solid gray; 
		background-color: white;
	}
	#reviewbox{
		width:100%; 
		position:relative; 
		padding:20px; 
		background-color: white;
	}
	#mapbox{
		width:500px; 
		height:330px; 
		margin-top:20px; 
		border:2px solid black; 
		overflow: hidden;
	}
	#map{
		width:490px;
		height:300px; 
		margin:auto;
	}
	#basket{
		text-align:right;
	}
	.sign{
		margin-left:5px;
		margin-right:5px;
	}
	.starImg{
		width:30px;
		vertical-align: top;
	}
	
	.reviewStar{
		width:20px;
		vertical-align: -15%;
	}
	
	h4{
		margin-bottom: 20px;
		font-weight: 600;
	}
	
	.card{
		border:none;
	}
	.row{
		box-shadow: 3px 3px 5px 5px gray;
	}
	.tourReviewImg{
		margin-top:5px;
		width:90px;
		height:90px;
	}
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
	 private int service_number;
	 private int tour_price;
	 private int tour_option_index;
	 private String tour_option;
	 private int tour_amount; 
	 private int discount;
	 
	 
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

<!-- 					@RequestParam(value="serviceName")  -->
<!-- 					@RequestParam(value="cateNumber")  -->
<!-- 					@RequestParam(value="serviceNumber")  -->
<!-- 					@RequestParam(value="startDate", required = false -->
<!-- 					@RequestParam(value="endDate", required = false)  -->
<!-- 					@RequestParam(value="option_index") -->
<!-- 					@RequestParam(value="service_option")  -->
<!-- 					@RequestParam(value="count", defaultValue = "0")  -->
<!-- 					@RequestParam(value="optionPrice") -->
<!-- 					@RequestParam(value="discount",required = false) -->


<div id="tourDetail_wrapper" >
	<div id="content_wrapper">
		<div id="title">
			<!-- 제목 + 리뷰평점 -->
			<h4 style="font-weight:700;" id="tour_name">${detail.tour_name }</h4>
			<div id="starbox">
				<c:choose>
					<c:when test="${detail.avgpoint==0}">
						<c:forEach begin="1" end="5">
							<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>
						</c:forEach>
					</c:when>
					<c:when test="${detail.avgpoint>0}">
						<c:set var="full" value="${detail.avgpoint-(detail.avgpoint%1)}"/>
						<c:set var="decimal" value="${(detail.avgpoint%1)*10}"/>
						<c:choose>
							<c:when test="${detail.avgpoint==5}">
								<c:forEach begin="1" end="5">
									<img src='${cp }/resources/images/fullStar.svg' class='starImg'>
								</c:forEach>
							</c:when>
							<c:when test="${detail.avgpoint!=5 }">
								<c:forEach begin="1" end="${full}">
									<img src='${cp }/resources/images/fullStar.svg' class='starImg'>
								</c:forEach>
								<c:choose>
									<c:when test="${decimal>=0 && decimal <3}">
										<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>
									</c:when> 
									<c:when test="${decimal>=3 && decimal <8 }">
										<img src='${cp }/resources/images/halfStar.svg' class='starImg'>
									</c:when>
									<c:when test="${decimal>=8 }">
										<img src='${cp }/resources/images/fullStar.svg' class='starImg'>
									</c:when>
								</c:choose>
								<c:forEach var="e" begin="1" end="${5-full-1}">
									<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>			
								</c:forEach>
							</c:when>
						</c:choose>
					</c:when>
				</c:choose>
				<span style="font-size:20px; font-weight:600;">평점 : <fmt:formatNumber value="${detail.avgpoint}" pattern="0.0" />&nbsp; (${fn:length(review)})
				<c:if test="${!empty detail.tour_expire }">
					<p style="float:right;"> 유효기간 : ${detail.tour_expire}</p>
				</c:if>
				</span>
			</div>
		</div>
		<div id="option">
			<form action="${cp }/payment" method="post" id="optionInfo">
				<input type="hidden"  name="serviceName" value="${detail.tour_name}">
				<input type="hidden" id="cate_number" name="cateNumber" value="${detail.cate_number }">
				<input type="hidden" id="service_number" name="serviceNumber" value="${detail.service_number }">
				<input type="hidden" name="endDate" value="${detail.tour_expire }">
				<table id="optionTable" class="optionTable">
				<c:forEach var="o" items="${option}">
					<c:choose>
						<c:when test="${o.tour_amount==0 }">
							<tr>
								<td><!-- 옵션 명 -->
									${o.tour_option}
									<input type="hidden" value="${o.tour_price}" name="optionPrice">
								</td>
								<td>
									<span style="font-size:12px; color:red; margin-right:5px; text-decoration: line-through;">
										<fmt:formatNumber value="${o.tour_price}" pattern="###,###,###원/명" /> 
									</span>
								</td>
								<td ><!-- 옵션 가격 -->
									<fmt:formatNumber value="${o.tour_price-o.tour_price/100*o.discount}" pattern="###,###,###원/명" /> 
								</td>
								<td><!-- 버튼과 갯수 -->
									<input type="hidden" value="${o.tour_amount}" name="ticket_amount">
									<input type="hidden" value="${o.discount}" name="discount">
									<input type="hidden" value="0" name="count"><input type="hidden" value="${o.tour_option}" name="service_option"><input type="hidden" name="tour_price" value="${o.tour_price}">
									<input type="hidden" value="${o.tour_option_index}" name="option_index"><span style="color:red; font-weight:700;">매진</span>
								</td>
							<tr>
						</c:when>
						<c:otherwise>
							<tr>
								<td ><!-- 옵션 명 -->
									${o.tour_option}
									<input type="hidden" value="${o.tour_price}" name="optionPrice">
								</td>
								<td>
									<c:if test="${o.discount!=0 }">
										<span style="font-size:12px; color:red; margin-right:5px; text-decoration: line-through;">
											<fmt:formatNumber value="${o.tour_price}" pattern="###,###,###원/명" /> 
										 </span>
									</c:if>
								</td>
								<td ><!-- 옵션 가격 -->
									<c:choose>
										<c:when test="${o.discount!=0 }">
											<fmt:formatNumber value="${o.tour_price-o.tour_price/100*o.discount}" pattern="###,###,###원/명" /> 
										</c:when>
										<c:otherwise>
											<fmt:formatNumber value="${o.tour_price}" pattern="###,###,###원/명" /> 
										</c:otherwise>
									</c:choose>
								</td>
								<td ><!-- 버튼과 갯수 -->
									<input type="hidden" value="${o.tour_amount}" name="ticket_amount">
									<input type="hidden" value="${o.discount}" name="discount">
									<input type="hidden" value="0" name="count" oninput="sync(this)"><input type="hidden" value="${o.tour_option}" name="service_option"><input type="hidden" name="tour_price" value="${o.tour_price}">
									<input type="hidden" value="${o.tour_option_index}" name="option_index"><span class="sign" onclick="minus(this)"><i class="fas fa-minus"></i></span><span class="cnt">0</span><span class="sign" onclick="plus(this)"><i class="fas fa-plus"></i></span>
								</td>
							<tr>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				</table>
				<div id="basket"></div>
			</form>
		</div>
		<div id="detail" >
			<div id="photozone" >
				<div id="thumbnailbox">
					<!-- Add images to <div class="fotorama"></div> -->
					<div id="fotorama" class="fotorama" data-nav="thumbs"  data-width="100%" data-allowfullscreen="native" >
					<c:forEach var="tm" items="${de_image}">
					    <a href="${cp}/resources/upload/${tm.imgsavename}"><img src='${cp}/resources/upload/${tm.imgsavename}' data-fit="contain"></a>
					</c:forEach>
					</div>
				</div>
				<!-- 사진으로 된 홍보물 자리 -->
				<c:forEach var="p" items="${pa_image}">
					<img src='${cp}/resources/upload/${p.imgsavename}' alt="${cp}${p.imgsavename}" style="width:100%;">
				</c:forEach>
			</div>
			<div id="info">
				<!-- 기본정보 : 상품정보(제공사항), 주의사항, 이용방법, 위치안내, 취소환불 규정, 후기 -->
				<c:if test="${!empty detail.tour_content}">
					<div id="contentbox">
						${detail.tour_content}
					</div>
				</c:if>			
				<c:if test="${!empty detail.tour_how}">
					<div id="infobox">
						<h4>상품정보</h4>
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
						<h4>취소 및 환불 규정</h4>
						<span>${detail.tour_rule}</span>
						<br>
					</div>
				</c:if>
				<div id="reviewbox">
				</div>
			</div>
		</div>
	</div>
	<!-- 결제할 금액 / 결제버튼 / 위시리스트 넣기 버튼 -->
	<div id="wish_wrapper">
		<div id="summaryBox"> 
			<c:choose>
				<c:when test="${empty option}"><!-- option이 비엇으면 전체 티켓 개수 0 -->
					<span style="font-size:40px; font-weight:700; color:royalblue;">매진된상품입니다</span> 
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${minprice!=oriprice }">
							<span style="font-size:15px; font-weight:700; color:red; text-decoration:line-through; margin-right:5px;" id="oriprice"><fmt:formatNumber value="${oriprice}" pattern="###,###,###원" /></span>
							<span style="font-size:30px; font-weight:700;" id="minprice"><fmt:formatNumber value="${minprice}" pattern="###,###,###원" /> <span style="font-size:15px;">부터</span></span>
						</c:when>					
						<c:otherwise>
							<span style="font-size:35px; font-weight:700;" id="minprice"><fmt:formatNumber value="${minprice}" pattern="###,###,###원" /> <span style="font-size:15px;">부터</span></span>
						</c:otherwise>
					</c:choose>
					<!-- 옵션중 최저가 보여주기, 나중에 옵션 추가 제거 하면 금액 변동시키기-->
				</c:otherwise>
			</c:choose>
		</div>
		<div id="wishbox" > 
			<c:choose>
				<c:when test="${wishlist==false}">
					<button type="button" id="wishbtn" class="btn btn-danger btn-lg">위시리스트추가</button>
				</c:when>
				<c:otherwise>
					<button type="button" id="wishbtn" class="btn btn-outline-danger btn-lg">위시리스트제거</button>
				</c:otherwise>
			</c:choose>
			<button type="button" id="goTicket" class="btn btn-outline-secondary btn-lg">티켓보기</button>
			<!-- 리뷰 불러오기 위함 -->
			<input type="hidden" value="${detail.cate_number }" id="cate_number"><br>
			<input type="hidden" value="${detail.service_number }" id="service_number"><br>
			<input type="hidden" value="${sessionScope.user_id }" id="user_id">
		</div>
	</div>
</div>

<script>
	$(function(){
		$.getJSON("${cp}/getReviewList", 
				{"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val()}, function(data) {
			var str="";
			str= "<h4>후기 ("+data.reviewlist.length+")</h4>"
			if(data.reviewlist.length>3){
				for(let i=0; i<3; i++){
					var stars ="";
					for(let f=0; f<data.reviewlist[i].star_point; f++){
						stars+="<img src='${cp }/resources/images/fullStar.svg' class='reviewStar'>";
					}
					for(let e=0; e<5-data.reviewlist[i].star_point; e++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='reviewStar'>";
					}
					str+="<div class='card mb-3' style='max-width: 1000px;'>"+
							"<div class='row g-0'>"+
								"<div class='col-md-10'>"+
									"<div class='card-body' >"+
										"<h5 class='card-title'>"+stars+"  "+data.reviewlist[i].user_id+"<small class='col-md-1'>"+data.reviewlist[i].review_date+"</small></h5>"+
										"<p class='card-text'>"+data.reviewlist[i].review_content+"</p>"+
									"</div>"+
								"</div>"+
								"<div class='col-md-2' style='text-align: center;'>"+
									"<img src='${cp}/resources/upload/"+data.reviewlist[i].review_image+"' class='tourReviewImg' onerror='this.style.display=\"none\";'>"+
								"</div>"+
							"</div>"+
						"</div>";
				}
				str+="<div style='text-align: center;'>"+
						"<button type='button' class='btn btn-outline-primary' id='moreBtn' onclick='moreReview()'>리뷰더보기</button>"+
					"</div>";
			}else{
				for(let i in data.reviewlist){
					var stars ="";
					for(let f=0; f<data.reviewlist[i].star_point; f++){
						stars+="<img src='${cp }/resources/images/fullStar.svg' class='reviewStar'>";
					}
					for(let e=0; e<5-data.reviewlist[i].star_point; e++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='reviewStar'>";
					}
					str+="<div class='card mb-3' style='max-width: 1000px;'>"+
							"<div class='row g-0'>"+
								"<div class='col-md-10' >"+
									"<div class='card-body'>"+
										"<h5 class='card-title'>"+stars+"  "+data.reviewlist[i].user_id+"<small class='col-md-1'>"+data.reviewlist[i].review_date+"</small></h5>"+
										"<p class='card-text'>"+data.reviewlist[i].review_content+"</p>"+
									"</div>"+
								"</div>"+
								"<div class='col-md-2' style='text-align: center;'>"+
									"<img src='${cp}/resources/upload/"+data.reviewlist[i].review_image+"' class='tourReviewImg' onerror='this.style.display=\"none\";' >"+
								"</div>"+
							"</div>"+
						"</div>";
				}
			}
			$("#reviewbox").append(str);
		});
	});
	
	function moreReview(){
		$.getJSON("${cp}/getReviewList", 
				{"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val()}, function(data) {
			var str="";
			for(let i=3; i<data.reviewlist.length; i++){
				var stars ="";
				for(let f=0; f<data.reviewlist[i].star_point; f++){
					stars+="<img src='${cp }/resources/images/fullStar.svg' class='reviewStar'>";
				}
				for(let e=0; e<5-data.reviewlist[i].star_point; e++){
					stars+="<img src='${cp }/resources/images/emptyStar.svg' class='reviewStar'>";
				}
						str+="<div class='card mb-3' style='max-width: 1000px; display:none;'>"+
						"<div class='row g-0' >"+
							"<div class='col-md-10'>"+
								"<div class='card-body'>"+
									"<h5 class='card-title'>"+stars+"  "+data.reviewlist[i].user_id+"<small class='col-md-1'>"+data.reviewlist[i].review_date+"</small></h5>"+
									"<p class='card-text'>"+data.reviewlist[i].review_content+"</p>"+
								"</div>"+
							"</div>"+
							"<div class='col-md-2' style='text-align: center;'>"+
								"<img src='${cp}/resources/images/"+data.reviewlist[i].review_image+"' class='tourReviewImg' onerror='this.style.display=\"none\";'>"+
							"</div>"+
						"</div>"+
					"</div>";
			}
			$("#moreBtn").hide();
			$("#reviewbox").append(str);
			$(".card").fadeIn(1200);
		});
	}
	
	
	
	
	$("#goTicket").on("click",function(){ 
		var scrollPosition = $("#content_wrapper").offset().top;
		$("html").animate({
			scrollTop: scrollPosition
		}, 500);
	});

	$("#wishbtn").click(function(){
		if($("#wishbtn").text()=="위시리스트추가"){
			$.getJSON("${cp}/wishInsert", {"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val()},
				function(data) {
				let result = data.code;
				console.log(data.code);
				if(result=='insert_success'){
					$("#wishbtn").text("위시리스트제거");
					$("#wishbtn").prop("class","");
					$("#wishbtn").addClass("btn btn-outline-danger btn-lg");
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}else{
			$.getJSON("${cp}/wishDelete", {"cate_number":$("#cate_number").val(),"service_number":$("#service_number").val()},
				function(data) {
				let result = data.code;
				if(result=='delete_success'){
					$("#wishbtn").text("위시리스트추가");
					$("#wishbtn").prop("class","");
					$("#wishbtn").addClass("btn btn-danger btn-lg");
				}else if(result=='delete_fail'){
					alert("delete ERROR");
				}
			});
		}
	});

	/////////////////////// 옵션 추가제거  /////////////////////////////

	
	var totalprice = 0;
	var clickNum=0;
	
	function minus(e){
		var count = e.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling;
		if(parseInt(count.value)==0){
			return;
		}
		clickNum--;

		var btn = e;
		var span = btn.nextSibling;
		var cnt = parseInt(span.textContent);
		var indexnum = parseInt(btn.previousSibling.value)-1;
		var price= document.getElementsByName("tour_price")[indexnum];
		var discount= document.getElementsByName("discount")[indexnum];
		cnt--;
		span.innerHTML=cnt;
		totalprice-=parseInt(price.value-(price.value/100*discount.value));
		
		count.value = parseInt(count.value)-1;
		
		
		var finalprice= totalprice.toLocaleString();
		
		var basket= document.getElementById("basket");
		if(totalprice==0){
			$("#basket").slideUp(500, function() {
			});
		}else{
			basket.innerHTML = "<div id='finalPriceWrapper'>"+ 
							"<h4 style='text-align:right; margin-top:15px; margin-right:20px;'>TOTAL : "+finalprice+"원</h4>"+
							"<button type='button' id='payall' class='btn btn-outline-primary' style='margin-bottom:35px;' onclick='pay()'>결제하기</button></div>";
		}
	}
	function plus(e){
		var count = e.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling;
		var indexnum = parseInt(e.previousSibling.previousSibling.previousSibling.value)-1;
		var amount = document.getElementsByName("ticket_amount")[indexnum].value;
		
		if(parseInt(count.value)>=20 || parseInt(count.value)>=amount){
			return;
		}
		var btn = e;
		var span = btn.previousSibling;
		var cnt = parseInt(span.textContent); //몇개인지 찾고
		var discount= document.getElementsByName("discount")[indexnum]; //할인 있는지 확인
		var price= document.getElementsByName("tour_price")[indexnum]; // 가격에 반영
		
		count.value = parseInt(count.value)+1;
		
		cnt++;
		span.innerHTML=cnt;
		totalprice+=parseInt(price.value-(price.value/100*discount.value));
		
		var finalprice= totalprice.toLocaleString();
		
		var basket= document.getElementById("basket");
		
		if(clickNum++==0){
			$("#basket").hide();
			basket.innerHTML ="<div id='finalPriceWrapper'>"+ 
								"<h4 style='text-align:right; margin-top:15px; margin-right:20px;'>TOTAL : "+finalprice+"원</h4>"+
								"<button type='button' id='payall' class='btn btn-outline-primary' style='margin-bottom:35px;' onclick='pay()'>결제하기</button></div>";
			$("#basket").slideDown(500, function() {
			});
		}else{
			basket.innerHTML ="<div id='finalPriceWrapper'>"+ 
								"<h4 style='text-align:right; margin-top:15px; margin-right:20px;'>TOTAL : "+finalprice+"원</h4>"+
								"<button type='button' id='payall' class='btn btn-outline-primary' style='margin-bottom:35px;' onclick='pay()'>결제하기</button></div>";
		}
	}
	
	//이미지가 없으면 안보여짐
	function errorImg(a){
		a.style.display='none';
	}
	
	
	//결제페이지로 이동
	function pay(){
		document.getElementById("optionInfo").submit();
	}

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
