<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
	<form:form action="/tour/userinput" method="post">
	<h2 align="center">회원 가입</h2>
		<table align="center">
			<tr>
				<td colspan="7" align="center">회원 정보 입력</td>
			</tr>
			
			<tr>
				<td align="left">아이디 : </td>
				<td colspan="6"><input type="text" name="userid" maxlength="12">
				4~12자리 이내의 아이디를 입력하세요</td>
			</tr>
			
			<tr>
				<td align="left">비밀번호 : </td>
				<td colspan="6"><input type="password" id="fpwd" name="password" maxlength="15">
				15자리 이내의 영문 대소문자와 숫자를 입력하세요</td>
			</tr>
			<tr>
				<td align="left">비밀번호 확인 : </td>
				<td colspan="6"><input type="password" id="lpwd"></td>
			</tr>
			<tr>
				<td align="left">메일 주소 : </td>
				<td colspan="2"><input type="text" name="email" id="email"></td>
				<td colspan="2"><input type="text" name="domain" id="domain"></td>
				<td colspan="2">
					<select id="seldomain" name="seldomain">
						<option value="@naver.com">@naver.com</option>
						<option value="@gmail.com">@gmail.com</option>
						<option value="@daum.net">@daum.net</option>
						<option value="직접입력">직접 입력</option>
					</select>
				</td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="회원가입">
			<input type="reset" value="다시입력">
		</p>
	</form:form>
</div>

<script type="text/javascript">
	$("#seldomain").change(function(){
		var value=$(this).val();
		var dom=document.getElementById("domain");
		if(value=='@naver.com'){
			dom.value='@naver.com';
			$("#domain").prop('readonly',true);
		}else if(value=='@gmail.com'){
			dom.value='@gmail.com';
			$("#domain").prop('readonly',true);
		}else if(value=='@daum.net'){
			dom.value='@daum.net';
			$("#domain").prop('readonly',true);
		}else{
			dom.value="";
			$("#domain").prop('readonly',false);
		}
	});
	
	$("#userid").keyup(function(e){
        var id=$(this).val();
        var idchk=document.getElementById("idchk");
        if(id.length<4){
            idchk.innerHTML="아이디를 4자이상 입력해주세요";
        }else if(id.length>4){
            idchk.innerHTML="";
        }
    });
    
    $("#lpwd").keyup(function(e){
       var lpwd=$("#lpwd").val();
        var fpwd = $("#fpwd").val();
        var span = document.getElementById("pwdchk");
           if(lpwd==fpwd){
               span.innerHTML="비밀번호가 일치합니다";
               span.style.color="blue";
           }else{
               span.innerHTML="비밀번호가 일치하지 않습니다";
               span.style.color="red"
           } 
    });
		
	
</script>