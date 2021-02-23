<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
	#adultNum{
		-ms-user-select: none;
		-moz-user-select: -moz-none; 
		-webkit-user-select: none; 
		-khtml-user-select: none; 
		user-select:none;
	}
	#changeCount{
		user-select:none;
		display: none;
		position: absolute;
		background-color: #f9f9f9;
		min-width: 160px;
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		padding: 12px 16px;
		z-index: 1;
	}
	#changeCount div{
 		-ms-user-select: none;
 		-moz-user-select: -moz-none; 
 		-webkit-user-select: none; 
 		-khtml-user-select: none;
	}
	#loading {
		height: 100%;
		left: 0px;
		position: fixed;
		_position:absolute; 
		top: 0px;
		width: 100%;
		filter:alpha(opacity=50);
		-moz-opacity:0.5;
		opacity : 0.5;
	}
	.loading {
		background-color: white;
		z-index: 199;
	}
	#loading_img{
		position:absolute; 
		top:50%;
		left:50%;
		height:35px;
		margin-top:-75px;
		margin-left:-75px;	
		z-index: 200;
	}
	#accomWrap{
		width: 1000px;
		margin: auto;
		display : flex;
		background-color: #FFCA6C;
	}
	.accomSelectSection{width:500px; height:200px;}
	.accomSelectSection .accomSelectImage{display:inline-block; margin-right:10px;}
	.accomSelectSection .accomSelectImage img{width: 150px; height: 150px;}
	.accomSelectSection .accomSelectInfo{display:inline-block;}
	
	#accomFilter {
		width: 200px;
		height: 100%;
		background-color: #FFCA6C;
		padding: 30px 0;
	}
	
	
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>



<div id="accomWrap">

<div id="accomFilter" style="display: inline-block; width: 400px; float: left;">
<div>
종류<br>
<input type="radio" name="gck" value="0" checked="checked" id="defradio">전체<br>
<input type="radio" name="gck" value="2">펜션<br>
<input type="radio" name="gck" value="3">캠핑<br>
<input type="radio" name="gck" value="4">게스트하우스<br>
<input type="radio" name="gck" value="5">기타<br>
</div>
<br>
<div>
편의시설<br>
<input type="checkbox" name="fck" value="수영장">수영장<br>
<input type="checkbox" name="fck" value="바베큐장">바베큐장<br>
<input type="checkbox" name="fck" value="유아시설">유아시설<br>
<input type="checkbox" name="fck" value="카페">카페<br>
<input type="checkbox" name="fck" value="편의점">편의점<br>
<input type="checkbox" name="fck" value="온천">온천<br>
<input type="checkbox" name="fck" value="탁구장">탁구장<br>
<input type="checkbox" name="fck" value="골프장">골프장<br>
<input type="checkbox" name="fck" value="족구장">족구장<br>
<input type="checkbox" name="fck" value="연회장">연회장<br>
</div>
<br>
<div>
서비스<br>
<input type="checkbox" name="cck" value="wifi">wifi<br>
<input type="checkbox" name="cck" value="조식서비스">조식서비스<br>
<input type="checkbox" name="cck" value="무료주차">무료주차<br>
<input type="checkbox" name="cck" value="픽업">픽업<br>
<input type="checkbox" name="cck" value="보드게임">보드게임<br>
<input type="checkbox" name="cck" value="영화관람">영화관람<br>
<input type="checkbox" name="cck" value="금연">금연<br>
<input type="checkbox" name="cck" value="반려동물동반">반려동물동반<br>
</div>
<br>
<p>
  <label for="amount">총 숙박 요금</label>
  <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
</p>
 
<div id="slider-range" style="width: 300px;"></div>

</div>

<div id="accomResult" style="display: inline-block; width: 500px; float: left;">
	<div style="display: inline-block; width: 300px; text-align: center;">
	날짜: <input type="text" id="d1" readonly="readonly" size="10">~
	<input type="text" id="d2" readonly="readonly" size="10">
</div>
<div style="display: inline-block;">
	<div id="numCount" name="nCount" style="width: 50px; text-align: center;">
	<span id="totCount" name="nCount">1명</span>
	</div>
	<div id="changeCount" name="nCount">
		인원<br><br>
		<div name="nCount">성인
			<i class="fas fa-minus-circle fa-2x" name="nCount" id="minCount"
			style="color: #B2EBF4;"></i>
			<span id="adultNum" name="nCount">1명</span>
			<i class="fas fa-plus-circle fa-2x" name="nCount" id="plusCount"
			style="color: #B2EBF4;"></i>
		</div>
	</div>
</div>
<input type="button" value="검색" id="searchAccom">
	<div id="accomOrderBox" style="text-align: center;">
	<input type="hidden" id="classification">
		<a href="javascript:orderChange(1);"<c:if test='${classification==1}'>style="color:gray;"</c:if>>추천순</a>
		<a href="javascript:orderChange(2);"<c:if test='${classification==2}'>style="color:gray;"</c:if>>리뷰많은순</a>
		<a href="javascript:orderChange(3);"<c:if test='${classification==3}'>style="color:gray;"</c:if>>가격낮은순</a>
		<a href="javascript:orderChange(4);"<c:if test='${classification==4}'>style="color:gray;"</c:if>>가격높은순</a>
	</div>
	<div id="accom">
		
	</div>
</div>
</div>


<script type="text/javascript">
var acnt=1; //어른 인원수
var totcnt=1; //총 인원수


	$(document).ready(function(){
		var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="${cp}/resources/images/viewLoading.gif" />').appendTo(document.body).hide();
		$(window)	
		.ajaxStart(function(){
		loading.show();
		})
		.ajaxStop(function(){
		loading.hide();
		});

		
		$("#d1").datepicker('setDate','today');
		$("#d2").datepicker('setDate','+1D');
		var count=$("#totCount").text().replace(/[^0-9]/g,"");
		var startDate=$("#d1").val();
		var endDate=$("#d2").val();
		var param={
				"count" : count,
				"startDate" : startDate,
				"endDate" : endDate
		}
		getfirst(param);
		
	});
	$("#searchAccom").click(function(){
		$("input[type='checkbox']").prop("checked",false);
		$("#defradio").prop("checked",true);
		var count=$("#totCount").text().replace(/[^0-9]/g,"");
		var startDate=$("#d1").val();
		var endDate=$("#d2").val();
		console.log(count);
		console.log(startDate);
		console.log(endDate);
		var param={
				"count" : count,
				"startDate" : startDate,
				"endDate" : endDate
		}
		console.log(param);
		getfirst(param);
		
	});
	
	function getfirst(param){
		$.getJSON('${cp}/accomSelect_list',param, function(data) {
			var wMinprice=10000000;
			var wMaxprice=0;
			var count=$("#totCount").text().replace(/[^0-9]/g,"");
			var startDate=$("#d1").val();
			var endDate=$("#d2").val();
			var facility=[]; //시설 배열
			var conven=[]; //편의서비스 배열
			var category=[]; //카테고리 배열
			$("#accom").empty();
			if(data.list.length!=0){
				for(let i=0;i<data.list.length;i++){
					var accomNum=data.list[i].accom_service_number;
					var accomName=data.list[i].accom_name;
					var cate_number=data.list[i].cate_number;
					var minprice=data.list[i].minp;
					var maxprice=data.list[i].maxp;
					var howLong=data.howLong;
					var image=data.image[i];
					if(image==null){
						var imageName="sorry.jpg";
					}else{
						var imageName=data.image[i].imgsavename;
					}
					console.log(accomName);
					console.log(minprice);
					var content="<a href='${cp}/accomDetail?accomNum="+accomNum+
							"&startDate="+startDate+"&endDate="+endDate+
							"&count="+count+"&cate_number="+cate_number+"'>"+
				"<section class='accomSelectSection'>"+
					"<div class='accomSelectImage'>"+
					"<img src='${cp}/resources/upload/"+imageName+"'>"+
					"</div>"+
					"<div class='accomSelectInfo'>"+
					"<h3>"+accomName+"</h3>"+
					"<p style='font-weight:bold; display:inline-block;'>총 "+minprice*howLong+"부터~</p>"+
					"<div style='font-size: 0.7em; display:inline-block; margin-left:10px;'>(1인당 "+parseInt(minprice*howLong/count)+"원)</div>"+
					"<div>1박 "+minprice+"원</div>"+
					"</div>"+
				"</section>"+
				"</a>";
					$("#accom").append(content);
					if(wMinprice>minprice){
						wMinprice=minprice;
					}
					if(wMaxprice<maxprice){
						wMaxprice=maxprice;
					}
				}
			}else{
				var content=
				"<section class='accomSelectSection'>"+
				"<img src='${cp}/resources/images/3.png'>"+
				"<h3>검색결과가 없습니다...</h3>"
				"</section>";
				$("#accom").append(content);
			}
			var sliderMaxprice=wMaxprice;
			
			//함수 중복 실행 방지를 위해 언바인드 후 다시 바인드(1번만 실행)
			$("input[type='checkbox']").unbind("click").bind("click",function(){
				count=$("#totCount").text().replace(/[^0-9]/g,"");
				facility=[];
				conven=[];
				category=0;
				
				
				 $("input[name='fck']:checked").each(function(i){ //시설에 체크된 리스트 저장
		             facility.push($(this).val());
		         });
				 $("input[name='cck']:checked").each(function(i){ //편의서비스에 체크된 리스트 저장
		             conven.push($(this).val());
		         });
		         category=$("input[name='gck']:checked").val();
				 var param= {
						 "startDate" : startDate,
						 "endDate" : endDate,
						 "count" : count,
						 "facility" : facility,
						 "conven" : conven,
						 "category" : category,
						 "maxprice" : sliderMaxprice
				 }
				 console.log(param);
				 getfilter(param);
				 
			});
			
			$("input[type='radio']").unbind("click").bind("click",function(){
				count=$("#totCount").text().replace(/[^0-9]/g,"");
				facility=[];
				conven=[];
				category=0;
				
				 $("input[name='fck']:checked").each(function(i){ //시설에 체크된 리스트 저장
		             facility.push($(this).val());
		         });
				 $("input[name='cck']:checked").each(function(i){ //편의서비스에 체크된 리스트 저장
		             conven.push($(this).val());
		         });
		         category=$("input[name='gck']:checked").val();
				 var param= {
						 "startDate" : startDate,
						 "endDate" : endDate,
						 "count" : count,
						 "facility" : facility,
						 "conven" : conven,
						 "category" : category,
						 "maxprice" : sliderMaxprice
				 }
				 console.log(param);
				 getfilter(param);
				 
			});
			
			$( "#slider-range" ).slider({ //가격 슬라이더 
				range: "min",
			      min: wMinprice,
			      max: wMaxprice,
			      value: wMaxprice,
			      step : 4000,
			      slide: function( event, ui ) {
			        $( "#amount" ).val(" ~ " + ui.value + "원" );
			      },
			      stop:function(value,ui){
			    	  sliderMaxprice=parseInt(ui.value);
			    	  var param= {
								 "startDate" : startDate,
								 "endDate" : endDate,
								 "count" : count,
								 "facility" : facility,
								 "conven" : conven,
								 "category" : category,
								 "maxprice" : sliderMaxprice,
						 }
			    	  console.log(param);
			    	  getfilter(param);
			      }
			    });
			
			$( "#amount" ).val(" ~ " + $( "#slider-range" ).slider("value")+"원" );
		})
		.fail(function(){
		    $("#accom").empty();
		    var content=
			"<section class='accomSelectSection'>"+
				"<img src='${cp}/resources/images/3.png'>"+
				"<h3>검색결과가 없습니다...</h3>"
			"</section>";
			$("#accom").append(content);
		});
	}
	
	function orderChange(classification){ // 정렬 순서 변할때 
		var startDate=$("#d1").val();
		var endDate=$("#d2").val();
		var count=$("#totCount").text().replace(/[^0-9]/g,"");
		var facility=[];
		var conven=[];
		var category=0;
		var maxprice=$("#amount").val().replace(/[^0-9]/g,"");
		
		 $("input[name='fck']:checked").each(function(i){ //시설에 체크된 리스트 저장
             facility.push($(this).val());
         });
		 $("input[name='cck']:checked").each(function(i){ //편의서비스에 체크된 리스트 저장
             conven.push($(this).val());
         });
         category=$("input[name='gck']:checked").val();
		
		var param={
				"startDate" : startDate,
				 "endDate" : endDate,
				 "count" : count,
				 "facility" : facility,
				 "conven" : conven,
				 "category" : category,
				 "maxprice" : maxprice,
				 "classification" : classification
		}
		getfilter(param);
	}
	
	function getfilter(param){

		$.ajax({
			url: '${cp}/accomSelect_list',
			dataType: 'json',
			data: param,
			success: function(data) {
				$("#accom").empty();
				var count=$("#totCount").text().replace(/[^0-9]/g,"");
				var startDate=$("#d1").val();
				var endDate=$("#d2").val();
				if(data.list.length!=0){
					for(let i=0;i<data.list.length;i++){
					 	var accomNum=data.list[i].accom_service_number;
						var accomName=data.list[i].accom_name;
						var cate_number=data.list[i].cate_number;
						var minprice=data.list[i].minp;
						var maxprice=data.list[i].maxp;
						var image=data.image[i];
						if(image==null){
							var imageName="sorry.jpg";
						}else{
							var imageName=data.image[i].imgsavename;
						}
						console.log(accomName);
						console.log(minprice);
						var content="<a href='${cp}/accomDetail?accomNum="+
								accomNum+"&startDate="+startDate+"&endDate="+
								endDate+"&count="+count+"&cate_number="+cate_number+"'>"+
						"<section class='accomSelectSection'>"+
							"<div class='accomSelectImage'>"+
							"<img src='${cp}/resources/upload/"+imageName+"'>"+
							"</div>"+
							"<div class='accomSelectInfo'>"+
							"<h3>"+accomName+"</h3>"+
							"<p>숙소정보</p>"+
							"<p>1박 총 "+minprice+"원</p>"+
							"<p style='font-size: 0.7em;'>1인당 "+parseInt(minprice/count)+"원</p>"+
							"</div>"+
						"</section>"+
						"</a>";
						$("#accom").append(content);
					}
				}else{
					var content=
					"<section class='accomSelectSection'>"+
						"<img src='${cp}/resources/upload/sorry.jpg'>"+
						"<h3>검색결과가 없습니다...</h3>"
					"</section>";
					$("#accom").append(content);
				}
			},
		  error: function(XMLHttpRequest, textStatus, errorThrown) {
		    console.log(textStatus, errorThrown);
		    $("#accom").empty();
		    var content=
			"<section class='accomSelectSection'>"+
				"<img src='${cp}/resources/upload/sorry.jpg'>"+
				"<h3>검색결과가 없습니다...</h3>"
			"</section>";
			$("#accom").append(content);
		  }
		});
	}
	
	$("#plusCount").click(function(){
		if(!(acnt>=14)){
			acnt++;
			totcnt++;
		}
		$("#adultNum").text(acnt+"명");
		$("#totCount").text(totcnt+"명");
	});
	$("#minCount").click(function(){
		if(!(acnt<=1)){
			acnt--;
			totcnt--;
		}
		$("#adultNum").text(acnt+"명");
		$("#totCount").text(totcnt+"명");
	});
	$("#numCount").click(function(){
		$("#changeCount").slideToggle(200);
	});
	$('html').click(function(e){
		if(!$(e.target).is("[name='nCount']")){
			$("#changeCount").slideUp(200);
		}
	});
	$("#d1").datepicker({
		dateFormat:'yy-mm-dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true,
		minDate:0,
		maxDate:"2M",
		showAnim:"toggle",
		onClose: function(selectedDate) {
			var nextDay=new Date(selectedDate);
			nextDay.setDate(nextDay.getDate()+1);
			var nextTwo=new Date(selectedDate);
			nextTwo.setDate(nextTwo.getDate()+14);
			$("#d2").datepicker("option","minDate",nextDay);
			$("#d2").datepicker("option","maxDate",nextTwo);
		}
	});
	$("#d2").datepicker({
		dateFormat:'yy-mm-dd',
		dayNamesMin:['일','월','화','수','목','금','토'],
		monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		yearSuffix:"년",
		showMonthAfterYear:true,
		minDate:0,
		showAnim:"toggle"
	});
	
	
</script>