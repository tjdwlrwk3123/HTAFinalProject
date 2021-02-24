<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div>
		<form action="/tour/adminSend" method="get" id="adminMailform">
			<table>
				<tr>
					<td colspan="7" align="center">메일 보내기</td>
				</tr>
				<tr>
					<td align="left" colspan="7"><span>메일 보내기</span>
				</tr>
				<tr>
					<td align="left" colspan="7">
						<span>수신자</span>
						<input type="text" id="searchPTN" name="user_id">
					</td>
				</tr>
				<tr>
					<td>보낼 내용</td>
				</tr>
				<tr>
					<td><textarea id="textarea" name="textarea" rows="15" cols="100"></textarea></td>
				</tr>
				<tr>
					<td colspan="7" align="center">
						<input type="button" id="submitBtn" value="전송">
						<input type="reset" value="다시 입력">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">

	$("#submitBtn").click(function(e){
		if($("#searchPtn").val()==""){
			alert("빈칸없이 입력해주세요");
		}else{
			$("#adminMailform").submit();
		}
	});

$(function(){
   $( "#searchPTN" ).autocomplete({ 
      source : function(request,response ) { 
      $.ajax({ 
         url: "/tour/ptnSearch", 
         dataType: "json", 
         data: {  
            searchValue: request.term }, 
         success: function( result ) {
        	 console.log(result);
         var userId = result.user_id;
         response( userId);
            } 
       	}); 
      }, 
         minLength: 2, 
         select: function(event, ui) {} 
     }); 
});

</script>