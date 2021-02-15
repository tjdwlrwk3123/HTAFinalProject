<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout.jsp</title>
<link rel="stylesheet" type="text/css" href="/tour/resources/css/tourSelect.css">
<link rel="stylesheet" type="text/css" href="/tour/resources/css/main.css">
<script type="text/javascript" src="/tour/resources/js/jquery-3.5.1.min.js"></script>

</head>
<body>
<div id="wrap">
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	
	<input type="hidden" id="sender" value="none"><br>
	<div id="chat_icon"><i class="fas fa-headset fa-2x"></i></div>
	<div id="chat_window">
		<div id="callwrap">
			<div id="call"><i class="fas fa-concierge-bell fa-3x"></i><br>
			<p style="font-weight:700" id="serverMsg">Call Manager!</p>
			</div>
		</div>
		<div style="float:right; margin-right:10px;" id="closebtn"><i class="fas fa-times fa-lg"></i></div>
		<div id="messages">
		</div>
		<div id="btnbox">
			<textarea id="inputtext" rows="7" cols="31" style="resize:none;" ></textarea>
			<input type="button" value="SEND" id="send" onclick="send()" style="float:right; margin:5px;"><br>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	
	var ws;
	
	var messages = document.getElementById("messages"); 
	
	$("#chat_icon").on("click",function(){ 
		$("#chat_window").toggle(500);
	});
	
	
	$("#closebtn").on("click",function(){ // 닫으면 종료
		closeSocket();
		clearText();
		$("#chat_window").toggle(500);
		
		$.getJSON("${cp}/logout.do", {"username":$("#sender").val()}, // 디비에서 로그아웃 로그해주기
				function(data) {
			console.log("DB데이터처리는 ! : "+data.code);
		});
		$("#callwrap").fadeIn(700);
	});
	
	
	$("#call").click(function(){
		$.getJSON("${cp}/login.do", function(data) {
			if(data.code=='success'){
				var username = data.username;
				$("#sender").val(username);
				openSocket();
				$("#callwrap").fadeOut(300); // 소켓 남은게 있으면 다음단계로 넘어가기
				$("#inputtext").focus();
			}else{
				$("#serverMsg").text(data.errorMsg);
				return;
			}
		});
	});
	
	function openSocket(){
		writeResponse("SYSTEM잠시만 기다려주세요.");
		if(ws!= undefined && ws.readyState != WebSocket.CLOSED){
			writeResponse("ws WebSocket is already opended");
			return;
		}
		//웹 소켓 만드는 코드
		var username = document.getElementById("sender").value;
		
		var whichSC = "";
		if(username=='customer1'){
			whichSC = "echo1.do";
		}else if(username=='customer2'){
			whichSC = "echo2.do";
		}else if(username=='customer3'){
			whichSC = "echo3.do";
		}else if(username=='customer4'){
			whichSC = "echo4.do";
		}
		
		ws = new WebSocket("ws://localhost:9090/tour/"+whichSC);
		
		ws.onopen = function(event){
			if(event.data== undefined){
				return;
			}
			writerResponse(event.data);
			ws.send(username);
			
		}
		ws.onmessage = function(event){
			console.log('writeResponse');
			console.log('ws에서 받아온 메세지 :' + event.data);
			writeResponse(event.data);
		}
		ws.onclose=function(event){
			writeResponse("대화를 종료합니다.");
		}
	}
	
	//////////////////////
	
	function send(){
		var text = document.getElementById("inputtext").value+
			","+document.getElementById("sender").value;
		ws.send(text);
		text="";
		document.getElementById("inputtext").value="";
	}
	
	document.getElementById("inputtext").addEventListener("keydown", function(e) {
		if(e.keyCode==13){
		    if (!event.shiftKey){
				e.preventDefault();//엔터는 원래는 줄바꿈인데 막고 전송으로!(필요시)
				send();
            }
		}
	}, false);
	///////////////////////
	
	
	function closeSocket(){ // JSON으로 디비 정보 수정해주기 
		ws.close();
		$.getJSON("${cp}/logout.do", {"username":$("#sender").val()}, // 디비에서 로그아웃 로그해주기
				function(data) {
			console.log("DB데이터처리는 ! : "+data.code);
		});
	}
	
	function writeResponse(text){
		if(text.includes("#$#")){ //내가 보낸 메세지라는 표시
			var ntext = text.replace("#$#", "");
			messages.innerHTML = "<div class='fromM'><span class='mTag'>"+ntext+"</span></div>"+messages.innerHTML;
		}else if(text.includes("SYSTEM")){ //시스템이 보내는 메세지
			var ntext= text.replace("SYSTEM","");
			messages.innerHTML = "<div class='fromC'><p class='cTag'>SYSTEM</p><span>"+ntext+"</span></div>"+messages.innerHTML;
		}else{
			messages.innerHTML = "<div class='fromC'><p class='cTag'>MANAGER</p><span>"+text+"</span></div>"+messages.innerHTML;
		}
	}
	
	function clearText(){
		document.getElementById("messages").innerHTML="";
	}
</script>
</html>