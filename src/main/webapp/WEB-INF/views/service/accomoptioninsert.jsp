<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
	<form action="${cp }/accomoptioninsert" method="post" enctype="multipart/form-data" onsubmit="return check()">
		<input type="hidden" name="accom_service_number" value="${accom_service_number }">
		옵션이름(등급) <input type="text" name="accom_rooms_option"><br><br>
		최소인원 <input type="number" name="accom_min_people"><br><br>
		최대인원 <input type="number" name="accom_max_people"><br><br> 
		숙소가격 <input type="number" name="accom_price"><br><br>
		할인율<br>
		<select name="discount" id="discount">
			<option value="0" selected="selected">0%</option>
			<option value="5">5%</option>
			<option value="10">10%</option>
			<option value="15">15%</option>
			<option value="20">20%</option>
			<option value="25">25%</option>
			<option value="30">30%</option>
			<option value="35">35%</option>
			<option value="40">40%</option>
			<option value="45">45%</option>
			<option value="50">50%</option>
		</select><br><br>
		<br>
		옵션 이미지
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
		function check(){
			let accom_rooms_option=document.getElementsByName("accom_rooms_option")[0].value;
			let accom_min_people=document.getElementsByName("accom_min_people")[0].value;
			let accom_max_people=document.getElementsByName("accom_max_people")[0].value;
			let accom_price=document.getElementsByName("accom_price")[0].value;
			let img=document.getElementsByName("img");
			let imgcheck=true;
			if(accom_rooms_option.replaceAll(" ","")==""){
				alert("옵션 이름을 입력하세요.");
				return false;
			}
			if(accom_min_people.replaceAll(" ","")==""){
				alert("최소 인원을 입력하세요.");
				return false;
			}
			if(accom_max_people.replaceAll(" ","")==""){
				alert("최대 인원을 입력하세요.");
				return false;
			}
			if(accom_min_people>accom_max_people){
				alert("최대 인원이 최소 인원보다 작을 수 없습니다.");
				return false;
			}
			if(accom_price.replaceAll(" ","")==""){
				alert("옵션 가격을 입력하세요.");
				return false;
			}
			for(let i=0;i<img.length;i++){
				if(img[i].value.replaceAll(" ","")==""){
					imgcheck=false;
					break;
				}
			}
			if(!imgcheck){
				alert("숙소 메인이미지를 모두 입력해주세요.");
				return false;
			}
			
			
			return true;
		}
	</script>
</div>