<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<form action="${cp }/tourupdate" method="post" enctype="multipart/form-data" onsubmit="return check()">
		<input type="hidden" name="service_number" value="${vo1.service_number }">
		투어 이름 <input type="text" name="tour_name" value="${vo1.tour_name }"><br><br>
		투어 주소 <input type="text" name="tour_addr" value="${vo1.tour_addr }"><br><br>
		투어 내용 <textarea rows="5" cols="30" name="tour_content">${vo2.tour_content }</textarea><br><br>
		투어이용 안내  <textarea rows="5" cols="30" name="tour_how">${vo2.tour_how }</textarea><br><br>
		취소 및 환불 규정  <textarea rows="5" cols="30" name="tour_rule">${vo2.tour_rule }</textarea><br><br>
		유효기간 <input type="checkbox" onchange="datecheck(this)" id="datec"><br>
		<div id="dated"></div><br>
		투어 타입
		<select name="tour_type" id="tour_type">
			<option value="1">티켓/패스</option>
			<option value="2">테마파크</option>
			<option value="3">취미/클래스</option>
			<option value="4">맛집</option>
		</select><br><br>
		투어 메인 이미지
		<input type="button" onclick="addimg()" value="+">
		<input type="button" onclick="removeimg()" value="-">
		<div id="imgbox">
			<div><input type="file" name="img"></div>
		</div><br>
		<input type="submit" value="전송">
	</form>
	<script>
		var maximg=5;
		var countimg=1;
		function addimg() {
			if(countimg<maximg){
				countimg++;
				let imgbox=document.getElementById("imgbox");
				let div=document.createElement("div");
				div.innerHTML="<input type='file' name='img'>";
				imgbox.appendChild(div);
			}else{
				alert("이미지는 최대 "+maximg+"개 까지 추가할 수 있습니다.");
			}
		}
		function removeimg() {
			if(countimg>1){
				let imgbox=document.getElementById("imgbox");
				imgbox.removeChild(imgbox.lastChild);
				countimg--;
			}else{
				alert("메인이미지는 최소 1개 이상이어야 합니다.");
			}
		}
		function datecheck(e) {
			let div = document.getElementById("dated");
			if(e.checked){
				div.innerHTML="<input type='date' name='tour_expire'>";
			}else{
				div.innerHTML="";
			}
		}
		function check(){
			let tour_name=document.getElementsByName("tour_name")[0].value;
			let tour_addr=document.getElementsByName("tour_addr")[0].value;
			let tour_content=document.getElementsByName("tour_content")[0].value;
			let tour_how=document.getElementsByName("tour_how")[0].value;
			let tour_rule=document.getElementsByName("tour_rule")[0].value;
			let img=document.getElementsByName("img");
			let imgcheck=true;
			let datec=document.getElementById("datec");
			for(let i=0;i<img.length;i++){
				if(img[i].value.replaceAll(" ","")==""){
					imgcheck=false;
					break;
				}
			}
			if(tour_name.replaceAll(" ","")==""){
				alert("투어 이름을 입력하세요.");
				return false;
			}
			if(tour_addr.replaceAll(" ","")==""){
				alert("투어 주소를 입력하세요.");
				return false;
			}
			if(tour_content.replaceAll(" ","")==""){
				alert("투어 내용을 입력하세요.");
				return false;
			}
			if(tour_how.replaceAll(" ","")==""){
				alert("투어 이용 안내를 입력하세요.");
				return false;
			}
			if(tour_rule.replaceAll(" ","")==""){
				alert("취소 및 환불 규정을  입력하세요.");
				return false;
			}
			if(!imgcheck){
				alert("투어 메인이미지를 모두 입력해주세요.");
				return false;
			}
			if(datec.checked){
				let tour_expire=document.getElementsByName("tour_expire")[0].value;
				if(tour_expire==""){
					alert("유효기간을 입력하세요");
					return false;
				}
			}
			return true;
		}
		function setting() {
			if("${vo2.tour_expire}"!=""){
				let datec=document.getElementById("datec");
				datec.setAttribute("checked","checked");
				let dated=document.getElementById("dated");
				dated.innerHTML="<input type='date' name='tour_expire' value='${vo2.tour_expire}'>";
			}
			let tour_type=document.getElementsByName("tour_type")[0];
			for (let i = 0; i < tour_type.childNodes.length; i++) {
				if(tour_type.childNodes[i].value=="${vo1.tour_type}"){
					tour_type.childNodes[i].setAttribute("selected","selected");
				}
			}
		}
		setting();
	</script>
</div>