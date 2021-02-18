<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<form action="${cp }/accomupdate" method="post" enctype="multipart/form-data" onsubmit="return check()">
		<input type="hidden" name="accom_service_number" value="${vo1.accom_service_number }">
		<select name="cate" id="cate">
		<c:choose>
			<c:when test="${vo1.cate_number==2 }">
				<option value="2" selected="selected">펜션</option>
				<option value="3">캠핑</option>
				<option value="4">게스트하우스</option>
			</c:when>
			<c:when test="${vo1.cate_number==3 }">
				<option value="2">펜션</option>
				<option value="3" selected="selected">캠핑</option>
				<option value="4">게스트하우스</option>
			</c:when>
			<c:when test="${vo1.cate_number==4 }">
				<option value="2">펜션</option>
				<option value="3">캠핑</option>
				<option value="4" selected="selected">게스트하우스</option>
			</c:when>
			<c:otherwise>
				<option value="2" selected="selected">펜션</option>
				<option value="3">캠핑</option>
				<option value="4">게스트하우스</option>
			</c:otherwise>
		</c:choose>
		</select><br><br>
		숙소이름 <input type="text" name="accom_name" value="${vo1.accom_name }"><br><br>
		숙소주소 <input type="text" name="accom_addr" value="${vo1.accom_addr }"><br><br>
		숙소소개 <textarea rows="5" cols="30" name="accom_info_content">${vo2.accom_info_content }</textarea><br><br>
		숙소이용안내  <textarea rows="5" cols="30" name="accom_how">${vo2.accom_how }</textarea><br><br>
		숙소취소및환불규정  <textarea rows="5" cols="30" name="accom_rule">${vo2.accom_rule }</textarea><br><br>
		숙소 체크인/아웃 정보 <textarea rows="5" cols="30" name="accom_checkinfo">${vo2.accom_chekinfo }</textarea><br><br>
		편의시설<br>
		<div>
			<input type="checkbox" name="facility" value="바베큐">바베큐<br>
			<input type="checkbox" name="facility" value="수영장">수영장<br>
			<input type="checkbox" name="facility" value="유아시설">유아시설<br>
			<input type="checkbox" name="facility" value="카페">카페<br>
			<input type="checkbox" name="facility" value="편의점">편의점<br>
			<input type="checkbox" name="facility" value="온천">온천<br>
			<input type="checkbox" name="facility" value="골프장">골프장<br>
			<input type="checkbox" name="facility" value="족구장">족구장<br>
			<input type="checkbox" name="facility" value="탁구장">탁구장<br>
			<input type="checkbox" name="facility" value="연회장">연회장<br>
		</div>
		<br>
		편의서비스<br>
		<div> 
			<input type="checkbox" name="conven" value="조식">조식<br>
			<input type="checkbox" name="conven" value="픽업">픽업<br>
			<input type="checkbox" name="conven" value="무료주차">무료주차<br>
			<input type="checkbox" name="conven" value="금연">금연<br>
			<input type="checkbox" name="conven" value="보드게임">보드게임<br>
			<input type="checkbox" name="conven" value="영화관람">영화관람<br>
			<input type="checkbox" name="conven" value="wifi">wifi<br>
			<input type="checkbox" name="conven" value="반려동물동반">반려동물동반<br>
		</div>
		<br>
		숙소 메인 이미지
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
				imgbox.innerHTML+="<div><input type='file' name='img'></div>";
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
		function check(){
			let accom_name=document.getElementsByName("accom_name")[0].value;
			let accom_addr=document.getElementsByName("accom_addr")[0].value;
			let accom_info_content=document.getElementsByName("accom_info_content")[0].value;
			let accom_how=document.getElementsByName("accom_how")[0].value;
			let accom_rule=document.getElementsByName("accom_rule")[0].value;
			let accom_checkinfo=document.getElementsByName("accom_checkinfo")[0].value;
			let facility=document.getElementsByName("facility");
			let facilitycheck=false;
			let cate=document.getElementById("cate");
			let catev=cate.options[cate.selectedIndex].value;
			for(let i=0;i<facility.length;i++){
				if(facility[i].checked==true){ 
					facilitycheck=true;
					break;
				}
			}
			let conven=document.getElementsByName("conven");
			let convencheck=false;
			for(let i=0;i<conven.length;i++){
				if(conven[i].checked==true){
					convencheck=true;
					break;
				}
			}
			let img=document.getElementsByName("img");
			let imgcheck=true;
			for(let i=0;i<img.length;i++){
				if(img[i].value.replaceAll(" ","")==""){
					imgcheck=false;
					break;
				}
			}
			if(accom_name.replaceAll(" ","")==""){
				alert("숙소 이름을 입력하세요.");
				return false;
			}
			if(accom_addr.replaceAll(" ","")==""){
				alert("숙소 주소를 입력하세요.");
				return false;
			}
			if(accom_info_content.replaceAll(" ","")==""){
				alert("숙소 소개를 입력하세요.");
				return false;
			}
			if(accom_how.replaceAll(" ","")==""){
				alert("숙소 이용 안내를 입력하세요.");
				return false;
			}
			if(accom_rule.replaceAll(" ","")==""){
				alert("숙소 취소 및 환불 규정을  입력하세요.");
				return false;
			}
			if(accom_checkinfo.replaceAll(" ","")==""){
				alert("숙소 체크인/아웃 정보를 입력하세요.");
				return false;
			}
			if(!facilitycheck){
				alert("편의시설을 한개이상 체크해주세요");
				return false;
			}
			if(!convencheck){
				alert("편의서비스를 한개이상 체크해주세요");
				return false;
			}
			if(!imgcheck){
				alert("숙소 메인이미지를 모두 입력해주세요.");
				return false;
			}
			return true;
		}

		function cb1(){
			let facility = document.getElementsByName("facility");
			let cf="${vo2.facility}".split(",");
			for (let i = 0; i < facility.length; i++) {
				for (let j = 0; j < cf.length; j++) {
					if(facility[i].value==cf[j]){
						facility[i].setAttribute("checked", "checked");
					}
				}
			}
		}
		cb1();
		function cb2(){
			let conven = document.getElementsByName("conven");
			let cc="${vo2.conven}".split(",");
			for (let i = 0; i < conven.length; i++) {
				for (let j = 0; j < cc.length; j++) {
					if(conven[i].value==cc[j]){
						conven[i].setAttribute("checked", "checked");
					}
				}
			}
		}
		cb2();
	</script>
</div>