<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	 <!-- Favicon -->
    <link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">
    
    <!-- Core Stylesheet -->
    <link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
    
    <!-- Responsive CSS -->
    <link href="/maeggiSeggi/common/css/responsive/responsive.css" rel="stylesheet">
    
    <!-- Jquery-2.2.4 js -->
    <script src="/maeggiSeggi/common/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/maeggiSeggi/common/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="/maeggiSeggi/common/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="/maeggiSeggi/common/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="/maeggiSeggi/common/js/active.js"></script>
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
                                <a href="/maeggiSeggi/loginandcustomer/login.do" >sign in</a>
                            </div>
                            <div class="register">
                                <a href="/maeggiSeggi/loginandcustomer/join.do">sign up</a>
                            </div>
                        </div>
                        <!-- Search Button Area -->
                       <!-- <div class="search_button">
                            <a class="searchBtn" href="#"><i class="fas fa-search" aria-hidden="true"></i></a>
                        </div>-->
                        <!-- Search Form -->
                        <!--<div class="search-hidden-form">
                            <form action="#" method="get">
                                <input type="search" name="search" id="search-anything" placeholder="Search Anything...">
                                <input type="submit" value="" class="d-none">
                                <span class="searchBtn"><i class="fa fa-times" aria-hidden="true"></i></span>
                            </form>
                        </div>--> 
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
                        <a href="/maeggiSeggi/recipe/main.do" class="yummy-logo">Maeggi Seggi</a>
                    </div>
                </div>
            </div>

            <div class="row" >
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-nav" aria-controls="yummyfood-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                        <!-- Menu Area Start -->
                        <div class="collapse navbar-collapse justify-content-center" id="yummyfood-nav">
                            <ul class="navbar-nav" id="yummy-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="/maeggiSeggi/refrigerator/fridge.do">MY FRIDGE<span class="sr-only">current</span></a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="/maeggiSeggi/sub/intro.do" id="yummyDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">ABOUT US</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="#"></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/sub/intro.do">INTRO</a>
                                        <a class="dropdown-item" href="/maeggiSeggi/sub/grade.do">GRADE</a>
                                        <a class="dropdown-item" href="/maeggiSeggi/sub/QnA.do">QnA</a>
                                        <a class="dropdown-item" href="/maeggiSeggi/loginandcustomer/noticelist.do">NOTICE</a>
                                        <a class="dropdown-item" href="contact.html">CONTACT</a>
                                    </div>
                                </li>
                        		<li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="yummyDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">RECIPE</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                    	<a class="dropdown-item" href="#"></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/recipe/themeRecipe.do"><b>테마별 레시피</b></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/recipe/levelRecipe.do"><b>난이도별 레시피</b></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/recipe/searchRecipe.do"><b>레시피 조회</b></a>
                                    </div>
                                </li>
                                
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="yummyDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">RESTAURANT</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                    	<a class="dropdown-item" href="#"></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/restaurant.do"><b>식당 조회</b></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/map.do"><b>지도 조회</b></a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="yummyDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MY PAGE</a>
                                    <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                    	<a class="dropdown-item" href="#"></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/mypage_main.do"><b>식단 관리</b></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/mypage/information_update.do"><b>회원 정보 조회</b></a>
                                        <a class="dropdown-item" href="/maeggiSeggi/mypage/ask.do"><b>1:1 문의 사항</b></a>
                                        <a class="dropdown-item" href="/maeggiSeggi//mypage/mypoint.do"><b>My Point</b></a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">MANAGEMODE</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
</body>
</html>