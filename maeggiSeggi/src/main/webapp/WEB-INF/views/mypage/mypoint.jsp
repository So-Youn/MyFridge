<%@page import="maeggi.seggi.mypage.PointVO"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@page import="maeggi.seggi.mypage.BoardVO"%>
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

</head>

<body>

	<%
		ArrayList<PointVO> mypoint = (ArrayList<PointVO>)request.getAttribute("mypoint");
		memberVO loginuser = (memberVO) session.getAttribute("loginuser");
	%>
	
	
	<%-- <%
		if (session.getAttribute("id") != null) {
	%> --%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		>
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>My Point</h2>
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
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">MyPage</li>
							<li class="breadcrumb-item active" aria-current="page">My
								Point</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->

	<!-- my point area start -->
	<div style="width: 400px; margin-left: auto; margin-right: auto;">
		<div
			style="text-align: center; margin-left: auto; margin-right: auto;">
			<div class="title">
				<h2>포인트 적립 상세 내용</h2>
			</div>
			<fieldset>
				<div class="">
					<div class="">
						<span>내 포인트</span> <strong><%= request.getAttribute("pointsum") %></strong> <span>점</span>
					</div>
				</div>
			</fieldset>
		</div>
		<p></p>
		<table border="1"
			style="margin-left: auto; margin-right: auto; width: 500px; text-align: center;">
			<tr style="text-align: center; font-weight: bold;">
				<td>No</td>
				<td>적립내용</td>
				<td>적립 포인트</td>
				<td>적립날짜</td>
			</tr>
			<tbody>
				<%
					for (int i = 0; i < mypoint.size(); i++) {
						PointVO row = mypoint.get(i);
				%>
				<tr>
					<td><%=row.getID()%></td>
					<td><%=row.getRule_name()%></td>
					<td><%=row.getPoint()%></td>
					<td><%=row.getPoint_date()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<p></p>
	<!-- my point area end -->

</body>