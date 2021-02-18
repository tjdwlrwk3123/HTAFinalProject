<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<h3>비밀번호 찾기</h3>
	<span>가입 시 입력했던 이메일</span><input type="text" id="user_email">
	<input type="button" id="findPwdBtn" value="이메일 발송">
	<span id="findresult"></span>
</div>

<script type="text/javascript">
	$("#findPwdBtn").click(function(){
		$.getJSON("${cp}/findId",{"user_email":$("#user_email").val()},function(data){
			$("#findresult").empty();
			if(data.user_id.length==0){
				$("#findresult").append("정보가 존재하지 않습니다");
			}else{
				for(let i=0;i<data.user_id.length;i++){
					alert("발송된 이메일에서 비밀번호를 변경하세요");
					location.href="/tour/sendPwdEmail?user_email="+$("#user_email").val();
				}
			}
		});
	});
</script>