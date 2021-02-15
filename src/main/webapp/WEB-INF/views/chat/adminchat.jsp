<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-type" content="text/html;" charset="UTF-8">
<title>Simple Chat</title>
<style>
	#wrapper{
		width: 1380px;
		margin:auto;
		align-content: center;
	}
	#functionBox{
		width:360px;
		margin:auto;
		border:2px dotted black;
		clear:left;
		padding:10px;
	}
	.messagewindow{
		width: 300px;
		height: 500px; 
		display:flex;  /*flex direction 사용하기 위함 */
 	    flex-direction: column-reverse; /*스크롤 하단 고정 */
	    overflow-y:auto;  /* 내용이 설정된 height을 넘기면 자동으로 스크롤 생성 */
		float: left;
		margin : 20px;
		word-break:break-all;
	}   
	 
	.fromM{/* 내 메세지 div */
		text-align:right;
		margin :8px;
		margin-left:60px;
	}
 	.fromC{ /* 내가 아닌 메세지 div  */ 
		margin :8px;
		margin-right:60px;
		font-weight: 500;
	}
	.mTag{/* 내용에 입힐 CSS */
		margin:3px;
	}
	.cTag{/* */
		margin:0;
		font-weight: 700;
	}
	
	
</style>
</head>
<body>
	<div id="wrapper">
		<!-- 관리자 접속 채팅 창 -->
		<div id="messages1" class="messagewindow"  style="background-color: tomato;">
		<h1>1번 Customer</h1>	
		</div>
		
		<div id="messages2" class="messagewindow"  style="background-color: yellow;">
		<h1>2번 Customer</h1>	
		</div>
		
		<div id="messages3" class="messagewindow"  style="background-color: pink;">
		<h1>3번 Customer</h1>	
		</div>
		
		<div id="messages4" class="messagewindow"  style="background-color: skyblue;">
		<h1>4번 Customer</h1>	
		</div><br>
			
		<div id="functionBox">
			<button type="button" id="connect" onclick="openAll(event)">대화방 참여</button>
			<button type="button" id="disconnect" onclick="closeSocket(event)" disabled="disabled">대화방 나가기</button>
			<br><br>
			현재 대화 상대 : <input type="text" id="currentChat" placeholder="Whom To Speak" disabled="disabled"><br> <!--  현재 누구랑 대화 중인지 설정 --> 
			상대
			<select id="who" onchange="changeTo(this.value);" disabled="disabled">
				<option>선택해주세요</option>
				<option value="customer1">customer1</option>
				<option value="customer2">customer2</option>
				<option value="customer3">customer3</option>
				<option value="customer4">customer4</option>
			</select><br>
			<br>
			<input type="text" id="sender" value="admin" style="display:none;">
			<textarea id="messageinput" rows="10" cols="50" style="resize:none;" ></textarea><br>
			<button type="button" id="sendit" onclick="send()">메세지전송</button>
			<button type="button" onclick="javascript:clearText()">대화내용 지우기</button>
			<button type="button" onclick="javascript:goHome()">홈으로 돌아가기</button>
		</div>
	</div>
</body>

<script type="text/javascript">
	
	var ws;
	var ws1;
	var ws2;
	var ws3;
	var ws4;
	
	function changeTo(val){ //누구와 대화할지 바꾸는 메소드 
		console.log(val);
		document.getElementById("currentChat").value=val;
		
		if(val=='customer1'){
			ws = ws1;
		}else if(val=='customer2'){
			ws = ws2;
		}else if(val=='customer3'){
			ws = ws3;
		}else if(val=='customer4'){
			ws = ws4;
		}
	}
	
	
	function openSocket1(){
		
		writeResponse1("SYSTEM접속중...");
		if(ws1!= undefined && ws.readyState != WebSocket.CLOSED){
			writeResponse1("ws WebSocket is already opended");
			return;
		}
		
		//웹 소켓 만드는 코드
		ws1 = new WebSocket("ws://localhost:9090/tour/echo1.do");
		
		ws1.onopen = function(event){
			if(event.data== undefined){
				console.log("오픈되면 오는 메세지!! : "+event.data);
				return;
			}
			console.log("오픈되면 오는 메세지!! : "+event.data);
			writerResponse1(event.data);
		};
		ws1.onmessage = function(event){
			console.log('writeResponse');
			console.log('ws1에서 받아온 메세지 :' + event.data);
			writeResponse1(event.data);
		}
		ws1.onclose=function(event){
			writeResponse1("SYSTEM대화 종료");
		}
	}
	
	
	function openSocket2(){
		
		writeResponse2("SYSTEM접속중...");
	
		if(ws2!= undefined && ws.readyState != WebSocket.CLOSED){
			writeResponse2("ws WebSocket is already opended");
			return;
		}
		
		//웹 소켓 만드는 코드
		ws2 = new WebSocket("ws://localhost:9090/tour/echo2.do");

		ws2.onopen = function(event){
			if(event.data== undefined){
				return;
			}
			writerResponse2(event.data);
			
		};
		ws2.onmessage = function(event){
			console.log('writeResponse');
			console.log('ws2에서 받아온 메세지 :' + event.data);
			writeResponse2(event.data);
		}
		ws2.onclose=function(event){
			writeResponse2("SYSTEM대화 종료");
		}
		////////
	
	}
	function openSocket3(){
		
		writeResponse3("SYSTEM접속중...");
	
		if(ws3!= undefined && ws.readyState != WebSocket.CLOSED){
			writeResponse3("ws WebSocket is already opended");
			return;
		}
		
		//웹 소켓 만드는 코드
		ws3 = new WebSocket("ws://localhost:9090/tour/echo3.do");

		ws3.onopen = function(event){
			if(event.data== undefined){
				return;
			}
			writerResponse3(event.data);
			
		};
		ws3.onmessage = function(event){
			console.log('writeResponse');
			console.log('ws2에서 받아온 메세지 :' + event.data);
			writeResponse3(event.data);
		}
		ws3.onclose=function(event){
			writeResponse3("SYSTEM대화 종료");
		}
		////////
	
	}
	function openSocket4(){
		
		writeResponse4("SYSTEM접속중...");
	
		if(ws4!= undefined && ws.readyState != WebSocket.CLOSED){
			writeResponse4("ws WebSocket is already opended");
			return;
		}
		
		//웹 소켓 만드는 코드
		ws4 = new WebSocket("ws://localhost:9090/tour/echo4.do");

		ws4.onopen = function(event){
			if(event.data== undefined){
				return;
			}
			writerResponse4(event.data);
			
		};
		ws4.onmessage = function(event){
			console.log('writeResponse');
			console.log('ws4에서 받아온 메세지 :' + event.data);
			writeResponse4(event.data);
		}
		ws4.onclose=function(event){
			writeResponse4("SYSTEM대화 종료");
		}
		////////
	
	}
			
	//////////////////////
	
	//보내기만 하면 내가 서버여서 알아서 처리해서 뿌려줌
	
	function send(){
		var text = document.getElementById("messageinput").value;
		if(text==""){
			console.log("잉1?");
			return;
		}
			console.log("잉2?");
		text= text+","+document.getElementById("sender").value;
		console.log("text는 "+text);
		
		var who = document.getElementById("who").value;
		if(who=='customer1'){
			ws = ws1;
		}else if(who=='customer2'){
			ws = ws2;
		}else if(who=='customer3'){
			ws = ws3;
		}else if(who=='customer4'){
			ws = ws4;
		}
		ws.send(text);
		text="";
		document.getElementById("messageinput").value="";
	}
	
	document.getElementById("messageinput").addEventListener("keyup", function(e) {
		if(e.keyCode==13){
		    if (!event.shiftKey){
				e.preventDefault();//엔터는 원래는 줄바꿈인데 막고 전송으로!(필요시)
				send();
            }
		}
	}, false);
	
	
	///////////////////////
	function openAll(e){ //한번에 열기
		e.target.disabled=true; //대화방 참여 버튼 비활성화
		document.getElementById("disconnect").disabled=false;
		openSocket1();
		openSocket2();
		openSocket3();
		openSocket4();
		document.getElementById("who").disabled=false;
	}
	
	function closeSocket(e){ //한번에 닫기
		e.target.disabled=true;
		document.getElementById("connect").disabled=false;
		ws1.close();
		ws2.close();
		ws3.close();
		ws4.close();
// 		window.location.href="${cp}/";
		document.getElementById("who").disabled=true;
	}
	
	function writeResponse1(text){
		if(text.includes("#$#")){ //내가 보낸 메세지라는 표시
			var ntext = text.replace("#$#", "");
			messages1.innerHTML = "<div class='fromM'><span class='mTag'>"+ntext+"</span></div>"+messages1.innerHTML;
		}else if(text.includes("SYSTEM")){ //시스템이 보내는 메세지
			var ntext= text.replace("SYSTEM","");
			messages1.innerHTML = "<div class='fromC'><p class='cTag'>SYSTEM</p><span>"+ntext+"</span></div>"+messages1.innerHTML;
		}else{
			messages1.innerHTML = "<div class='fromC'><p class='cTag'>CUSTOMER1</p><span>"+text+"</span></div>"+messages1.innerHTML;
		}
	}
	function writeResponse2(text){
		if(text.includes("#$#")){ //내가 보낸 메세지라는 표시
			var ntext = text.replace("#$#", "");
			messages2.innerHTML = "<div class='fromM'><span class='mTag'>"+ntext+"</span></div>"+messages2.innerHTML;
		}else if(text.includes("SYSTEM")){ //시스템이 보내는 메세지
			var ntext= text.replace("SYSTEM","");
			messages2.innerHTML = "<div class='fromC'><p class='cTag'>SYSTEM</p><span>"+ntext+"</span></div>"+messages2.innerHTML;
		}else{
			messages2.innerHTML = "<div class='fromC'><p class='cTag'>CUSTOMER2</p><span>"+text+"</span></div>"+messages2.innerHTML;
		}
	}
	function writeResponse3(text){
		if(text.includes("#$#")){ //내가 보낸 메세지라는 표시
			var ntext = text.replace("#$#", "");
			messages3.innerHTML = "<div class='fromM'><span class='mTag'>"+ntext+"</span></div>"+messages3.innerHTML;
		}else if(text.includes("SYSTEM")){ //시스템이 보내는 메세지
			var ntext= text.replace("SYSTEM","");
			messages3.innerHTML = "<div class='fromC'><p class='cTag'>SYSTEM</p><span>"+ntext+"</span></div>"+messages3.innerHTML;
		}else{
			messages3.innerHTML = "<div class='fromC'><p class='cTag'>CUSTOMER3</p><span>"+text+"</span></div>"+messages3.innerHTML;
		}
	}
	function writeResponse4(text){
		if(text.includes("#$#")){ //내가 보낸 메세지라는 표시
			var ntext = text.replace("#$#", "");
			messages4.innerHTML = "<div class='fromM'><span class='mTag'>"+ntext+"</span></div>"+messages4.innerHTML;
		}else if(text.includes("SYSTEM")){ //시스템이 보내는 메세지
			var ntext= text.replace("SYSTEM","");
			messages4.innerHTML = "<div class='fromC'><p class='cTag'>SYSTEM</p><span>"+ntext+"</span></div>"+messages4.innerHTML;
		}else{
			messages4.innerHTML = "<div class='fromC'><p class='cTag'>CUSTOMER4</p><span>"+text+"</span></div>"+messages4.innerHTML;
		}
	}
	
	
	
	function clearText(){ //현재 선택된 채팅창만 지우기
		var currentChat = document.getElementById("currentChat").value;
		
		if(currentChat=='customer1'){
			document.getElementById("messages1").innerHTML="";
		}else if(currentChat=='customer2'){
			document.getElementById("messages2").innerHTML="";
		}else if(currentChat=='customer3'){
			document.getElementById("messages3").innerHTML="";
		}else if(currentChat=='customer4'){
			document.getElementById("messages4").innerHTML="";
		}
	}
	
	function goHome(){
		window.location.href = "${cp}/";
	}

</script>
</body>
</html>