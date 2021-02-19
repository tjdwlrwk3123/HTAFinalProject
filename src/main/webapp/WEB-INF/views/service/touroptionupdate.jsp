<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
	<form action="${cp }/touroptionupdate" method="post" enctype="multipart/form-data" onsubmit="return check()">
		<input type="hidden" name="service_number" value="${vo.service_number }">
		<input type="hidden" name="tour_option_number" value="${vo.tour_option_number }">
		투어 가격 <input type="number" name="tour_price" value="${vo.tour_price }"><br><br>
		투어 옵션 <input type="text" name="tour_option" value="${vo.tour_option }"><br><br> 
		투어 수량 <input type="number" name="tour_amount" value="${vo.tour_amount }"><br><br>
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
			let tour_price=document.getElementsByName("tour_price")[0].value;
			let tour_option_index=document.getElementsByName("tour_option_index")[0].value;
			let tour_option=document.getElementsByName("tour_option")[0].value;
			let tour_amount=document.getElementsByName("tour_amount")[0].value;
			let img=document.getElementsByName("img");
			let imgcheck=true;
			if(tour_price.replaceAll(" ","")==""){
				alert("투어 가격을 입력하세요.");
				return false;
			}
			if(tour_option_index.replaceAll(" ","")==""){
				alert("투어 옵션 번호를 입력하세요.");
				return false;
			}
			if(tour_option.replaceAll(" ","")==""){
				alert("투어 옵션을 입력하세요.");
				return false;
			}
			if(tour_amount.replaceAll(" ","")==""){
				alert("투어 수량을 입력하세요.");
				return false;
			}
			for(let i=0;i<img.length;i++){
				if(img[i].value.replaceAll(" ","")==""){
					imgcheck=false;
					break;
				}
			}
			if(!imgcheck){
				alert("투어 메인 이미지를 모두 입력해주세요.");
				return false;
			}
			return true;
		}
		function checkdiscount(){
			let discount = document.getElementsByName("discount")[0].childNodes;
			for (let i = 0; i < discount.length; i++) {
				if(discount[i].value=='${vo.discount}'){
					discount[i].setAttribute("selected","selected");
					break;
				}
			}
		}
		checkdiscount();
	</script>
</div>