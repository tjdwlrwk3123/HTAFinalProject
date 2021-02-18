<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div>
    	<h3>아이디 찾기</h3>
    	<span>가입할 때 입력했던 이메일</span><input type="text" id="user_email">
    	<input type="button" value ="찾기" id="findid">
    	
    	<span id="user_id"></span>
    </div>
    
    <script type="text/javascript">
    	$("#findid").click(function(e){
    		$.getJSON("${cp}/findId",{"user_email":$("#user_email").val()},function(data){
    			$("#user_id").empty();
    			
    			if(data.user_id.length==0){
    				$("#user_id").append("찾는 아이디가 없습니다");
    			}else{
	    			for(let i=0;i<data.user_id.length;i++){
	    				var fid=data.user_id[i];
	    				console.log(fid);
	    				$("#user_id").append("<p>"+fid+"</p>");
	    			}
    			}
    		});
    	});
    	
    </script>