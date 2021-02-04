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


<style>
	#tourMain_wrapper{width:80%; height:80%; margin:auto; background-color: tomato; }
	#tourMain_wrapper #menubox{width:100%; height:15%; margin:auto; align-content: center; text-align: center; background-color: green; }
	#tourMain_wrapper #menubox #menu{
		width:90%; height:30px; margin-top:10px; margin:auto; text-align: center; background-color: yellow
	}
	#tourMain_wrapper #menubox #menu a{
		margin:20px;
	}
	#tourMain_wrapper #content #itembox{
		widht:100%; height: 80%; align-content: center; background-color: pink;
	}
</style>

<div id ="tourMain_wrapper">
	<div id="menubox">
		<h1 style="padding-top:15px;">티켓 & 투어</h1>
		<div id ="menu">
			<a href="">티켓/패스</a>&nbsp;
			<a href="">테마파크</a>&nbsp;
			<a href="">취미/클래스</a>&nbsp;
			<a href="">맛집</a>&nbsp;
			<a href="">스냅촬영</a>&nbsp;
			<a href="">전체</a>
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
		list();
	});
	function list(){
		$.getJSON('${cp}/tourMainList',function(data){
			console.log("aa");
			var str = "";
			str+="<div class='row row-cols-1 row-cols-md-4'>";
			for(let i=0; i<data.list.length; i++){
				let cate_number= data.list[i].cate_number;
				let service_number= data.list[i].service_number;
				let imgsavename= data.list[i].imgsavename;
				let tour_name= data.list[i].tour_name;
				let avgpoint= Math.round(data.list[i].avgpoint);
				let tour_price= data.list[i].tour_price;
				var stars = "";
				for(let k=0; k<avgpoint; k++){
					stars+="<i class='fas fa-star'></i>";
				}
				for(let l=0; l<5-avgpoint; l++){
					stars+="<i class='far fa-star'></i>";
				}
				console.log(stars);
				str+= "<div class='col mb-4'>"+
					"<div class='card h-100 mx-auto' style='width: 14rem;'>"+
				 	 "<img src='${cp}/resources/images/"+imgsavename+"' class='card-img-top' onclick='move(event)' alt='"+tour_name+"'>"+
				 	  "<div class='card-body'>"+
				   		 "<h5 class='card-title'>"+tour_name+"</h5><br>"+
				   		 stars+"<br>"+
				   		 "<p>"+tour_price+"원/명</p><br>"+
					   	 "<input type='hidden' name='cate_number' value='"+cate_number+"'>"+
					   	 "<input type='hidden' name='service_number' value='"+service_number+"'>"+
			 		 "</div>"+
			 		 "</div>"+
		 		 "</div>"
			}
			str+="</div>";
			$("#itembox").append(str);
		});
	}
	
	function move(e){
		alert(e.target.alt+"여기로 이동할거야 나중에~");
	}
	

</script>
    
    
    
    