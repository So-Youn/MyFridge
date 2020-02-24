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
<title>문의 글 리스트</title>

<!-- Favicon -->
<link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">

<!-- font -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/k_admin_asklist.css"
	rel="stylesheet">


<!-- Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">

</head>

<body>
	<div id="outter">

		<!-- ****** Breadcumb Area Start ****** -->
		<div class="breadcumb-area"
			style="background-image: url(../../yummy-master/img/bg-img/breadcumb.jpg);">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<div class="bradcumb-title text-center">
							<h2>문의 리스트</h2>
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
										class="fa fa-home" aria-hidden="true"></i> 직접 문의하기</a></li>
								<li class="breadcrumb-item active" aria-current="page">문의
									리스트</li>
							</ol>
						</nav>
					</div>
				</div>



				<div class="row">
					<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
					<div class="col-12" id="asklist_customview">
						<h2>[관리자 전용 페이지] 문의 글 리스트</h2>
					</div>
				</div>


				<div class="row">
					<div class="col-12" id="asklist_customview">

						<div>
							<select id="ansComplete">
								<!-- 완료 선택 시완료된 것만 보여주고 미완료 선택 시 미완료 된 것만 보여줌 -->
								<option value="completed">완료</option>
								<option value="notcompleted">미완료</option>
							</select>

						</div>

						<div id="AskUserForm">
							<table class="askboard" border="1">
								<tr>
									<th>번호</th>
									<th>날짜</th>
									<th>제목</th>
									<th>글쓴이</th>
									<th>조회수</th>
									<th>답변상태</th>
								</tr>
								<tr>
									<td class="asknum">5</td>
									<td class="date">2020/01/15</td>
									<td class="title">문희에요</td>
									<td class="name">나문희</td>
									<td class="hit">100</td>
									<td class="answercheck">미완료</td>
								</tr>
								<tr>
									<td class="asknum">4</td>
									<td class="date">2020/01/15</td>
									<td class="title">안녕 세상!</td>
									<td class="name">tester</td>
									<td class="hit">5</td>
									<td class="answercheck">미완료</td>
								</tr>
								<tr>
									<td class="asknum">3</td>
									<td class="date">2020/01/15</td>
									<td class="title">안녕</td>
									<td class="name">김민정</td>
									<td class="hit">5</td>
									<td class="answercheck">미완료</td>
								</tr>


								<tr>
									<td class="asknum">2</td>
									<td class="date">2020/01/15</td>
									<td class="title">오타 수정해주세요.</td>
									<td class="name">debugger</td>
									<td class="hit">5</td>
									<td class="answercheck">미완료</td>
								</tr>

								<tr>
									<td class="asknum">1</td>
									<td class="date">2020/01/10</td>
									<td class="title"><a href="#">아이디는못바꾸나요ㅕ</a></td>
									<td class="name">princess</td>
									<td class="hit">20</td>
									<td class="answercheck">완료</td>
								</tr>

							</table>


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
			<img src="img/instagram-img/1.jpg" alt="">
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
			<img src="../../yummy-master/img/instagram-img/2.jpg" alt="">
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
			<img src="../../yummy-master/img/instagram-img/3.jpg" alt="">
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
			<img src="../../yummy-master/img/instagram-img/4.jpg" alt="">
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
			<img src="../../yummy-master/img/instagram-img/5.jpg" alt="">
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
			<img src="../../yummy-master/img/instagram-img/6.jpg" alt="">
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
			<img src="../../yummy-master/img/instagram-img/1.jpg" alt="">
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
			<img src="../../yummy-master/img/instagram-img/2.jpg" alt="">
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
	<!-- ****** Our Creative Portfolio Area End ****** -->

</body>