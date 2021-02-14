<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %><%-- isELIgnored="true" ${sessionScope.}요런거 쓸려면 false --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/174a2d5b3b.js" crossorigin="anonymous"></script>
<!-- 로딩시 이미지 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<style>
	#tourMain_wrapper{width:1000px; margin:auto; background-color: tomato; }
	#tourMain_wrapper #menubox{width:100%; height:150px; margin:auto; align-content: center; text-align: center; background-color: green; }
	#tourMain_wrapper #menubox #menu{
		width:100%; height:30px; margin-top:50px;margin:auto; text-align: center; background-color: yellow;
	}
	#tourMain_wrapper #menubox #menu a{
		margin:20px;
	}
	#tourMain_wrapper #content #itembox{
		width:100%; align-content: center; background-color: royalblue;
	}
	#loading {
		height: 100%;
		width: 100%;
		left: 0px;
		top: 0px;
		position: fixed;
		_position:absolute; 
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
	#itembox div h5{
	font-weight: 700;
	font-size :16px;
	
	}
	
	
</style>

<div id ="tourMain_wrapper">
	<div id="menubox">
		<input type="hidden" value="${sessionScope.user_id}" id="user_id">
		<h1 style="padding-top:15px;">티켓 & 투어</h1>
		<div id ="menu">
			<a href="${cp}/tourSelect?tourType=1">티켓/패스</a>&nbsp;
			<a href="${cp}/tourSelect?tourType=2">테마파크</a>&nbsp;
			<a href="${cp}/tourSelect?tourType=3">취미/클래스</a>&nbsp;
			<a href="${cp}/tourSelect?tourType=4">맛집</a>&nbsp;
			<a href="${cp}/tourSelect?tourType=0">전체</a>
		</div>
	</div>
	<div id="content">
		<h3 style="margin-left:30px;">추천상품</h3>
		<div id="itembox">
		</div>
	</div>
</div>

<!-- el 써야하면 얘를 jsp로 따로 빼서 만들고 걔를 <script src=> 얘로 불러오기  -->
<script>
	
	$(document).ready(function(){
		var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="${cp}/resources/gimgs/viewLoading.gif" />').appendTo(document.body).hide();
		$(window).ajaxStart(function(){
			loading.show();
		}).ajaxStop(function(){
			loading.hide();
		});
		list();
	});
	
	
	function list(){
		$.getJSON('${cp}/tourMainList',function(data){
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-4'>";
			for(let i=0; i<data.list.length; i++){
				let cate_number= data.list[i].cate_number;
				let service_number= data.list[i].service_number;
				let imgsavename= data.list[i].imgsavename;
				let tour_name= data.list[i].tour_name;
				let tourType= data.list[i].tour_type;
				let avgpoint= Math.round(data.list[i].avgpoint);
				let tour_price= data.list[i].tour_price;
				let rcnt= data.list[i].rcnt;
				var stars = "";
				for(let k=0; k<avgpoint; k++){
					stars+="<i class='fas fa-star'></i>";
				}
				for(let l=0; l<5-avgpoint; l++){
					stars+="<i class='far fa-star'></i>";
				}
				str+= "<div class='col mb-4'>"+
					"<div class='card h-100 mx-auto' style='width: 12rem;'>"+
				   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
				   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
				 	 "<img src='${cp}/resources/images/"+imgsavename+"' class='card-img-top' onclick='move(event)' alt='"+tour_name+"'>"+
				 	  "<div class='card-body'>"+
				   		 "<h5 class='card-title'>"+tour_name+"</h5><br>"+
				   		 "<div class='bottomline'>"+
				   		 "<p>"+tourType+"</p>"+
				   		 stars+"&nbsp;("+rcnt+")<br>"+
				   		 "<p>"+tour_price+"원/명</p>"+
				   		 "</div>"+
			 		 "</div>"+
			 		 "</div>"+
		 		 "</div>"
			}
			str+="</div>";
			$("#itembox").append(str);
		});
	}
	
	function move(e){
		var user_id=$("#user_id").val();
		var cate_number=parseInt(e.target.previousSibling.previousSibling.value);
		var service_number=parseInt(e.target.previousSibling.value);
		
		window.location.href="${cp}/tourDetail?user_id="+user_id+"&cate_number="+cate_number+"&service_number="+service_number;
	}
	

</script>
    
    
    
    