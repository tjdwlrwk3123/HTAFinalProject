<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
	<form action="/accominsert" method="post" enctype="multipart/form-data">
		숙소이름 <input type="text" name="accom_name"><br><br>
		숙소주소 <input type="text" name="accom_addr"><br><br>
		숙소소개 <textarea rows="20" cols="5" name="accom_info_content"></textarea><br><br>
		숙소이용안내  <textarea rows="20" cols="5" name="accom_how"></textarea><br><br>
		숙소 체크인/아웃 정보 <textarea rows="20" cols="5" name="accom_checkinfo"></textarea><br><br>

		
		
		숙소 메인 이미지
		<button onclick="">+</button>
		<button onclick="">-</button>
		<div id="imgbox">
			<input type="file" name="img1"><br>
		</div><br>
		숙소 옵션
		<button onclick="addimg()">+</button>
		<button onclick="">-</button>
		<div id="optionbox">
			<div id="option1">
				숙소등급 <input type="text" name="accom_rooms_name1"><br>
				최소인원 <input type="number" name="accom_min_people1"><br>
				최대인원 <input type="number" name="accom_max_people1"><br>
				숙소가격 <input type="number" name="accom_price1"><br>
			</div>
		</div><br>
		<input type="submit" value="전송">
	</form>
	<script>
		var maximg=5;
		var maxoption=5;
		var countimg=1;
		var countoption=1;
		function addimg() {
			if(countimg<=maximg){
				countimg++;
				let imgbox=document.getElementById("imgbox")
				imgbox.innerHTML+="<input type='file' name='img"+countimg+"'><br>";
			}else{
				alert("이미지는 최대 "+maximg+"개 까지 추가할 수 있습니다.");
			}
		}
	</script>
</div>