<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
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
<!-- The above 4 meta tags must come first in the head; any other head content must come after these tags -->
<!-- Title -->
<title>1:1문의사항</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">
<!-- Favicon -->
<link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">
<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">
<!-- Jquery-2.2.4 js -->
<script src="/maeggiSeggi/common/js/jquery/jquery-2.2.4.min.js"></script>


<!-- All Plugins JS (지우지말것)-->
<script src="/maeggiSeggi/common/js/others/plugins.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">


</head>
<body>
	<%
		ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list");
		memberVO admin_loginuser = (memberVO) session.getAttribute("admin_loginuser");
	
	%>
	<%--  <% if(session.getAttribute("id")!= null){ //로그인유저만 접근 가능 %> --%>
	<!--  <script type="text/javascript">
	 var sessionid = session.getAttribute("id");
	 document.write(sessionid);
	 </script>
		  -->
	
	
	
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		 >
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


	<div class="container">
		<div class="row">
			<!-- Logo Area Start -->
			<div class="col-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#"><i
								class="fa fa-home" aria-hidden="true"></i> Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">MyPage</li>
						<li class="breadcrumb-item active" aria-current="page">1:1
							문의사항</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	<!-- 1:1 ask area start -->
	<div id="ask">

		<table id="table_boardlist" class="table table-hover"
			style="width: 800px; height: 100px; text-align: center; margin-left: auto; margin-right: auto;">
			<thead>
				<tr style="font-weight: bold;">
					<td scope="col">작성자</td>
					<td scope="col">제목</td>
					<td scope="col">등록일자</td>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < list.size(); i++) {
						BoardVO row = list.get(i);
				%>
				<tr>
				<td><%=row.getMember_id()%></td>
					<td><a href="/maeggiSeggi/board/read.do?askno=<%=row.getAskno()%>"><%=row.getAsk_title()%></a></td>
					<td><%=row.getAsk_regdate()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>

		<div>
			<fieldset style="text-align: center;">
				<legend>게시글 검색</legend>
				<div class="">
					<div class="">
						<span>전체</span> <strong>1</strong> <span>건</span>

					</div>
					<form action="/erp/board/search.do">
						<select name="tag">
							<option value="title" selected="selected">제목</option>
							<option value="regidate">등록 일자</option>
							<option value="answer_status">답변상태</option>
						</select> <input type="text" name="search" /> <input type="submit"
							value="검색"> <a href="/maeggiSeggi/board/insert.do"
							style="color: white; background-color: #FC6C3F; width: 100px;">글쓰기</a>
					</form>
				</div>
			</fieldset>
			<p></p>
		</div>
	</div>
	<div></div>
	<div>
		
		<div class="pagination-area d-sm-flex mt-15"
			style="width: 300px; margin-left: auto; margin-right: auto;">
			<nav aria-label="#">
				<ul class="pagination">
					<li class="page-item active"><a class="page-link" href="#">1
							<span class="sr-only">(current)</span>
					</a>
						<div class="row">
							<div class="col-12">
								<nav class="navbar navbar-expand-lg">
									<button class="navbar-toggler" type="button"
										data-toggle="collapse" data-target="#yummyfood-nav"
										aria-controls="yummyfood-nav" aria-expanded="false"
										aria-label="Toggle navigation">
										<i class="fa fa-bars" aria-hidden="true"></i> Menu
									</button>



								</nav>
							</div>
						</div></li>
				</ul>
			</nav>
		</div>
	</div>
<%--  <% } else{ %>
	
		<script type="text/javascript">
		alert("로그인이 필요한 기능입니다!");
		document.location.href="/maeggiSeggi/loginandcustomer/login.do";
		</script>
		<% }%>
	  --%>
</body>
</html>