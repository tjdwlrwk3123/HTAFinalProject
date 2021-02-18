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
	.heartbox{
		position: absolute;
		bottom:0;
	 	width: 100%;
/* 	 	background-color:MistyRose; */
	 	text-align: right;
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
		<h1>${user_id}님의 위시리스트</h1>
	</div>
	
	<div id="wishlist_list">

	</div>
</div>

<script>


	$(document).ready(function(){
		var loading = $('<div id="loading" class="loading"></div><img id="loading_img" alt="loading" src="${cp}/resources/gimgs/viewLoading.gif" />').appendTo(document.body).hide();
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
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-4' id='cardbox'>";
			for(let i=0; i<data.list.length; i++){
				let cate_number = data.list[i].cate_number;
				let service_number = data.list[i].service_number;
				let user_id = data.list[i].user_id;
				let tour_type = data.list[i].tour_type;
				let tour_name = data.list[i].tour_name;
				let avgpoint= Math.round(data.list[i].avgpoint);
				let rcnt = data.list[i].rcnt; //리뷰 갯수
				let imgsavename = data.list[i].imgsavename;
				let tour_price = data.list[i].tour_price;
				let discount = data.list[i].discount; // 할인 적용되면 정보 주기 0보다 큰 숫자면 해당 서비스에 할인 옵션이 있다는 의미.
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

				var stars = ""; // 가능하면 반개 별도 쓸수 있으면 좋음
				for(let k=0; k<avgpoint; k++){
					stars+="<i class='fas fa-star'></i>";
				}
				for(let l=0; l<5-avgpoint; l++){
					stars+="<i class='far fa-star'></i>";
				}
				
				str+="<div class='col mb-4'>"+
						"<div class='card h-100' style='width: 14rem;'>"+
						   	 "<input type='hidden' name='user_id' value='"+user_id+"'>"+
						   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
						   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
						 	 "<img src='${cp }/resources/images/"+imgsavename+"' class='card-img-top'  alt='"+tour_name+"' onclick='move(event)'>"+
						 	 "<div class="+tour_name+">"+
						   		 "<h5 class='card-title'>"+tour_name+"</h5>"+
							   	 "<p class='card-text'>"+tour_type+"</p>"+
							   	 "<p class='card-text'>"+stars+"("+rcnt+")"+"</p>"+
							   	 "<p class='card-text'>"+tour_price+"원/명</p>"; 
			   	 if(discount>0){
				   	 str += "<p class='card-text'>특가판매중</p>";
			   	 }else{
// 			   		 str+= "<br>";
			   	 }
			   	 str+= 	"</div>"+
					   	"<div class='heartbox'><i class='fas fa-heart fa-lg' onclick='wish(this)'></i></div>" +
				 	 "</div>"+
				  "</div>";
			}
			str+="</div>";
			$("#wishlist_list").append(str);
		});
	}

	
	function wish(i){
		var user_id= i.parentNode.parentNode.firstChild
		var cate_number= user_id.nextSibling;
		var service_number= cate_number.nextSibling;
		
		if(i.className=='fas fa-heart fa-lg'){
			$.getJSON("${cp}/wishDelete", {"cate_number":cate_number.value,"service_number":service_number.value,"user_id":user_id.value },
				function(data) {
				let result = data.code;
				if(result=='delete_success'){
					i.className = 'fas fa-heart-broken fa-lg';
				}else if(result=='delete_fail'){
					alert("delete ERROR");
				}
			});
// 			console.log(user_id.value+"/"+cate_number.value+"/"+service_number.value);
		}else if(i.className='fas fa-heart-broken fa-lg' ){
			$.getJSON("${cp}/wishInsert", {"cate_number":cate_number.value,"service_number":service_number.value,"user_id":user_id.value },
				function(data) {
				let result = data.code;
				if(result=='insert_success'){
					i.className = 'fas fa-heart fa-lg';
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			});
		}
	}
	
	function move(e){
		var cate_number=parseInt(e.target.previousSibling.previousSibling.value);
		var service_number=parseInt(e.target.previousSibling.value);
		console.log(cate_number+"//"+service_number);
		
		window.location.href="${cp}/tourDetail?cate_number="+cate_number+"&service_number="+service_number;
	}
	
</script>

