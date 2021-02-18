<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>
<!-- datepicker라이브러리 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
	#couponWrap{
		width: 70%;
		margin-left: 150px;
	}
 #couponWrap #coupontbl{
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
 #couponWrap #coupontbl th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
 #couponWrap #coupontbl th {
    background-color: #bbdefb;
  }
 #couponWrap #coupontbl td {
    background-color: #e3f2fd;
  }
 #couponWrap .couponPaging{
  	text-align: center;
  }
  #couponWrap #keywordSearchCoupon{
  	margin-top: 20px;
  	text-align: right;
  }
  #couponWrap #createCoup{
  	margin-top: 10px;
  	text-align: right;
  }
</style>
</head>
<body>
<h3><a href="${cp }/couponManage">쿠폰발급/조회</a></h3>
<h3><a href="">회원관리</a></h3>
<br>
<div id="couponWrap">
<h1>쿠폰관리</h1>
<table id="coupontbl">
	<tr>
		<th>쿠폰명</th>
		<th>할인율</th>
		<th>유효기간</th>
	</tr>
	<c:forEach var="coup" items="${couponList }">
	<tr>
		<td>${coup.coupon_name }</td>
		<td>${coup.discount_price }</td>
		<td>${coup.expire_date }</td>
	</tr>
	</c:forEach>
</table>
<div id="keywordSearchCoupon">
<form action="${cp }/couponManage" method="post">
	<select name="field" id="field">
		<option value="coupon_name" <c:if test="${field=='coupon_name' }">selected</c:if>>쿠폰명</option>
		<option value="discount_price" <c:if test="${field=='discount_price' }">selected</c:if>>할인율</option>
		<option value="expire_date" <c:if test="${field=='expire_date' }">selected</c:if>>유효기간</option>
	</select>
	<input type="text" name="picker" id="picker" value="${picker }" readonly="readonly" style="display: none;">
	<input type="text" name="keyword" id="notpicker" value="${keyword }">
	<input type="submit" value="검색">
</form>
</div>
<div id="createCoup">
<a href="${cp }/goCreateCoupon">쿠폰발급</a>
</div>
<div class="couponPaging">
	<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${i==pu.pageNum }">
				<a href="${cp }/couponManage?pageNum=${i}"><span style='color:blue'>[${i }]</span></a>
			</c:when>
			<c:otherwise>
				<a href="${cp }/couponManage?pageNum=${i}"><span style='color:gray'>[${i }]</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>
</div>
<script>

$(document).ready(function(){
	var field=$("#field").val();
	if(field=='expire_date'){
		$("#picker").css("display","");
		$("#notpicker").css("display","none");
		$("#notpicker").val("");
	}else{
		$("#picker").css("display","none");
		$("#notpicker").css("display","");
		$("#picker").val("");
	}
});

$("#field").on('change',function(){
	console.log($(this).val());
	if($(this).val()=='expire_date'){
		$("#picker").css("display","");
		$("#notpicker").css("display","none");
		$("#notpicker").val("");
	}else{
		$("#picker").css("display","none");
		$("#notpicker").css("display","");
		$("#picker").val("");
	}
});

$("#picker").datepicker({
	dateFormat:'yy-mm-dd',
	dayNamesMin:['일','월','화','수','목','금','토'],
	monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	yearSuffix:"년",
	showMonthAfterYear:true,
	minDate:0,
	showAnim:"toggle"
});
</script>
</body>
</html>