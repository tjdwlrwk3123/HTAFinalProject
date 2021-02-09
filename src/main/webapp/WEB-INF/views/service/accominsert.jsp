<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
	<form action="${cp }/accominsert" method="post" enctype="multipart/form-data">
		숙소이름 <input type="text" name="accom_name"><br><br>
		숙소주소 <input type="text" name="accom_addr"><br><br>
		숙소소개 <textarea rows="5" cols="30" name="accom_info_content"></textarea><br><br>
		숙소이용안내  <textarea rows="5" cols="30" name="accom_how"></textarea><br><br>
		숙소 체크인/아웃 정보 <textarea rows="5" cols="30" name="accom_checkinfo"></textarea><br><br>
		편의시설<br>
		<div> 
			<input type="checkbox" name="facility" value="바베큐">바베큐장<br>
			<input type="checkbox" name="facility" value="수영장">수영장<br>
			<input type="checkbox" name="facility" value="유아시설">유아시설<br>
			<input type="checkbox" name="facility" value="카페">카페<br>
			<input type="checkbox" name="facility" value="편의점">편의점<br>
			<input type="checkbox" name="facility" value="온천">온천<br>
			<input type="checkbox" name="facility" value="콜프장">골프장<br>
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
	</script>
</div>