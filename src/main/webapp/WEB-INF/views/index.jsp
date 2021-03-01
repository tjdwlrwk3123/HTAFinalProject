<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <div class="container text-center" style="padding-top:150px;background-color:#4E61FF;height:400px;color:white">
      <h1>당신이 원하는 여행과 가볍게 Connect</h1><br>
      <p class="lead">지금 ConnecTrip과 함께하세요</p>
    </div>

    <div class="container">
 	<!--post slider2 -->
      <div class="post-slider2">
        <div class="post-wrapper2" style="width:100%; margin-top: 10px;">
          <div class="post">
            <a href="${cp }/tourSelect?tourType=0"><img src="${cp }/resources/upload/심쿵1.jpg" class="slider-image" style="width:100%; height: 450px;"></a>
          </div>
          <div class="post">
            <a href="${cp }/tourDetail?cate_number=1&service_number=5"><img src="${cp }/resources/upload/에버1.PNG" class="slider-image" style="width:100%; height: 450px;"></a>
          </div>
          <div class="post">
           	<a href="${cp }/accomlist"><img src="${cp }/resources/upload/홍보3.PNG" class="slider-image" style="width:100%; height: 450px;"></a>
          </div>
          <div class="post">
            <a href="${cp }/accomDetail?accomNum=0&cate_number=2"><img src="${cp }/resources/upload/홍보4.PNG" class="slider-image" style="width:100%; height: 450px;"></a>
          </div>
        </div>
      </div>
      <!--post slider-->
	</div>
	
	<script type="text/javascript">
	$(document).on('ready', function() {
		$('.post-wrapper2').slick({
			  slidesToShow: 1,
			  slidesToScroll: 1,
			  autoplay: true,
			  fade: true,
			  autoplaySpeed: 3000,
			  infinite: true,
			  speed: 500,
			  nextArrow:$('none'),
			  prevArrow:$('none'),
			});
		
	});
</script>