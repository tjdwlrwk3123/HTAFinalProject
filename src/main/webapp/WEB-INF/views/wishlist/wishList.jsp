<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style>
	#wishlist_wrapper{
		width: 1000px; 
		margin:auto;
	}
	
	#wishlist_wrapper h1{
		font-weight: 800;
		margin:15px;
	}
	
	#wishlist_list{
		width: 1000px;
		margin:auto;
	}
	
	h5{
		margin-top:15px;
		font-weight: 800;
		font-size :24px;
		margin-bottom: 20px;
	}
	#cardbox div p{
		margin:3px;
	}
	.card-img-top{
		width:222px;
		height:170px;
	}
	.card {
		
	}
	#cardbox .card:hover{
		border: 2px dashed black;
	}	
	.heartbox{
		position: absolute;
		bottom:0;
		padding-right:3px;
		margin-bottom:3px;
	 	width: 100%;
	 	text-align: right;
	}
	.heartbox i{
		right:3px;
		bottom:3px;
	}
	.discountImg{
 		position: absolute;
 		top:3px;
 		left:3px;
	}
	.heartImg{
 		position: absolute;
 		width:25px;
 		bottom:3px;
 		right:3px;
	 	
	}
	.starImg{
		width:20px;
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
</style>
<div id="wishlist_wrapper">
	<div id="wishlist_title">
		<div id="testStar"></div>
		<h1>${user_id}님의 위시리스트<img src="${cp }/resources/images/HRT.svg" style="width:40px; margin-bottom:10px;"></h1>
	</div>
	
	<div id="wishlist_list">
	</div>
</div>

<script>


	$(document).ready(function(){
		var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="${cp}/resources/images/viewLoading.gif" />').appendTo(document.body).hide();
		$(window)	
		.ajaxStart(function(){
		loading.show();
		})
		.ajaxStop(function(){
		loading.hide();
		});
		
		list();

	});
	
	function list(){
		$.getJSON('${cp}/wishlist_list', {'user_id':'${user_id}'}, function(data) {
			console.log("들어옴");
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-4' id='cardbox'>";
			for(let i=0; i<data.list.length; i++){
				let tour_amount = data.list[i].tour_amount;
				if(tour_amount==0){
					continue;
				}
				let cate_number = data.list[i].cate_number;
				let service_number = data.list[i].service_number;
				let user_id = data.list[i].user_id;
				let tour_type = data.list[i].tour_type;
				let tour_name = data.list[i].tour_name;
				let avgpoint= data.list[i].avgpoint;
				let rcnt = data.list[i].rcnt; //리뷰 갯수
				let imgsavename = data.list[i].imgsavename;
				let tour_price = data.list[i].tour_price;
				let discount = data.list[i].discount; // 최저가에 붙은 할인
				let dcnt = data.list[i].dcnt; // 할인 적용되면 정보 주기 0보다 큰 숫자면 해당 서비스에 할인 옵션이 있다는 의미.
// 				console.log("cate_number"+cate_number);
// 				console.log("service_number"+service_number);
// 				console.log("user_id"+user_id);
// 				console.log("tour_type"+tour_type);
// 				console.log("tour_name"+tour_name);
// 				console.log("avgpoint"+avgpoint);
// 				console.log("rcnt"+rcnt);
// 				console.log("imgsavename"+imgsavename);
// 				console.log("tour_price"+tour_price);
// 				console.log("discount"+discount);
				
				var fullstars = Math.floor(avgpoint);
				var decimal =  Math.round(avgpoint*10%10);
				var stars ="";
				if(avgpoint==0){
					for(let l=0; l<5; l++){
						stars+="<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>";
					}
				}else{
					if(fullstars==5){ // 평점이 5점이면~ 
						for(let k=0; k<fullstars; k++){
							stars+="<img src='${cp }/resources/images/fullStar.svg' class='starImg'>";
						}
					}else{
						for(let k=0; k<fullstars; k++){
							stars+="<img src='${cp }/resources/images/fullStar.svg' class='starImg'>";
						}
						if(decimal>=1 && decimal<3){
							stars+="<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>";
						}else if(decimal>=3 && decimal<8 ){
							stars+="<img src='${cp }/resources/images/halfStar.svg' class='starImg'>";
						}else if(decimal>=8){
							stars+="<img src='${cp }/resources/images/fullStar.svg' class='starImg'>";
						}
						for(let l=0; l<5-fullstars-1; l++){
							stars+="<img src='${cp }/resources/images/emptyStar.svg' class='starImg'>";
						}
					}
				}
				str+="<div class='col mb-4'>"+
						"<div class='card h-100' style='width: 14rem;' onclick='move(this)'>"+
						   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
						   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
						 	 "<img src='${cp }/resources/upload/"+imgsavename+"' class='card-img-top'  alt='"+tour_name+"'>"+
						 	 "<div class="+tour_name+">"+
						   		 "<h5 class='card-title'>"+tour_name+"</h5>"+
							   	 "<p class='card-text'>"+tour_type+"</p>"+
							   	 "<p class='card-text'>"+stars+"("+rcnt+")"+"</p>";
				if(discount>0){
							str+="<p class='card-text' style='text-decoration:line-through'>옵션최저가 "+tour_price+"원/명</p>"+
								 "<p class='card-text'>할인특가 "+(tour_price-tour_price*discount/100)+"원/명</p>"+
								 "<img src='${cp }/resources/images/discount1.svg' class='discountImg'>";  
				}else if(dcnt>0){
							str+="<p class='card-text'>옵션최저가 "+tour_price+"원/명</p>"+
								 "<p class='card-text'>할인된 옵션이 있습니다</p>"+
								 "<img src='${cp }/resources/images/discount1.svg' class='discountImg'>";
				}else{
							str+="<p class='card-text'>옵션최저가 "+tour_price+"원/명</p>";
				}			   	 
			   	 		str+="</div>"+
					   	"<div class='heartbox'><img src='${cp }/resources/images/HRT.svg' class='heartImg' onclick='wish(this)' alt='heart'></div>" +
				 	 "</div>"+
				  "</div>";
			}
			str+="</div>";
			$("#wishlist_list").append(str);
		});
	}

// 	$(".heartImg").on('click',function(e){
// 		var cate_number= e.target.parentNode.parentNode.firstChild
// 		var service_number= cate_number.nextSibling;
		
// 		if(img.alt=='heart'){
// 			alert("bb");
// 			$.getJSON("${cp}/wishDelete", {"cate_number":cate_number.value,"service_number":service_number.value},
// 				function(data) {
// 				let result = data.code;
// 				if(result=='delete_success'){
// 					img.src="${cp }/resources/images/brokenHRT.svg"
// 					img.alt = 'brokenHRT';
// 				}else if(result=='delete_fail'){
// 					alert("delete ERROR");
// 				}
// 			});
// // 			console.log(user_id.value+"/"+cate_number.value+"/"+service_number.value);
// 		}else if(img.alt=='brokenHRT' ){
// 			alert("bb");
// 			$.getJSON("${cp}/wishInsert", {"cate_number":cate_number.value,"service_number":service_number.value},
// 				function(data) {
// 				let result = data.code;
// 				if(result=='insert_success'){
// 					img.src="${cp }/resources/images/HRT.svg"
// 					img.alt = 'heart';
// 				}else if(result=='insert_fail'){
// 					alert("insert ERROR");
// 				}
// 			});
// 		}
// 	});
	

	function wish(img){
		event.stopPropagation();
		var cate_number= img.parentNode.parentNode.firstChild
		var service_number= cate_number.nextSibling;
		console.log(cate_number);
		if(img.alt=='heart'){
			$.getJSON("${cp}/wishDelete", {"cate_number":cate_number.value,"service_number":service_number.value},
				function(data) {
				let result = data.code;
				if(result=='delete_success'){
					img.src="${cp }/resources/images/brokenHRT.svg"
					img.alt = 'brokenHRT';
				}else if(result=='delete_fail'){
					alert("delete ERROR");
				}
			});
// 			console.log(user_id.value+"/"+cate_number.value+"/"+service_number.value);
		}else if(img.alt=='brokenHRT' ){
			$.getJSON("${cp}/wishInsert", {"cate_number":cate_number.value,"service_number":service_number.value},
				function(data) {
				let result = data.code;
				if(result=='insert_success'){
					img.src="${cp }/resources/images/HRT.svg"
					img.alt = 'heart';
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}
	}
	
	function move(m){
		var cate_number=parseInt(m.firstChild.value);
		var service_number=parseInt(m.firstChild.nextSibling.value);
		console.log(cate_number+"//"+service_number);
		
		window.location.href="${cp}/tourDetail?cate_number="+cate_number+"&service_number="+service_number;
	}
	
</script>

