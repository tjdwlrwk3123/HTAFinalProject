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
  	width: 400px;
  }
  #memberWrap #keywordSearchMember form *{
  	margin-right: 10px;
  }
  #memberWrap #createMem{
  	margin-top: 10px;
  	text-align: right;
  }
  #memberWrap a{
  	text-decoration: none;
  }
</style>
</head>
<body>
<div id="memberWrap">
<h2>등급 조정</h2>
	
	<table id="membertbl">
		<tr>
			<th>아이디</th>
			<th>회원명</th>
			<th>상태</th>
			<th>회원 유형</th>
			<th>정보 변경</th>
		</tr>
		<c:forEach var="list" items="${list }">
		<tr>
			<td>${list.user_id }</td>
			<td>${list.user_name }</td>
			
			<td>
				<select id="status">
					<option value="0" 
						<c:if test="${list.user_condition==0 }">selected</c:if>
					>미인증</option>
					<option value="1"
						<c:if test="${list.user_condition==1 }">selected</c:if>
					>메일 인증</option>
					<option value="2"
						<c:if test="${list.user_condition==2}">selected</c:if>
					>탈퇴</option>
					<option value="3"
						<c:if test="${list.user_condition==3}">selected</c:if>
					>블랙리스트</option>
				</select>
			</td>
			<td>
				<select id="role">
					<option value="ROLE_ADMIN" 
						<c:if test="${list.token_authority=='ROLE_ADMIN' }">selected</c:if>
					>관리자</option>
					<option value="ROLE_MEMBER"
						<c:if test="${list.token_authority=='ROLE_MEMBER' }">selected</c:if>
					>일반 회원</option>
					<option value="ROLE_PARTNER"
						<c:if test="${list.token_authority=='ROLE_PARTNER' }">selected</c:if>
					>파트너</option>
				</select>
			</td>
			<td>
				 <form action="${cp }/authChangeBtn" method="get">
				 	<input type="hidden" name="user_id" id="hid"value="${list.user_id }">
				 	<input type="hidden" name="user_condition" id="hcon" value="${list.user_condition }">
				 	<input type="hidden" name="token_authority" id="hauth"value="${list.token_authority }">
				 	<input type="submit" value="변경">
				 </form>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>

<script type="text/javascript">
	$("#status").change(function(e){
		$("#hcon").val($("#status").val());
	});
	
	$("#role").change(function(e){
		$("#hauth").val($("#role").val());
	});

</script>
</html>