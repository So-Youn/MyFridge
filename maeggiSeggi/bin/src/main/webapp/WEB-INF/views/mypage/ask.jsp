<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Yummy Blog - Food Blog Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<body>

    <!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" style="background-image: url(img/bg-img/breadcumb.jpg); z-index: 0">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>1:1 문의사항</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcumb-nav">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">MyPage</li>
                            <li class="breadcrumb-item active" aria-current="page">1:1 문의사항</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->
	
	<!-- 1:1 ask area start -->
    <div id="ask">
    <div>
		<fieldset style="text-align: center;">
			<legend>게시글 검색</legend>
			<div class="">
				<div class="">
					<span>전체</span>
					<strong>1</strong>
					<span>건</span>
				</div>
				<div class="">
					<div class=""> 
						<select>
							<option value="title" selected="selected">제목</option>
							<option value="title">등록 일자</option>
						</select>&nbsp;
							<span >
								<input class="" id="" type="text" value="" />
									<span class="">
										<input type = "button" id="towrite" value="검색" onclick="" style="color:white; background-color: #fc6c3f; width: 100px;">	
									</span>
									<span class="write">
										<input type = "button" id="towrite" value="글쓰기" onclick="location.href='ask_write.do'" style="color:white; background-color: #fc6c3f; width: 100px;">
									</span>
							</span>
					</div>
				</div>
			</div>
		</fieldset>
		<p></p>
	</div>
		<div>
			<table id ="table_boardlist" border="1" style="width: 800px; height: 100px; text-align: center;margin-left: auto; margin-right: auto;">
				<tr style="font-weight: bold;">
					<td scope="col">No</td>
					<td scope="col">제목</td>
					<td scope="col">등록일자</td>
					<td scope="col">답변상태</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="ask_title.do">제목이 뭘까</a></td>
					<td>2020-01-14</td>
					<td>답변 대기중</td>
				</tr>
			</table>
		</div>
			<div>                    
				<div class="pagination-area d-sm-flex mt-15" style="width: 300px; margin-left: auto; margin-right: auto;">
                        <nav aria-label="#">
                            <ul class="pagination">
                                <li class="page-item active">
                                    <a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </nav>
            	 </div>
             </div>
	</div>
	<p></p>
	<!-- 1:1 ask area end -->
    
    
    <!-- ****** Instagram Area Start ****** -->
    <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/2.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/3.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/4.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/5.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/6.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/2.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i><span>linkedin</span></a>
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
                            <a href="index.html" class="yummy-logo">Maeggi Seggi</a>
                        </div>
                        <!-- Menu Area Start -->
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">MY FRIDGE<span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">ABOUT US</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RECIPE</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">RESTAURANT</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="mypage_main.do">MY PAGE</a>
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

    <!-- ****** Footer Menu Area End ****** -->

    <!-- Jquery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>

</body>
