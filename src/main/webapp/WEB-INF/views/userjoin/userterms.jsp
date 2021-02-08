<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
	<h1>이용 약관</h1>
	<form id="terms_form" action="/userselect">
		<h4>이용 약관</h4>
		<textarea>이것저것</textarea>
		<p><input type="checkbox" id="chk1">위의 약관에 동의합니다</p><br>
		<h4>개인정보 수집 이용 및 제 3자 제공 동의</h4>
		<textarea>이것저것</textarea>
		<p><input type="checkbox" id="chk2">위의 약관에 동의합니다</p><br>
		<input type="button" id="nextBtn" value="다음단계로">
	</form>
</div>

<script type="text/javascript">
	$("#nextBtn").click(function(){
		if($("#chk1").is(":checked")==false){
			alert("모든 약관에 동의하셔야 다음단계로 진행 가능합니다");
			return;
		}else if($("#chk2").is(":checked")==false){
			alert("모든 약관에 동의하셔야 다음단계로 진행 가능합니다");
			return;
		}else{
			$("#terms_form").submit();
		}
	});
</script>