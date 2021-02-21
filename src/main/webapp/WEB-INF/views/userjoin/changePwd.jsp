<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	    
	<form action="/tour/changePwd" method="post" id="pwdchkform">
	    <div>
	    	<h3>비밀 번호 변경</h3>
	    	<input type="hidden" value="${vo.user_email }" name="user_email">
	    	<p>아이디 :<input type="text" name="user_id" value=" ${vo.user_id }" readonly></p>
	    	<p>변경할 비밀번호<input type="password" id="user_pass" name="user_pass"></p>
	    	<p>비밀번호 확인<input type="password" id="chk">
	    	<span id="pwdchk"></span></p>
	    	<p><input type="button" id="chkBtn" value="변경"></p>
	    </div>
   </form>
   <script type="text/javascript">
    $("#chk").keyup(function(e){
        var pwd=$("#user_pass").val();
         var chk = $("#chk").val();
            if(pwd==chk){
                //span.innerHTML="비밀번호가 일치합니다";
                $("#pwdchk").text("비밀번호가 일치합니다");
                $("#pwdchk").css('color','blue');
                //span.style.color="blue";
            }else{
               // span.innerHTML="비밀번호가 일치하지 않습니다";
                //span.style.color="red"
             	$("#pwdchk").text("비밀번호가 일치하지 않습니다");
                $("#pwdchk").css('color','red');
            } 
     });
    
    $("#chkBtn").click(function(){
    	var pwd=$("#user_pass").val();
    	var chk=$("#chk").val();
    	if(pwd=="" || chk=="" ){
    		alert("빈칸없이 입력해주세요");
    		return;
    	}else if(pwd!=chk){
    		alert("비밀번호가 일치하지 않습니다");
    		return;
    	}else{
    		$("#pwdchkform").submit();
    	}
    });
    </script>