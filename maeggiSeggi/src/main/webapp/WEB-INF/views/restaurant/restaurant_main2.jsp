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

<!-- 검색창 css -->
<link href="/maeggiSeggi/common/css/button.css" rel="stylesheet">


<!-- 검색창 js -->
<script src="/maeggiSeggi/common/js/button.js"></script>

<!-- 지도api js,key -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a9f8501e6405d12afa94844cfc475269&libraries=services"></script>

<!-- 지도 css -->
<link href="/maeggiSeggi/common/css/map.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- 지도 js -->
<script src="/maeggiSeggi/common/js/map2.js"></script>

<style type="text/css">
	.catagory-titler {
    width: 200px;
    height: 50px;
    background-color: #fff;
    position: absolute;
    top: 50%;
    text-align: center;
    border-radius: 30px;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
}
.catagory-titler a > h5 {
    margin-bottom: 0;
    line-height: 50px;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
}
	.catagory-titlew {
    width: 200px;
    height: 50px;
    background-color: #fc6c3f;
    position: absolute;
    top: 50%;
    text-align: center;
    border-radius: 30px;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
}
.catagory-titlew a > h5 {
    margin-bottom: 0;
    line-height: 50px;
    -webkit-transition-duration: 500ms;
    transition-duration: 500ms;
}
.side {
   font-family: PapyrusM;
   font-size: 20pt;
}
#underline{
	color: #FC6C3F;
	font-size: 27pt;
}
</style>

</head>

<body>
	<% String today = (String)request.getAttribute("today"); %>
	<% String food = (String)request.getAttribute("food"); %>
	<!-- ****** Categories Area Start ****** -->
	<section class="categories_area clearfix" id="about">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-6 col-lg-6">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
						<img src="/maeggiSeggi/images/2.jpg" alt="">
						<div class="catagory-titler">
							<a href="/maeggiSeggi/restaurant.do">
								<h5>#레시피 관련 식당</h5>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-6">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
						<img src="/maeggiSeggi/images/3.jpg" alt="">
						<div class="catagory-titlew">
							<a href="/maeggiSeggi/weather.do">
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
									<div class="map_wrap">
										<div id="map"
											style="width: 730px; height: 486.66px; position: relative; overflow: hidden;"></div>

										<div id="menu_wrap" class="bg_white">
											<div class="option">
												<div>
													<form onsubmit="; return false;">
														키워드 : <input type="text" value="<%= food %>" id="keyword"
															size="15">
														<button id="sendkey" type="submit">검색</button>
													</form>
												</div>
											</div>
											<hr>
											<ul id="placesList"></ul>
											<div id="pagination"></div>
										</div>
									</div>

							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">주변 맛집</a>
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
							<table id="sch" width="370" style="word-break:break-all">
								<tr>
									<td class="side" style="">식당정보</td>
								</tr>
								<tr>
									<td class="side" style="">현재 날씨에 맞는 추천 메뉴는 <span id="underline"><%= food %></span>입니다.</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
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
			<img src="/maeggiSeggi/images/instagram-img/1.jpg" alt="">
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
			<img src="/maeggiSeggi/images/instagram-img/2.jpg" alt="">
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
			<img src="/maeggiSeggi/images/instagram-img/3.jpg" alt="">
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
			<img src="/maeggiSeggi/images/instagram-img/4.jpg" alt="">
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
			<img src="/maeggiSeggi/images/instagram-img/5.jpg" alt="">
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
			<img src="/maeggiSeggi/images/instagram-img/6.jpg" alt="">
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
			<img src="/maeggiSeggi/images/instagram-img/1.jpg" alt="">
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
			<img src="/maeggiSeggi/images/instagram-img/2.jpg" alt="">
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
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">MY FRIDGE <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">ABOUT US</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RECIPE</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">RESTAURANT</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">MY PAGE</a>
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
        </div>

    </footer>
    <!-- ****** Footer Menu Area End ****** -->

</body>
</html>