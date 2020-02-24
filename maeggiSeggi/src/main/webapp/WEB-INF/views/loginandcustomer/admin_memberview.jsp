<%@page import="java.util.List"%>
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
<title>매끼세끼 회원 리스트</title>

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
		ArrayList<memberVO> memberlist = (ArrayList<memberVO>) request.getAttribute("admin_memberview");
	%>
	<div id="outter">

		<!-- ****** Breadcumb Area Start ****** -->
		<div class="breadcumb-area"
			>
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<div class="bradcumb-title text-center">
							<h2>회원 리스트</h2>
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
										class="fa fa-home" aria-hidden="true"></i> 회원 조회</a></li>
								<li class="breadcrumb-item active" aria-current="page">회원
									리스트</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>


		<div class="row">
			<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
			<div class="col-12" id="asklist_customview">
				<h2>[관리자 전용 페이지] 회원 리스트</h2>
			</div>
		</div>


		<div class="row">
			<div class="col-12" id="asklist_customview">

				<!-- <div>
							<select id="ansComplete">
								완료 선택 시완료된 것만 보여주고 미완료 선택 시 미완료 된 것만 보여줌
								<option value="completed">완료</option>
								<option value="notcompleted">미완료</option>
							</select>
						</div> -->

				<div>
					<table class="table table-hover" id="userlistid">
						<thead>
							<tr style="font-weight: bold;">
								<td scope="col">회원아이디</td>
								<td scope="col">회원이름</td>
								<td scope="col">가입일자</td>
								<td scope="col">성별</td>
								<td scope="col">주민등록번호</td>
								<td scope="col">전화번호</td>
								<td scope="col">키</td>
								<td scope="col">몸무게</td>
								<td scope="col">포인트</td>
								<td scope="col">삭제</td>
							</tr>
						</thead>

						<%
							for (int i = 0; i < memberlist.size(); i++) {
								memberVO row = memberlist.get(i);
						%>
						<tr>
							<td scope="col"><%=row.getMember_id() %></td>
							<td scope="col"><%=row.getName() %></td>
							<td scope="col"><%=row.getRegdate() %></td>
							<td scope="col"><%=row.getGender() %></td>
							<td scope="col"><%=row.getSsn() %></td>
							<td scope="col"><%=row.getPhonenum() %></td>
							<td scope="col"><%=row.getHeight()%></td>
							<td scope="col"><%=row.getWeight() %></td>
							<td scope="col"><%=row.getPoint() %></td>
							<td scope="col"><a href="/maeggiSeggi/loginandcustomer/admin_delete.do?member_id=<%=row.getMember_id()%>">삭제</a></td>
						</tr>
						<%
							}
						%>
					</table>

				</div>

			</div>
		</div>


	</div>






	<!-- ****** Breadcumb Area End ****** -->
</body>