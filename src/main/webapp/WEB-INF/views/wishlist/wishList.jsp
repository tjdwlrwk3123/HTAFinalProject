<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#wishlist_wrapper{width: 80%; height:80%; background-color:pink; border:2px solid black; margin:auto;}
	#wishlist_wrapper h1{background-color: yellow;}
	#wishlist_list{
	background-color:royalblue;
	width: 70%; height: 70%; margin:auto;
	}
	
</style>
<script type="text/javascript" src="/finalproject/resources/js/jquery-3.5.1.js"></script>
<div id="wishlist_wrapper">
	<div id="wishlist_title">
		<h1>위시리스트</h1>
	</div>
	<div id="wishlist_list">
	</div>
</div>

<script>
	$(function(){
		$.getJSON('${cp}/wishlist_list', {'user_id':'${user_id}'}, function(data) {
			console.log(data.list.length);
			var str = "";
			for(let i=0; i<data.list.length; i++){
				let imgsavename = data.list[i].imgsavename;
				let tour_name = data.list[i].tour_name;
				str+="<div style='width:200px; height:230px; float:left; background-color:red; margin:20px;'>"+
						"<img src=${cp }/resources/images/"+imgsavename+"><br>"+
						"<p>"+tour_name+"</p>"+
						"</div>";
			}
			console.log(str);
			$("#wishlist_list").append(str);
		});
	});
</script>