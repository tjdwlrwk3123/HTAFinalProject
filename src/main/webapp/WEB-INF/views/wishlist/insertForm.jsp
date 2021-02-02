<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.js"></script>
</head>
<body>

	<!-- 위시 넘버는 아마 시퀀스 쓸거 같으니
		나머지 세개만 저런 방식으로 넘기면 json또는 ajax로 담아서 바로 위시리스트에 담겼다는 식으로 하면 될것 같습니다.
	-->
	위시넘버
	<input type="text" name = "wishnum" id="wishnum"><br>
	카테넘버<br>
	<input type="text" name = "catenum" id="catenum"><br>
	서비스넘버<br>
	<input type="text" name = "service_number" id="service_number"><br>
	유저아이디<br>
	<input type="text" name = "user_id" id="user_id"><br>
	<div id="wishInsert" style="display:block;">
			<input type="button" value="위시리스트 등록(AJAX)" id="btn1">
			<input type="button" value="위시리스트 등록(JSON)" id="btn2">
	</div>
	<div id="wishDelete" style="display:none;">
			<input type="button" value="위시리스트에서 제거(AJAX)" id="btn3">
			<input type="button" value="위시리스트에서 제거(JSON)" id="btn4">
	</div>
</body>
<script>
	$("#btn1").on("click",function(){
		$.ajax({
			url:"${cp}/insert",
			dataType: 'xml',
			data:{"wishnum":$("#wishnum").val(),"catenum":$("#catenum").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
			method: 'post',
			success: function(data){
				let result = $(data).find("code").text();
				if(result=='insert_success'){
					$("#wishInsert").css('display', 'none');
					$("#wishDelete").css('display', 'block');
				}else if(result=='insert_fail'){
					alert("insert ERROR");
				}
			}
		});
	});
	
	$("#btn2").on("click",function(){
		$.getJSON("${cp}/insert", {"wishnum":$("#wishnum").val(),"catenum":$("#catenum").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
			function(data) {
			let result = $(data).find("code").text();
			if(result=='insert_success'){
				$("#wishInsert").css('display', 'none');
				$("#wishDelete").css('display', 'block');
			}else if(result=='insert_fail'){
				alert("insert ERROR");
			}
		});
	});
	$("#btn3").on("click",function(){
		$.ajax({
			url:"${cp}/delete",
			dataType: 'xml',
			data:{"wishnum":$("#wishnum").val(),"catenum":$("#catenum").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
			method:'post',
			success: function(data){
				let result = $(data).find("code").text();
				if(result=='delete_success'){
					$("#wishInsert").css('display', 'block');
					$("#wishDelete").css('display', 'none');
				}else if(result=='delete_fail'){
					alert("delete ERROR");
				}
			}
		});
	});
	
	$("#btn4").on("click",function(){
		$.getJSON("${cp}/delete", {"wishnum":$("#wishnum").val(),"catenum":$("#catenum").val(),"service_number":$("#service_number").val(),"user_id":$("#user_id").val() },
			function(data) {
			let result = $(data).find("code").text();
			if(result=='delete_success'){
				$("#wishInsert").css('display', 'block');
				$("#wishDelete").css('display', 'none');
			}else if(result=='delete_fail'){
				alert("delete ERROR");
			}
		});
	});
</script>
</html>