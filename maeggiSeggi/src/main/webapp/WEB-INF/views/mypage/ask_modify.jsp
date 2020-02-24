<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="maeggi.seggi.reply.replyBoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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
<title>Yummy Blog - Food Blog Template</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">

<!-- 수정, 삭제 버튼 구현 -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>





</head>

<body>
	<%
		BoardVO uplist = (BoardVO) request.getAttribute("uplist");
	%>


	<!-- ****** Breadcumb Area Start ****** -->

	<div class="breadcumb-area"
		>
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>1:1문의사항</h2>
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
									class="fa fa-home" aria-hidden="true"></i>Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">MyPage</li>
							<li class="breadcrumb-item active" aria-current="page">1:1
								문의사항</li>
							<li class="breadcrumb-item active" aria-current="page">1:1
								문의사항 상세보기</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>



	<div class="row">
		<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
		<div class="col-12" id="mypage_asklist_customview">
			<h2>1:1 문의사항 상세보기</h2>
		</div>
	</div>

	<div class="row">
		<div class="col-12" id="mypage_asklist_customview">


			<div id="mypage_AskUserForm">

				<div id="modfiydiv">
					<form action="/maeggiSeggi/board/update.do" method="POST">
					<span><b>글번호:</b> <%=uplist.getAskno()%></span> <input type="hidden"
						name="askno" value=<%=uplist.getAskno()%> />

					<div class="form-group">
						<label for="title">Title</label> <input type="text" id="title"
							name="ask_title" class="form-control"
							value=" <%=uplist.getAsk_title()%>" />
					</div>

					<div class="form-group">
						<label for="content">Content</label>
						<textarea name="ask_content" id="content" class="form-control"
							rows="3"> <%=uplist.getAsk_content()%></textarea>
					</div>

					<div class="form-group">
						<label for="writer">Writer</label> <input type="text" id="writer"
							name="member_id" class="form-control"
							value=" <%=uplist.getMember_id()%>" readonly="readonly" />

					</div>




						<button type="button" id="btn-remove" class="btn btn-danger"
							onclick="location.href='/maeggiSeggi/board/read.do?askno=<%=uplist.getAskno()%>'">수정취소</button>
						<input type="submit" id="btn-remove" class="btn btn-danger" value="수정하기"/>
		
					</form>


				</div>
			</div>
			
		
		</div>
	</div>

	
</body>