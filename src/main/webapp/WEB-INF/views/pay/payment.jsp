<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->


<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>


<style>
	#pay_wrapper{
		width:1000px;
		height: 1000px;
		background-color: white;
		margin:auto;
		display:table;
	}
	#paybox{
		width:850px;
		height:1000px;
		background-color: #E7E7E7;
		border:2px dotted black;
		margin:auto;
		display : flex;
	}
	#paytitle{
		position:relative;
		text-align: center;
		padding-top : 40px;
		padding-bottom : 30px;
	}

	
	#leftwing{
		width:350px;
		background-color: #E7E7E7;
		margin: 30px;
		position: absolute;
	}
	
	#rightwing{
		width:350px;
		background-color: #E7E7E7;
		margin: 30px;
		margin-left: 480px;
		margin-top: 50px;
		position:absolute;
	}

	.box{
		position:relative;
		width: 280px;
		margin:auto;
		background-color:white;
		padding:10px;
		word-break:break-all;
		border:2px dashed black;
		margin-bottom:20px;
	}
	.box h1,a{
		position:relative;
		top:-10px;
		text-decoration: none;
		color:black;
	}
	.box h3{
		position: relative;
		top:-10px;
	}

	.box  p, input[type=checkbox], input[type=radio]{
		margin-bottom:15px;
		margin-right:5px;
		
		color:black;
	}
	.box input[type=text], input[type=email], input[type=tel] {
		margin-bottom:3px;
		margin-right:5px;
		text-decoration: none;
		color:black;
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
	.btn{
		width:150px;
		height:40px;
		border-radius:5%;
		margin-bottom:15px;
		background-color: #C3C3C3;
		font-size: 18px;
		font-weight: 800;
	}
	.btn:hover{
		box-shadow: 1px 1px 2px 2px;
	}
	#price .opName{
		font-weight: 800;
		font-size: 15px;
		margin-bottom:-10px;
	}
	#bookInfo p, input{
		margin-bottom:5px;
	}
	#accomInfo p, input{
		margin-bottom:5px;
	}
	
	
	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
	  -webkit-appearance: none;
	  margin: 0;
	}

</style>

<div id="pay_wrapper">
	<form action="${cp}/payit" method="post" id="paymentInfo" onsubmit="return pay();">
	<div id="paybox">
		<div id="leftwing">
			<div id="itemInfo" class="box">
				<h2><a href="${cp}/tourDetail?user_id=${user_id}&cate_number=${cate_number}&service_number=${service_number}">${service_name}</a></h2>
				<c:choose>
					<c:when test="${cate_number!=1}">
						<p style="font-weight: 800;">????????? : ${startDate}</p>
						<p style="font-weight: 800;">???????????? : ${endDate}</p>
					</c:when>
					<c:when test="${cate_number==1}">
						<c:if test="${!empty endDate}">
							<p> ???????????? : ${endDate}??????</p>
						</c:if>
					</c:when>				
				</c:choose>
				<div id="price">
					<c:choose>
					<c:when test="${cate_number==1 }">
					<c:forEach var="i" items="${optionCnts}" varStatus="status">
						<c:if test="${i!=0}"> <!-- ????????? 0??? ??????????????? ???????????? ?????? -->
							<c:if test="${optionList[status.index].discount!=0 }">
								<c:set var="isDiscount" value="yes"/>
							</c:if>
							<p class="opName">${optionList[status.index].tour_option}</p>
								<fmt:formatNumber value="${o.tour_price}" pattern="###,###,###???/???" /> 
							<p><fmt:formatNumber value="${optionList[status.index].tour_price-optionList[status.index].tour_price/100*optionList[status.index].discount}" pattern="###,###,###"/>  X ${i}
							 = <fmt:formatNumber value="${(optionList[status.index].tour_price-optionList[status.index].tour_price/100*optionList[status.index].discount)*i}" pattern="###,###,###"/>???</p>						
							<input type="hidden" name="eachOptionPrice" value="${(optionList[status.index].tour_price-optionList[status.index].tour_price/100*optionList[status.index].discount)*i}">
							<input type="hidden" name="eachOptionIndex" value="${indexNum[status.index]}">
							<input type="hidden" name="eachOptionCount" value="${i}">
						</c:if>
					</c:forEach>
					</c:when>
					<c:otherwise>
						<p class="opName">${optionName}</p><br>
							<fmt:formatNumber value="${optionPrice[0]}" pattern="###,###,###???" /><span> / ${optionCnts[0] }???</span>
						<input type="hidden" name="eachOptionPrice" value="${optionPrice[0]}">
						<input type="hidden" name="eachOptionIndex" value="${indexNum[0]}">
						<input type="hidden" name="eachOptionCount" value="1">
					</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div id="bookInfo" class="box">
				<h3>????????????</h3>
				<p>????????????</p>
				<input type="text" name="bookerName" id="bookerName" placeholder="????????????" required="required"><br>
				<p>????????? ?????????</p>
				<input type="tel" id="bookerPhone" name="bookerPhone" placeholder="010-9999-9999" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required>
			</div>
			<c:if test="${cate_number!=1}"><!-- ?????? ????????? ?????? -->
				<div id="accomInfo" class="box">
					<input type="checkbox" id="isSame" name="isSame"><label for="isSame">??? ????????? ??????</label><br>
					<p>????????? ??????</p>
					<input type="text" name="visitorName" id="visitorName" placeholder="?????????" required="required"><br>
					<p>????????? ?????????</p>
					<input type="tel" id="visitorPhone" name="visitorPhone" placeholder="010-9999-9999" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required><br>
					<p>????????? ?????????</p>
					<input type="email" name="visitorEmail" id="visitorEmail" placeholder="example@me.com" required="required"><br>
				</div>
			</c:if> 
		</div>
		<div id="rightwing">
			<div id="priceInfo" class="box">
					<input type="hidden" name="couponUsing" id="couponUsing"><!-- ????????? ?????? ?????? ???????????? ????????? ???????????? ????????? -->
					<c:choose>
						<c:when test="${!empty pvo }">
							<h3>?????? & ?????????</h3>
							<c:choose>
								<c:when test="${!empty isDiscount }">
									<p>?????? ????????? ????????? ???????????????.</p>
								</c:when>
								<c:otherwise>
									<select id="couponSelect">
									<c:choose>
										<c:when test="${!empty pvo.couponlist }">
											<option value="none">????????? ???????????? ????????????</option>
											<c:forEach var="cpn" items="${pvo.couponlist}">
												<option value="${cpn.coupon_name},${cpn.discount_price}">[${cpn.coupon_name} ${cpn.discount_price}%] ${cpn.expire_date}</option>										
											</c:forEach>
										</c:when>
										<c:otherwise>
				 							<option value="none">?????? ????????? ????????? ???????????? ????????????</option>						
										</c:otherwise>
									</c:choose>
									</select><br>
								</c:otherwise>
							</c:choose>
						</c:when>
					</c:choose>
				<br>
				<div class="point_wrapper">???????????????<input type="text" id ="myPoint" value="${pvo.user_point}" disabled="disabled" size="10" style="text-align: right;"></div>
				<div class="point_wrapper">???????????????<input type="number" name="pointUsing" id="pointUsing" value="0" size="10" onkeydown="onlyNumber(event)" style=" width: 95px;text-align: right;"></div>
				<div id="realfinal">??????????????????<span class="finalPrice"></span>???</div>
				<input type="hidden" id="couponprice">
				<c:if test="${!empty user_id}">
					<input type="hidden" name="user_id" value="${user_id}">
				</c:if>
				<input type="hidden" name="cateNumber" value="${cate_number}">
				<input type="hidden" name="serviceName" value="${service_name}">
				<input type="hidden" name="serviceNumber" value="${service_number}">
				<c:if test="${!empty startDate }">
					<input type="hidden" name="startDate" value="${startDate}">
				</c:if>
				<c:if test="${!empty endDate}">
					<input type="hidden" name="endDate" value="${endDate}">
				</c:if>
				<input type="hidden" name="thePrice" id="thePrice" ><!-- form?????? ????????? ?????? ?????? -->
			</div>
			<div id="howtopay" class="box">
				<!-- ???????????? ?????? ?????? ?????? -->
				<h3>????????????</h3>
				<input type="radio" name="waytopay" id="credit" value="????????????" required="required"><label for="credit">????????????</label><br>
				<input type="radio" name="waytopay" id="cash" value="????????????" required="required"><label for="cash">????????????</label><br>
				<input type="radio" name="waytopay" id="naver" value="naverpay" required="required"><label for="naver">???????????????</label><br>
				<input type="radio" name="waytopay" id="kakao" value="kakaopay" required="required"><label for="kakao">???????????????</label><br>
				<input type="radio" name="waytopay" id="paypal" value="paypal" required="required"><label for="paypal">PAYPAL</label>
			</div>
			<div id="agreement" class="box">
				<h3>????????????</h3>
				<input type="checkbox" id="checkall" name="checkall"><label for="checkall">?????? ?????? ??????</label><br>
				<input type="checkbox" name="agreecheck" id="no1" value="no1" required="required"><label for="no1">???????????? ?????? ??? ?????? ??????(??????)</label><br>
				<input type="checkbox" name="agreecheck" id="no2" value="no2" required="required"><label for="no2">???????????? ?????? ??????(??????)</label><br>
				<input type="checkbox" name="agreecheck" id="no3" value="no3"><label for="no3">?????? ??? ?????? ?????? ??????(??????)</label><br>
			</div>
			<div style="text-align: center;"><button type="submit" class="btn">????????????</button></div>
		</div>
	</div>
	</form>
</div>

<script>

	var totalprice=0;
	var mypoint = 0;
	$(function(){
		$("input[name='eachOptionPrice']").each(function(){
			console.log($(this).val());
			totalprice+= parseInt($(this).val());
			console.log("??????:"+totalprice);
		});
		
		$(".finalPrice")[0].innerHTML=totalprice.toLocaleString(); // ????????? ????????? ????????? ????????? ???????????? ????????? ?????? html??? ?????????
		$("#thePrice").val(totalprice);
		
		mypoint=parseInt($("#myPoint").val()); //DB?????? ????????? ????????? ?????? ??????
		$("#couponprice").val(totalprice);
		
		$("#pointUsing").val(0);
		console.log("?????? ?????? ????????? " +mypoint);
		if(mypoint==0){
			$("#myPoint").val(0);
			$("#pointUsing").prop("disabled",true);
		}
		$("#couponSelect").val("none");
	});

	
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
		if(doubleSubmitCheck()) return false;
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
	
	
	
	//???????????? ?????? ?????? ??? ??????
	$("#checkall").click(function(){
		if($("#checkall").is(":checked")){
			$("input[name='agreecheck']").prop("checked",true);
		}else{
			$("input[name='agreecheck']").prop("checked",false);
		}
	});
	//????????? ?????? ????????? ?????? ??????????????? ??????, ????????? ???????????? ???????????? ??????
	$("input[name='agreecheck']").click(function(){
		if($("input[name='agreecheck']:checked").length==3){
			$("#checkall").prop("checked",true);
		}else{
			$("#checkall").prop("checked",false);
		}
	});
	
	
	$("#couponSelect").on("change",function(){
		$("#myPoint").val(mypoint);
		$("#pointUsing").val(0); // ????????? ?????? ?????????
		
		var str = $(this).val().split(',');
		console.log(str[0]);
		if(str=="none"){
			$("#couponUsing").val("none");
			$(".finalPrice")[0].innerHTML=totalprice.toLocaleString(); // ?????? ?????? ???????????? ?????????
			$("#thePrice").val(totalprice);
			$("#couponprice").val(totalprice); // ????????? ????????? ????????? ?????? ?????????????????? ?????? ?????? ?????? ??????
			
		}else{ //????????? ??????????????? ?????????!
			$("#couponUsing").val(str[0]); //?????? ????????? ????????? form??? ????????? ????????? hidden??? ??????
			
			//?????? ????????? ????????? ?????? ????????????
			$(".finalPrice")[0].innerHTML=(totalprice-totalprice*parseInt(str[1])/100).toLocaleString();
			//?????????????????? ?????? ???????????? ????????? ?????????????????? ??????
			$("#thePrice").val(totalprice-totalprice*parseInt(str[1])/100);
			
			//?????? ?????? ????????? ????????? ????????? ????????? ?????? ?????? 
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
	
	$("#pointUsing").on("input",function(){ //????????? ?????? ???????????? ?????? ??? ????????????
			console.log("11");
		if($(this).val()==""){ // ???????????? ???????????? ????????? 
			console.log("22");
			console.log("coupon" + $("#couponprice").val().toLocaleString());
			$(this).val(0);
			$(".finalPrice")[0].innerHTML=$("#couponprice").val().toLocaleString(); // ?????? ??????(??????????????? ???????????? ?????? ?????? ?????????????????????)
			$("#thePrice").val($("#couponprice").val());
			$("#myPoint").val(mypoint); //??????????????? ?????????
			return;
		}
		var my = parseInt(mypoint); // ????????? ????????? ??????????????? ???
		console.log($(this).val());
		
		if(parseInt($("#couponprice").val())>my){ // ???????????? ???????????? ????????? ?????? ?????? ???????????? ?????? ????????????????????? ??????
			 //???????????? ????????? ??????
			if(parseInt($(this).val())>=my){//???????????? ?????? ??????????????? ?????? ????????????!
				$("#myPoint").val(0);
				$(this).val(my);
			}else{ // ???????????? ????????????????????? ?????? ?????????
				$("#myPoint").val(my-parseInt($(this).val()));
			}
		}else if(parseInt($("#couponprice").val())< my){ // ???????????? ???????????? ????????? ??????????????? ???????????? ??????
			if(parseInt($(this).val())>=parseInt($("#couponprice").val())){ // ?????? ????????? ???????????? ???????????? ?????? ??????
				$("#myPoint").val(my-parseInt($("#couponprice").val()));
				$(this).val($("#couponprice").val());
			}else{
				$("#myPoint").val(my-parseInt($(this).val()));
			}
		}
		
		$(".finalPrice")[0].innerHTML=(parseInt($("#couponprice").val())-parseInt($(this).val())).toLocaleString();
		console.log( "??????????????????"+   ($("#couponprice").val() -parseInt( $(this).val() )).toLocaleString());
		$("#thePrice").val(parseInt($("#couponprice").val())-parseInt($(this).val()));
	});

	
	
	function onlyNumber(e){
		console.log("keycode : " + e.keyCode);
		console.log("?????? : "+ e.target.value);
		if(  ((e.keyCode>=48)&&(e.keyCode<=57)) || ((e.keyCode>=96)&&(e.keyCode<=105)) 
        		|| (e.keyCode==8) || (e.keyCode==37) || (e.keyCode==39) || (e.keyCode==46)  ){ //48?????? ????????? 57?????? ????????? ?????? ?????? 
        }else{
           event.returnValue=false;
        }
	}

</script>