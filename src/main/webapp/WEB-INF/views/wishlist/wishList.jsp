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
	#wishlist_wrapper{width: 80%; height:80%; background-color:pink; border:2px solid black; margin:auto;}
	#wishlist_wrapper h1{background-color: yellow;}
	#wishlist_list{
	background-color:royalblue;
	width: 70%; height: 70%; margin:auto;
	}
</style>
<div id="wishlist_wrapper">
	<div id="wishlist_title">
		<h1>위시리스트</h1>
	</div>
	
	<div id="wishlist_list">

	</div>
</div>

<script>
	$(document).ready(function(){
		alert("aa");
		list();
	});
	function list(){
		$.getJSON('${cp}/wishlist_list', {'user_id':'${user_id}'}, function(data) {
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-3'>";
			for(let i=0; i<data.list.length; i++){
				let cate_number = data.list[i].cate_number;
				let service_number = data.list[i].service_number;
				let imgsavename = data.list[i].imgsavename;
				let user_id = data.list[i].user_id;
				let tour_name = data.list[i].tour_name;
				str+="<div class='col mb-4'>"+
						"<div class='card h-100' style='width: 12rem;'>"+
					 	 "<img src='${cp }/resources/images/"+imgsavename+"' class='card-img-top' onclick='move(event)' alt='"+tour_name+"'>"+
					 	 "<div class="+tour_name+">"+
					   		 "<h5 class='card-title'>"+tour_name+"</h5>"+
						   	 "<p class='card-text'>서울 구경하는 투어입니다</p>"+
						   	 "<i class='fas fa-heart' style='float:right;' onclick='unchk(event)'></i>"+
						   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
						   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
						   	 "<input type='hidden' name='user_id' value='"+user_id+"'>"+
				 		 "</div>"+
				 		 "</div>"+
					  "</div>";
			}
			str+="</div>";
			$("#wishlist_list").append(str);
		});
	}
	
	function unchk(e){
		var cate_number = e.target.nextSibling.value;
		var service_number = e.target.nextSibling.nextSibling.value;
		var user_id = e.target.nextSibling.nextSibling.nextSibling.value;
		$.getJSON('${cp}/delete',{'cate_number':cate_number,'service_number':service_number,'user_id':user_id},function(data){
			if(data.code=='delete_success'){
				$("#wishlist_list").empty();
				list();
			}
		});
	}
	
	function move(e){
		alert(e.target.alt+"여기로 이동할거야 나중에~");
	}
</script>

