<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>

<link href="css/button.css" rel="stylesheet">

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a9f8501e6405d12afa94844cfc475269&libraries=services"></script>
</head>

<body>
	

	<!-- ****** Welcome Post Area Start ****** -->
	
	<!-- ****** Welcome Area End ****** -->

	<!-- ****** Categories Area Start ****** -->
	<section class="categories_area clearfix" id="about">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
						<img src="images/1.jpg" alt="">
						<div class="catagory-title">
							<a href="restaurant_main.jsp">
								<h5>#모범 식당</h5>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
						<img src="images/2.jpg" alt="">
						<div class="catagory-title">
							<a href="restaurant_main2.jsp">
								<h5>#레시피 관련 식당</h5>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
						<img src="images/3.jpg" alt="">
						<div class="catagory-title">
							<a href="restaurant_main3.jsp">
								<h5>#날씨 관련 식당</h5>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ****** Categories Area End ****** -->

	<!-- ****** Blog Area Start ****** -->
	<section class="blog_area section_padding_0_80">
		<div class="row justify-content-center">
			<div class="container">
				<div class="row">
					<!-- Single Post -->
					<div class="col-12" >
						<div class="single-post wow fadeInUp" data-wow-delay=".2s">
							<!-- Post Thumb -->
							<div class="container">
								<div class="row">
							<div class="col-12 col-sm-8 col-md-6 col-lg-8">
								<div class="post-thumb" >
								<div id="map" style="width:730px;height:486.66px;"></div>
								<p><em>지도를 클릭해주세요!</em></p> 
								<div id="clickLatlng"></div>
									<script>
									// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
									var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};
//
		var map = new kakao.maps.Map(container, options);
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(); 

		// 키워드로 장소를 검색합니다
		ps.keywordSearch('김치찌개', placesSearchCB); 

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB (data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();

		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		        }       

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		    } 
		}

		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
		    
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });

		    // 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		}
		
		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({ 
		    // 지도 중심좌표에 마커를 생성합니다 
		    position: map.getCenter() 
		}); 
		// 지도에 마커를 표시합니다
		marker.setMap(map);

		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
		    
		    // 클릭한 위도, 경도 정보를 가져옵니다 
		    var latlng = mouseEvent.latLng; 
		    
		    // 마커 위치를 클릭한 위치로 옮깁니다
		    marker.setPosition(latlng);
		    
		    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
		    message += '경도는 ' + latlng.getLng() + ' 입니다';
		    
		    var resultDiv = document.getElementById('clickLatlng'); 
		    resultDiv.innerHTML = message;
		    
		});
		
		
	</script>

							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">역삼역 주변 맛집</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">May 19, 2017</a>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						</div>
							<!-- ****** Blog Sidebar ****** -->
			<div class="col-12 col-sm-8 col-md-6 col-lg-4">
				<div class="blog-sidebar mt-5 mt-lg-0">
					<!-- Single Widget Area -->
					<div class="single-widget-area about-me-widget text-center">
						<div class="widget-title">
							<h6>수미 초밥</h6>
						</div>
						<div class="about-me-widget-thumb">
							<img src="images/food.jpg" alt="">
						</div>
						<h4 class="font-shadow-into-light">BEST MENU</h4>
						<p>오픈시간 AM 10:00 <br/> 마감시감 PM 10:00</p>
					</div>

					<!-- Single Widget Area -->
					<div class="single-widget-area subscribe_widget text-center">
						<div class="widget-title">
							<h6>Subscribe &amp; Follow</h6>
						</div>
						<div class="subscribe-link">
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-google" aria-hidden="true"></i></a>
							<a href="#"><i class="fa fa-linkedin-square"
								aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-vimeo" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
			</div>
			</div>
		</div>
	</div>
					<div class="col-12">
						<a href="#">
									<h2 class="post-headline">식당 검색 API</h2>
								</a>
								<div class="container">
								<div class="row">
									<div class="col-12 col-lg-3">
										<img src="images//map5.gif" alt="map1">
									</div>
									<div class="col-12 col-lg-9" id="sch">
									<div class="contain">
  <h1 align="center">Go on, click me!</h1>
  <div class="search-box-container">
    <button class="submit">
      <i class="fa fa-search"></i>
    </button>
    <input class="search-box" />
  </div>
  <h3 class="response"></h3>
  <span style="">지역</span>
										<select>
											<option value="s">서울</option>
											<option value="g">경기도</option>
											<option value="k">강원도</option>
											<option value="ks">경상도</option>
										</select>
</div>
									
										
										</div>
				
								</div>
								</div>
					</div>
					<h2 class="post-headline"> 검색 결과</h2>
					<!-- Single Post -->
					<div class="row">
					<div class="col-12 col-md-6 col-lg-4">
						<div class="single-post wow fadeInUp" data-wow-delay=".4s">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<a href="restaurant_click.jsp"><img src="images/res1.jpg" alt="" width="360" height="270"></a>
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">식당1</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">서울, 테헤란로</a>
										</div>
									</div>
									<!-- Post Comment & Share Area -->
									<div class="post-comment-share-area d-flex">
										<!-- Post Favourite -->
										<div class="post-favourite">
											<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
												10</a>
										</div>
										<!-- Post Comments -->
										<div class="post-comments">
											<a href="#"><i class="fa fa-comment-o"
												aria-hidden="true"></i> 12</a>
										</div>
										<!-- Post Share -->
										<div class="post-share">
											<a href="#"><i class="fa fa-share-alt"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
								<a href="#">
									<h4 class="post-headline">사거리 식당</h4>
								</a>
							</div>
						</div>
					</div>

					<!-- Single Post -->
					<div class="col-12 col-md-6 col-lg-4">
						<div class="single-post wow fadeInUp" data-wow-delay=".6s">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="images/res2.jpg" alt="">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">식당2</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">강원도, 태백</a>
										</div>
									</div>
									<!-- Post Comment & Share Area -->
									<div class="post-comment-share-area d-flex">
										<!-- Post Favourite -->
										<div class="post-favourite">
											<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
												10</a>
										</div>
										<!-- Post Comments -->
										<div class="post-comments">
											<a href="#"><i class="fa fa-comment-o"
												aria-hidden="true"></i> 12</a>
										</div>
										<!-- Post Share -->
										<div class="post-share">
											<a href="#"><i class="fa fa-share-alt"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
								<a href="#">
									<h4 class="post-headline">오대산 식당</h4>
								</a>
							</div>
						</div>
					</div>

					<!-- Single Post -->
					<div class="col-12 col-md-6 col-lg-4">
						<div class="single-post wow fadeInUp" data-wow-delay=".8s">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="images/res3.jpg" alt="">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">식당3</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">경상도, 부산</a>
										</div>
									</div>
									<!-- Post Comment & Share Area -->
									<div class="post-comment-share-area d-flex">
										<!-- Post Favourite -->
										<div class="post-favourite">
											<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
												10</a>
										</div>
										<!-- Post Comments -->
										<div class="post-comments">
											<a href="#"><i class="fa fa-comment-o"
												aria-hidden="true"></i> 12</a>
										</div>
										<!-- Post Share -->
										<div class="post-share">
											<a href="#"><i class="fa fa-share-alt"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
								<a href="#">
									<h4 class="post-headline">한근집</h4>
								</a>
							</div>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ****** Blog Area End ****** -->

	<!-- ****** Instagram Area Start ****** -->
	<div
		class="instargram_area owl-carousel section_padding_100_0 clearfix"
		id="portfolio">

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/1.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/2.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/3.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/4.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/5.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/6.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/1.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="images/instagram-img/2.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- ****** Our Creative Portfolio Area End ****** -->

	<!-- ****** Footer Social Icon Area Start ****** -->
	<div class="social_icon_area clearfix">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-social-area d-flex">
						<div class="single-icon">
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span>facebook</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twitter</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i><span>GOOGLE+</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-linkedin-square"
								aria-hidden="true"></i><span>linkedin</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i><span>Instagram</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i><span>VIMEO</span></a>
						</div>
						<div class="single-icon">
							<a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i><span>YOUTUBE</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Footer Social Icon Area End ****** -->

	<!-- ****** Footer Menu Area Start ****** -->
	<footer class="footer_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="footer-content">
						<!-- Logo Area Start -->
						<div class="footer-logo-area text-center">
							<a href="index.html" class="yummy-logo">maeggi seggi</a>
						</div>
						<!-- Menu Area Start -->
						<nav class="navbar navbar-expand-lg">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#yummyfood-footer-nav"
								aria-controls="yummyfood-footer-nav" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa fa-bars" aria-hidden="true"></i> Menu
							</button>
							<!-- Menu Area Start -->
							<div class="collapse navbar-collapse justify-content-center"
								id="yummyfood-footer-nav">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="#">MY FRIDGE
											<span class="sr-only">(current)</span>
									</a></li>
									<li class="nav-item"><a class="nav-link" href="#">ABOUT US</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">RECIPE</a>
									</li>
									<li class="nav-item active"><a class="nav-link" href="#">RESTAURANT</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">MY PAGE</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">MANAGE</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Copywrite Text -->
					<div class="copy_right_text text-center">
						<p>
							Copyright @2018 All rights reserved | This template is made with
							<i class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

</body>
<script type="text/javascript">
	$.fn.toggleState = function(b) {
	  $(this).stop().animate({
	    width: b ? "300px" : "50px"
	  }, 600, "easeOutElastic" );
	}
	$(document).ready(function() {
	  var container = $(".contain");
	  var boxContainer = $(".search-box-container");
	  var submit = $(".submit");
	  var searchBox = $(".search-box");
	  var response = $(".response");
	  var isOpen = false;
	  submit.on("mousedown", function(e) {
	    e.preventDefault();
	    boxContainer.toggleState(!isOpen);
	    isOpen = !isOpen;
	    if(!isOpen) {
	      handleRequest();
	    } else {
	      searchBox.focus();
	    }  
	  });
	  searchBox.keypress(function(e) {
	    if(e.which === 13) {
	      boxContainer.toggleState(false);
	      isOpen = false;
	      handleRequest();
	    }
	  });
	  searchBox.blur(function() {
	    boxContainer.toggleState(false);
	    isOpen = false;
	  });
	  function handleRequest() {
	    var value = searchBox.val();
	    searchBox.val('');
	    if(value.length > 0) {
	      response.text(('Searching for "' + value + '" . . .'));
	      response.animate({
	        opacity: 1
	      }, 300).delay(2000).animate({
	        opacity: 0
	      }, 300);
	    }
	  }
	});

</script>
</html>