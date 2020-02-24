<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>공지 사항 글 상세</title>

<!-- Favicon -->
<link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">

<!-- font -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/k_noticedetail.css" rel="stylesheet">


<!-- Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">


</head>

<body>
	<div id="outter">
		<!-- ****** Breadcumb Area Start ****** -->
		<div class="breadcumb-area"
			>
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<div class="bradcumb-title text-center">
							<h2>공지 사항</h2>
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
								<li class="breadcrumb-item"><a href="#"><i
										class="fa fa-home" aria-hidden="true"></i>공지사항</a></li>
								<li class="breadcrumb-item active" aria-current="page">공지 글
									상세보기</li>
							</ol>
						</nav>
					</div>
				</div>

				<div class="row">
					<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
					<div class="col-12" id="noticelist_customview">
						<h2>공지 글 상세보기</h2>
					</div>
				</div>

				<div class="row">
					<div class="col-12" id="notice_view">
						<div id="NoticeDetailForm">
							<table class="noticeboard" id="noticeboard_detail" border="1">
								<tr>
									<td>작성자</td>
									<td>관리자</td>
								</tr>

								<tr>
									<td>작성일</td>
									<td>2020-01-15</td>
								</tr>

								<tr>
									<td>제목</td>
									<td>[공지]02/10 서버 점검 안내</td>
								</tr>

								<tr>
									<td>content</td>
									<td align="left">02/10 01:00 ~ 05:00 동안 서버 점검이 진행될 예정입니다.<br />
										해당 시간 동안 사이트 접속이 제한되므로 이용에 참고 바랍니다.<br />감사합니다.<br />-매끼세끼
										드림-<br /></td>

								</tr>
							</table>
						</div>
					</div>

					<div id="notice_back">
						<input type="button" id="notice_backtolist_button" value="목록으로"
							onclick="location.href='/maeggiSeggi/loginandcustomer/noticelist.do'">
					</div>
				</div>

			</div>
			<!-- ****** Breadcumb Area End ****** -->

		</div>

		<!-- ****** Archive Area Start ****** -->
		<section class="archive-area section_padding_80">


			<div class="container">


				<div class="col-12">
					<div class="pagination-area d-sm-flex mt-15"></div>
				</div>

			</div>

		</section>
		<!-- ****** Archive Area End ****** -->
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
	</div>


</body>