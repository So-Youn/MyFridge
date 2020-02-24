<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="java.util.ArrayList"%>
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

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>

<body>

	<%
		ArrayList<BoardVO> list = (ArrayList<BoardVO>) request.getAttribute("list");
		memberVO loginuser = (memberVO) session.getAttribute("loginuser");
	%>
	<div id="outter">

		<!-- ****** Breadcumb Area Start ****** -->
		<div class="breadcumb-area"
			>
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
					
					<div>
						<button id="viewmember" onclick="location.href='/maeggiSeggi/loginandcustomer/admin_memberview.do' ">회원 목록 조회</button>
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
							<table class="table table-hover" id="asklistid">
								<thead>
									<tr style="font-weight: bold;">
										<td scope="col">작성자</td>
										<td scope="col">제목</td>
										<td scope="col">등록일자</td>
									</tr>
								</thead>

								<%
									for (int i = 0; i < list.size(); i++) {
										BoardVO row = list.get(i);
								%>
								<tr>
									<td><%=row.getMember_id()%></td>
									<td><a
										href="/maeggiSeggi/board/read.do?askno=<%=row.getAskno()%>"><%=row.getAsk_title()%></a></td>
									<td><%=row.getAsk_regdate()%></td>
								</tr>
								<%
									}
								%>
							</table>


						</div>






					</div>




				</div>
			</div>






		</div>

		<!-- ****** Breadcumb Area End ****** -->
</body>