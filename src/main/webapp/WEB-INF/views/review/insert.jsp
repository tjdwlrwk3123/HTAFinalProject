<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰등록</title>
<style>
@import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css);
/*styling star rating*/
.rating{
	border: none;
	float: left;
}
.rating > input{
	display: none;
}
.rating > label:before{
	content: '\f005';
	font-family: FontAwesome;
	margin: 5px;
	font-size: 1.5rem;
	display: inline-block;
	cursor: pointer;
}
.rating > .half:before{
	content: '\f089';
	position: absolute;
	cursor: pointer;
}
.rating > label{
	color: #ddd;
	float: right;
	cursor: pointer;
}
.rating > input:checked ~ label,
.rating:not(:checked) > label:hover, 
.rating:not(:checked) > label:hover ~ label{
	color: #2ce679;
}

.rating > input:checked + label:hover,
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label,
.rating > input:checked ~ label:hover ~ label{
	color: #2ddc76;
}
</style>
<script>
let star = document.querySelectorAll('input');
let showValue = document.querySelector('#rating-value');

for (let i = 0; i < star.length; i++) {
	star[i].addEventListener('click', function() {
		i = this.value;

		showValue.innerHTML = i + " out of 5";
	});
}
</script>
</head>
<body>
<h1>리뷰등록</h1>
<form method="post" action="${cp }/review/insert">
		작성자아이디<br>
		<input type="text" name="user_id"> <!--<input type="text" name="user_id" value="${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}"/> 로그인했을때는 이렇게 처리. -->
		<br>
		서비스고유번호<br>
		<input type="text" name="service_number">
		<br>
		카테고리번호<br>
		<input type="text" name="cate_number">
		<br>
		
		별점(소수점기능은제외함)<br>
		<div class="center">
			<fieldset class="rating">
				<input type="radio" id="star5" name="star_point" value="5"/><label for="star5" class="full" title="Awesome"></label>
			<!-- <input type="radio" id="star4.5" name="star_point" value="4.5"/><label for="star4.5" class="half"></label> -->	
				<input type="radio" id="star4" name="star_point" value="4"/><label for="star4" class="full"></label>
				 <!-- <input type="radio" id="star3.5" name="star_point" value="3.5"/><label for="star3.5" class="half"></label> -->
				<input type="radio" id="star3" name="star_point" value="3"/><label for="star3" class="full"></label>
				 <!-- <input type="radio" id="star2.5" name="star_point" value="2.5"/><label for="star2.5" class="half"></label> -->
				<input type="radio" id="star2" name="star_point" value="2"/><label for="star2" class="full"></label>
			 <!-- 	<input type="radio" id="star1.5" name="star_point" value="1.5"/><label for="star1.5" class="half"></label> -->
				<input type="radio" id="star1" name="star_point" value="1"/><label for="star1" class="full"></label>
				 <!-- <input type="radio" id="star0.5" name="star_point" value="0.5"/><label for="star0.5" class="half"></label> -->
				</fieldset>
			</div>
			<h4 id="rating-value"></h4><br>
		<br>
		리뷰제목<br>
		<input type="text" name="review_title">
		<br>
		리뷰내용<br>
		<textarea rows="5" cols="100" name="review_content"></textarea><br>
		<input type="submit" value="문의글등록">
</form>
</body>
</html>