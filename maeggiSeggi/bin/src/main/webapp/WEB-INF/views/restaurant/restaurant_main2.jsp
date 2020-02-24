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
<title>Yummy Blog - Food Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="../../yummy-master/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="../../yummy-master/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="../../yummy-master/css/responsive/responsive.css" rel="stylesheet">

<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" type = "text/css">

<link href="css/button.css" rel="stylesheet">
</head>

<body>
	<!-- Preloader Start -->
    <div id="preloader">
        <div class="yummy-load"></div>
    </div>
    <!-- ****** Top Header Area Start ****** -->
    <div class="top_header_area">
        <div class="container">
            <div class="row">
                <div class="col-5 col-sm-6">
                    <!--  Top Social bar start -->
                    <div class="top_social_bar">
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                    </div>
                </div>
                <!--  Login Register Area -->
                <div class="col-7 col-sm-6">
                    <div class="signup-search-area d-flex align-items-center justify-content-end">
                        <div class="login_register_area d-flex">
                            <div class="login">
                                <a href="register.html">Sing in</a>
                            </div>
                            <div class="register">
                                <a href="register.html">Sing up</a>
                            </div>
                        </div>
                        <!-- Search Button Area -->
                        <div class="search_button">
                            <a class="searchBtn" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                        </div>
                        <!-- Search Form -->
                        <div class="search-hidden-form">
                            <form action="#" method="get">
                                <input type="search" name="search" id="search-anything" placeholder="Search Anything...">
                                <input type="submit" value="" class="d-none">
                                <span class="searchBtn"><i class="fa fa-times" aria-hidden="true"></i></span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Top Header Area End ****** -->
    <!-- ****** Header Area Start ****** -->
    <header class="header_area">
        <div class="container">
            <div class="row">
                <!-- Logo Area Start -->
                <div class="col-12">
                    <div class="logo_area text-center">
                        <a href="index.html" class="yummy-logo">Maeggi Seggi</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-nav" aria-controls="yummyfood-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                        <!-- Menu Area Start -->
                        <div class="collapse navbar-collapse justify-content-center" id="yummyfood-nav">
                            <ul class="navbar-nav" id="yummy-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html">MY FRIDGE<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="yummyDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ABOUT US</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="index.html"></a>
                                        <a class="dropdown-item" href="archive.html">INTRO</a>
                                        <a class="dropdown-item" href="single.html">GRADE</a>
                                        <a class="dropdown-item" href="static.html">QnA</a>
                                        <a class="dropdown-item" href="contact.html">CONTACT</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">RECIPE</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">RESTAURANT</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="archive.html">MY PAGE</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">MANAGE</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ****** Header Area End ****** -->

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
								<img src="images/map6.PNG" alt="map1" width="730" height="486.66">

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
							<img src="images//food.jpg" alt="">
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
								<img src="images/res1.jpg" alt="" width="360" height="270">
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

	<!-- ****** Footer Menu Area End ****** -->

	<!-- Jquery-2.2.4 js -->
	<script src="../../yummy-master/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="../../yummy-master/js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap-4 js -->
	<script src="../../yummy-master/js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins JS -->
	<script src="../../yummy-master/js/others/plugins.js"></script>
	<!-- Active JS -->
	<script src="../../yummy-master/js/active.js"></script>
	<script>
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
		// You could do an ajax request here...
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
</body>
</html>