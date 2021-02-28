<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>
<style>
	#memberWrap{
		width: 70%;
		margin-left: 150px;
	}
 #memberWrap #membertbl{
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
 #memberWrap #membertbl th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
 #memberWrap #membertbl th {
    background-color: #bbdefb;
  }
 #memberWrap #membertbl td {
    background-color: #e3f2fd;
  }
 #memberWrap .memberPaging{
  	text-align: center;
  }
  #memberWrap #keywordSearchMember{
  	margin-top: 20px;
  	text-align: right;
  }
  #memberWrap #createMem{
  	margin-top: 10px;
  	text-align: right;
  }
</style>
</head>
<body>
<h3><a href="${cp }/couponManage">쿠폰발급/조회</a></h3>
<h3><a href="${cp }/memberManageList">회원관리</a></h3>
<br>
<div id="memberWrap">
<h2>회원관리</h2>
<a href="${cp }/memberManageList?field=${field}&keyword=${keyword}&orderby=1&pageNum=${pu.pageNum}"
id="idOrd1">아이디 정렬^</a>
<a href="${cp }/memberManageList?field=${field}&keyword=${keyword}&orderby=2&pageNum=${pu.pageNum}"
style="display: none;" id="idOrd2">아이디 정렬v</a>
<a href="${cp }/memberManageList?field=${field}&keyword=${keyword}&orderby=3&pageNum=${pu.pageNum}"
id="nameOrd1">이름 정렬^</a>
<a href="${cp }/memberManageList?field=${field}&keyword=${keyword}&orderby=4&pageNum=${pu.pageNum}"
style="display: none;" id="nameOrd2">이름 정렬v</a>
<a href="${cp }/memberManageList?field=${field}&keyword=${keyword}&orderby=5&pageNum=${pu.pageNum}"
id="gradeOrd1">등급 정렬^</a>
<a href="${cp }/memberManageList?field=${field}&keyword=${keyword}&orderby=6&pageNum=${pu.pageNum}"
style="display: none;" id="gradeOrd2">등급 정렬v</a>
<input type="hidden" value="${orderby }" id="checkOrderby">
<table id="membertbl">
	<tr>
		<th>아이디</th>
		<th>회원명</th>
		<th>등급</th>
		<th>주소</th>
		<th>상세보기</th>
	</tr>
	<c:forEach var="member" items="${userList }">
	<tr>
		<td>${member.user_id }</td>
		<td>${member.user_name }</td>
		<td>${member.user_grade }</td>
		<td>${member.user_addr }</td>
		<td>
		<form action="${cp }/memberDetailManage">
			<input type="hidden" name="user_id" value="${member.user_id }">
			<button>상세보기</button>
		</form>
		</td>
	</tr>
	</c:forEach>
</table>
<div id="keywordSearchMember">
<form action="${cp }/memberManageList" method="post">
	<select name="field" id="field">
		<option value="user_id" <c:if test="${field=='user_id' }">selected</c:if>>아이디</option>
		<option value="user_name" <c:if test="${field=='user_name' }">selected</c:if>>이름</option>
		<option value="user_addr" <c:if test="${field=='user_addr' }">selected</c:if>>주소</option>
	</select>
	<input type="text" name="keyword" value="${keyword }">
	<input type="submit" value="검색">
</form>
</div>
<div class="memberPaging">
	<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${i==pu.pageNum }">
				<a href="${cp }/memberManageList?pageNum=${i}&field=${field}&keyword=${keyword}&orderby=${orderby}"><span style='color:blue'>[${i }]</span></a>
			</c:when>
			<c:otherwise>
				<a href="${cp }/memberManageList?pageNum=${i}&field=${field}&keyword=${keyword}&orderby=${orderby}"><span style='color:gray'>[${i }]</span></a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	var ord=$("#checkOrderby").val();
	if(ord==1){
		$("#idOrd1").css("display","none");
		$("#idOrd2").css("display","");
	}else if(ord==3){
		$("#nameOrd1").css("display","none");
		$("#nameOrd2").css("display","");
	}else if(ord==5){
		$("#gradeOrd1").css("display","none");
		$("#gradeOrd2").css("display","");
	}
	
});
</script>
</body>
</html>