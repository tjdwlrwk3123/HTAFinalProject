<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>

<style>
	#pay_wrapper{
		width:1000px;
		height: 1000px;
		background-color:pink;
		margin:auto;
	}
	#paybox{
		width:850px;
		height:900px;
		background-color: royalblue;
		border:2px solid black;
		margin:auto;
	}
	#paytitle{
		position:relative;
		left:140px;
		background-color: red;
	
	}
	#leftwing{
		width:300px;
		height: 800px;
		background-color: yellow;
		float: left;
		margin: 60px;
	}
	
	#rightwing{
		width:300px;
		height : 800px;
		background-color: yellow;
		float:left;
		margin: 60px;
	}
	#itemInfo{
		width: 275px;
		margin:auto;
		background-color:white;
		margin:10px;
		word-break:break-all;
	}
	#itemInfo a{
		text-decoration: none;
		color: black;
	}
	#itemInfo p{
		margin:3px;
		margin-bottom:15px;
	}
	#itemInfo span{
		margin:3px;
		font-weight:600;
		
	}
	
	
	#bookInfo{
		width: 275px;
		height:200px;
		margin:auto;
		margin:10px;
		background-color:white;
		word-break:break-all;
	}
	#bookInfo p{
		margin-bottom:10px;
		font-weight: 550;
	}
	#bookInfo input{
		margin-bottom:10px;
	}
	#accomInfo{
		width: 275px;
		margin:auto;
		margin:10px;
		background-color:white; 
		word-break:break-all;
	}
	#accomInfo input{
		margin-bottom:10px;
	}
	
	#priceInfo{
		width: 275px;
		margin:auto;
		margin:10px;
		margin-top:15px;
		background-color:white;
		word-break:break-all;
	}
	#couponSelect{
		margin-top:10px;
	}
	.point_wrapper{
		margin: 10px 0;
	}
	.point_wrapper input{
		margin-left:80px;
		
	}
	
	#howtopay{
		width: 275px;
		height:200px;
		margin:auto;
		margin:10px;
		background-color:white;
		word-break:break-all;
	}
	#howtopay h4, input[type=radio]{
		margin-right:5px;
		margin-bottom: 10px;
	}
	#agreement{
		width: 275px;
		height:200px;
		margin:auto;
		margin:10px;
		background-color:white;
		word-break:break-all;
	}
	
	#agreement input[type=checkbox]{
		margin-bottom:10px;
		margin-right:5px;
	}
	
	.finalPrice{
		margin-left:10px;
	}
	#realfinal{
		margin-top: 15px;
		margin-right:5px;
		padding-bottom: 15px;
		text-align: right; 
		font-size:19px;
		font-weight:700;
	}
	input[type=submit] {
		padding: 10px 20px;
	  	text-align: center;
	}	
	h3{
		margin:10px 0px;
	}
</style>

<div id="pay_wrapper">
	<form action="${cp}/payit" method="post" id="paymentInfo">
	<div id="paybox">
		<div id="paytitle">
			<h1>결제하기</h1>
		</div>
		<div id="leftwing">
			<div id="itemInfo">
				<h2><a href="${cp}/tourDetail?user_id=${user_id}&cate_number=${cate_number}&service_number=${service_number}">${service_name}</a></h2>
				<c:choose>
					<c:when test="${cate_number==2}">
						<p>${startDate} ~ ${endDate}</p><!-- 여기서 다시 변경 가능? -->
					</c:when>
					<c:when test="${cate_number==1}">
						<c:if test="${!empty endDate}">
							<p> 유효기간 : ${endDate}까지</p>
						</c:if>
					</c:when>				
				</c:choose>
				<div id="price">
					<c:forEach var="i" items="${optionCnts}" varStatus="status">
						<c:if test="${i!=0}"> <!-- 옵션을 0개 선택했으면 보여주지 않기 -->
							<span>${optionName[status.index]}</span>
							<p>${optionPrice[status.index]} X ${i} = ${optionPrice[status.index]*i}원</p>						
							<input type="hidden" name="eachOptionPrice" value="${optionPrice[status.index]*i}">
							<input type="hidden" name="eachOptionIndex" value="${indexNum[status.index]}">
							<input type="hidden" name="eachOptionCount" value="${i}">
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div id="bookInfo">
				<h3>예약정보</h3>
				<p>예약자명</p>
				<input type="text" name="bookerName" id="bookerName" placeholder="예약자명" required="required"><br>
				<p>예약자 연락처</p>
				<input type="tel" id="bookerPhone" name="bookerPhone" placeholder="010-9999-9999" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required>
			</div>
			<c:if test="${cate_number==2}"><!-- 숙박 상품일 경우 -->
				<div id="accomInfo">
					<input type="checkbox" id="isSame" name="isSame"><label for="isSame">위 정보와 동일</label><br>
					<p>이용자 성명</p>
					<input type="text" name="visitorName" id="visitorName" placeholder="홍길동" required="required"><br>
					<p>이용자 연락처</p>
					<input type="tel" id="visitorPhone" name="visitorPhone" placeholder="010-9999-9999" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required><br>
					<p>이용자 이메일</p>
					<input type="email" name="visitorEmail" id="visitorEmail" placeholder="example@me.com" required="required"><br>
				</div>
			</c:if>
		</div>
		<div id="rightwing">
			<div id="priceInfo">
					<input type="hidden" name="couponUsing" id="couponUsing"><!-- 선택한 쿠폰 이름 저장해서 나중에 결제할때 보내기 -->
					<c:choose>
						<c:when test="${!empty pvo }"><!-- user_id로 로그인 했을때만 보여짐 -->
							<h3>쿠폰 & 포인트</h3>
							<select id="couponSelect">
							<c:choose>
								<c:when test="${!empty pvo.couponlist }">
									<option value="none">쿠폰을 선택하여 주십시오</option>
									<c:forEach var="cpn" items="${pvo.couponlist}">
										<option value="${cpn.coupon_name},${cpn.discount_price}">[${cpn.coupon_name} ${cpn.discount_price}%] ${cpn.expire_date}</option>										
									</c:forEach>
								</c:when>
								<c:otherwise>
		 							<option value="none">적용 가능한 쿠폰이 존재하지 않습니다</option>						
								</c:otherwise>
							</c:choose>
							</select><br>
						</c:when>
					</c:choose>
				<br>
				<div class="point_wrapper">보유포인트<input type="text" id ="myPoint" value="${pvo.user_point}" disabled="disabled" size="10" style="text-align: right;">P</div>
				<div class="point_wrapper">사용포인트<input type="text" name="pointUsing" id="pointUsing" max="1000" value="0" size="10" onkeydown="onlyNumber(event)" style="text-align: right;">P</div>
				<div id="realfinal">최종결제금액<span class="finalPrice"></span>원</div>
				<input type="hidden" id="couponprice">
				<c:if test="${!empty user_id}">
					<input type="hidden" name="user_id" value="${user_id}">
				</c:if>
				<input type="hidden" name="cate_number" value="${cate_number}">
				<input type="hidden" name="service_name" value="${service_name}">
				<input type="hidden" name="service_number" value="${service_number}">
				<c:if test="${!empty startDate }">
					<input type="hidden" name="startDate" value="${startDate}">
				</c:if>
				<c:if test="${!empty endDate}">
					<input type="hidden" name="endDate" value="${endDate}">
				</c:if>
				<input type="hidden" name="thePrice" id="thePrice" ><!-- form으로 넘어갈 최종 가격 -->
			</div>
			<div id="howtopay">
				<!-- 라디오로 결제 방법 선택 -->
				<h3>결제방법</h3>
				<input type="radio" name="waytopay" id="credit" value="신용카드" required="required"><label for="credit">신용카드</label><br>
				<input type="radio" name="waytopay" id="cash" value="계좌이체" required="required"><label for="cash">계좌이체</label><br>
				<input type="radio" name="waytopay" id="naver" value="naverpay" required="required"><label for="naver">네이버페이</label><br>
				<input type="radio" name="waytopay" id="kakao" value="kakaopay" required="required"><label for="kakao">카카오페이</label><br>
				<input type="radio" name="waytopay" id="paypal" value="paypal" required="required"><label for="paypal">PAYPAL</label>
			</div>
			<div id="agreement">
				<h3>결제동의</h3>
				<input type="checkbox" id="checkall" name="checkall"><label for="checkall">전체 약관 동의</label><br>
				<input type="checkbox" name="agreecheck" id="no1" value="no1" required="required"><label for="no1">개인정보 수집 및 이용 동의(필수)</label><br>
				<input type="checkbox" name="agreecheck" id="no2" value="no2" required="required"><label for="no2">개인정보 제공 동의(필수)</label><br>
				<input type="checkbox" name="agreecheck" id="no3" value="no3"><label for="no3">특가 및 할인 안내 동의(선택)</label><br>
			</div>
			<div style="text-align: center;"><input type="button" value="결제하기" onclick="pay()"></div>
		</div>
	</div>
	</form>
</div>

<script>
	
	var doubleSubmitFlag = false;
	function doubleSubmitCheck(){
	    if(doubleSubmitFlag){
	        return doubleSubmitFlag;
	    }else{
	        doubleSubmitFlag = true;
	        return false;
	    }
	}
	function pay(){
		if(doubleSubmitCheck()) return;
		document.getElementById("paymentInfo").submit();
	}


	$("#isSame").on("click",function(){
		if($("#isSame").is(":checked")){
			$("#visitorName").val($("#bookerName").val());
			$("#visitorPhone").val($("#bookerPhone").val());
		}else{
			$("#visitorName").val("");
			$("#visitorPhone").val("");
		}
	});
	
	$("#visitorName").on("input",function(){
		if(  $(this).val() != $("#bookerName").val() ){
			$("#isSame").prop("checked",false);
		}else{
			$("#isSame").prop("checked",true);
		}
	});
	$("#visitorPhone").on("input",function(){
		if(  $(this).val() != $("#bookerPhone").val() ){
			$("#isSame").prop("checked",false);
		}else{
			$("#isSame").prop("checked",true);
		}
	});
	
	
	
	//체크박스 전체 선택 및 해제
	$("#checkall").click(function(){
		if($("#checkall").is(":checked")){
			$("input[name='agreecheck']").prop("checked",true);
		}else{
			$("input[name='agreecheck']").prop("checked",false);
		}
	});
	//하나만 해제 되어도 전체 체크박스는 해제, 세개다 체크되면 전체선택 체크
	$("input[name='agreecheck']").click(function(){
		if($("input[name='agreecheck']:checked").length==3){
			$("#checkall").prop("checked",true);
		}else{
			$("#checkall").prop("checked",false);
		}
	});
	
	var totalprice=0;
	var mypoint = 0;
	$(function(){
		$("input[name='eachOptionPrice']").each(function(){
			totalprice+= parseInt($(this).val());
		});
		
		$(".finalPrice")[0].innerHTML=totalprice; // 옵션별 금액을 더해서 최초의 최종금액 변수에 넣고 html에 보이기
		$("#thePrice").val(totalprice);
		
		mypoint=parseInt($("#myPoint").val()); //DB에서 가져온 포인트 정보 저장
		$("#couponprice").val(totalprice);
		$("#pointUsing").val(0);
		
	});
	
	$("#couponSelect").on("change",function(){
		$("#myPoint").val(mypoint);
		$("#pointUsing").val(0); // 포인트 설정 초기화
		
		var str = $(this).val().split(',');
		console.log(str[0]);
		if(str=="none"){
			$("#couponUsing").val("none");
			$(".finalPrice")[0].innerHTML=totalprice; // 쿠폰 선택 없을시엔 초기화
			$("#theParice").val(totalprice);
			$("#couponprice").val(totalprice); // 쿠폰은 없지만 그래도 쿠폰 적용금액에도 원래 금액 일단 넣기
			
		}else{ //쿠폰을 사용하는게 맞다면!
			$("#couponUsing").val(str[0]); //쿠폰 이름을 나중에 form에 넘기기 위해서 hidden에 저장
			
			//쿠폰 할인율 적용한 금액 보여주기
			$(".finalPrice")[0].innerHTML=totalprice-totalprice*parseInt(str[1])/100;
			//할인금액으로 바로 결제할수 있으니 결제금액에도 적용
			$("#theParice").val(totalprice-totalprice*parseInt(str[1])/100);
			
			//쿠폰 할인 적용한 금액과 포인트 계산을 위해 저장 
			$("#couponprice").val(totalprice-totalprice*parseInt(str[1])/100);
		}
	});
	
	$("#pointUsing").on("focus",function(){
		if($(this).val()==0){
			$(this).val("");
		}
	});
	
	$("#pointUsing").on("focusout",function(){
		if($(this).val()==""){
			$(this).val(0);	
		}
	});
	
	$("#pointUsing").on("input",function(){ //입력을 하면 입력창에 있는 값 가져오기
		if($(this).val()==""){ // 입력창에 아무것도 없으면 
			$(this).val(0);
			$(".finalPrice")[0].innerHTML=$("#couponprice").val(); // 원래 금액(쿠폰금액이 원래금액 또는 쿠폰 적용금액이므로)
			$("#theParice").val($("#couponprice").val());
// 			$(this).val(parseInt(0));
			$("#myPoint").val(mypoint); //보유포인트 초기화
			return;
		}
		var my = parseInt(mypoint); // 디비에 저장된 보유포인트 값
		console.log($(this).val());
		
		if(parseInt($("#couponprice").val())>my){ // 가격보다 포인트가 적으니 쓸수 있는 포인트는 보유 포인트만큼으로 제한
			 //상한선을 정하는 코드
			if(parseInt($(this).val())>=my){//입력값이 보유 포인트보다 클때 못올리게!
				$("#myPoint").val(0);
				$(this).val(my);
			}else{ // 입력값이 보유포인트보단 크지 않을때
				$("#myPoint").val(my-parseInt($(this).val()));
			}
		}else if(parseInt($("#couponprice").val())< my){ // 가격보다 포인트가 많으니 사용포인트 상한선은 가격
			if(parseInt($(this).val())>=parseInt($("#couponprice").val())){ // 쿠폰 적용한 가격보다 입력값이 크면 제한
				$("#myPoint").val(my-parseInt($("#couponprice").val()));
				$(this).val($("#couponprice").val());
			}else{
				$("#myPoint").val(my-parseInt($(this).val()));
			}
		}
		
		$(".finalPrice")[0].innerHTML=parseInt($("#couponprice").val())-parseInt($(this).val());
		$("#thePrice").val(parseInt($("#couponprice").val())-parseInt($(this).val()));
	});
	
	
	function onlyNumber(e){
		console.log(e.keyCode);
		console.log(e.target.value);
		if(  ((e.keyCode>=48)&&(e.keyCode<=57)) || ((e.keyCode>=96)&&(e.keyCode<=105)) 
        		|| (e.keyCode==8) || (e.keyCode==37) || (e.keyCode==39) || (e.keyCode==46)  ){ //48보다 작거나 57보다 많으면 입력 안됨 
        }else{
           event.returnValue=false;
        }
	}

</script>