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
<title>공지 사항</title>

<!-- Favicon -->
<link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">

<!-- font -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/k_noticelist.css" rel="stylesheet">


<!-- Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


</head>

<body>


	<div id="outter">

		<div class="breadcumb-area"
			>
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<div class="bradcumb-title text-center">
							<h2 id="notice_title">공지 사항</h2>
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
										class="fa fa-home" aria-hidden="true"></i> About us </a></li>
								<li class="breadcrumb-item active" aria-current="page">공지
									사항</li>
							</ol>
						</nav>
					</div>
				</div>



				<div class="row">
					<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
					<div class="col-12" id="asklist_customview">
						<h2>공지 사항</h2>
					</div>
				</div>


				<div class="row">
					<div class="col-12" id="asklist_customview">



						<div id="AskUserForm">
							<table class="table table-hover" id="noticeboard_list">
								<tr>
									<th>번호</th>
									<th>날짜</th>
									<th>제목</th>
									<th>글쓴이</th>
									<th>조회수</th>

								</tr>

								<tr>
									<td class="asknum">2</td>
									<td class="date">2020/01/15</td>
									<td class="title" align="left">[이벤트] 이벤트 당첨자 안내</td>
									<td class="name">관리자</td>
									<td class="hit">89</td>

								</tr>

								<tr>
									<td class="asknum">1</td>
									<td class="date">2020/01/10</td>
									<td class="title" align="left"><a
										href="/maeggiSeggi/loginandcustomer/noticedetail.do">[긴급]
											서버 점검 안내</a></td>
									<td class="name">관리자</td>
									<td class="hit">224</td>

								</tr>

							</table>

						</div>

						<div class="light-button button-wrapper">
							<div class="button">
								<span> 글쓰기 </span>
							</div>
						</div>

						<div id="searchdiv">

							<form id="notice_search">
								<select name="notice_searchhow">
									<option value="notice_searchtitle">제목</option>
									<option value="notice_searchcontent">본문</option>
								</select> <input type="text" id="notice_searchtext" value=""> <input
									type="submit" id="notice_searchbutton" value="검색">
							</form>

						</div>

					</div>


				</div>
			</div>

		</div>

		<!-- ****** Breadcumb Area End ****** -->





		<!-- ****** Archive Area Start ****** -->
		<section class="archive-area section_padding_80">


			<div class="container">


				<div class="col-12">
					<div class="pagination-area d-sm-flex mt-15">
						<nav aria-label="#">
							<ul class="pagination">
								<li class="page-item active"><a class="page-link" href="#">1
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next
										<i class="fa fa-angle-double-right" aria-hidden="true"></i>
								</a></li>
							</ul>
						</nav>
						<div class="page-status">
							<p>Page 1 of 60 results</p>
						</div>
					</div>
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