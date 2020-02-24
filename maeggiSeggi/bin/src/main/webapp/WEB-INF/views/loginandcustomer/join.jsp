<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>

<head>


<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>회원 가입</title>

<!-- Favicon -->
<link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">

<!-- font -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/k_join.css" rel="stylesheet">


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
							<h2>회원 가입</h2>
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
										class="fa fa-home" aria-hidden="true"></i> 회원 가입</a></li>
								<li class="breadcrumb-item active" aria-current="page">정보
									입력</li>
							</ol>
						</nav>
					</div>
				</div>

				<div class="row">
					<!-- row해야 그 집모양 아이콘 있는 곳부터 글자가 시작됨 -->
					<div class="col-12" id="asklist_customview">
						<h2>회원 가입 - 정보 입력</h2>
					</div>
				</div>
			</div>
		</div>


		<div class="container">
			<form>
				<div class="join_form">
					<label for="email">아이디:</label> <input type="ID"
						class="form-control" id="join_email" placeholder="Enter email">
				</div>
				<div class="join_form">
					<label for="pwd">비밀번호:</label> <input type="password"
						class="form-control" id="join_pass" placeholder="Enter password">
				</div>
				<div class="join_form">
					<label for="pwd">비밀번호 확인:</label> <input type="text"
						class="form-control" id="join_pass_confirm"
						placeholder="Enter password">
				</div>
				<div class="join_form">
					<label for="pwd">이름:</label> <input type="text"
						class="form-control" id="join_name" placeholder="name">
				</div>


				<div class="join_form">
					<label for="pwd"> 성별 : </label> <span class="join_form"> <input
						name="gender" class="" type="radio" value="male" /> <label>남자</label>
					</span> <span class=""> <input name="gender" class="" type="radio"
						value="female" /> <label>여자</label>
					</span>
				</div>


				<div class="join_form">
					<label for="pwd">생년월일 6자리 : (예시: 940915)</label> <input type="text"
						class="form-control" id="join_birthday" placeholder="yymmdd">
				</div>
				<div class="join_form">
					<label for="pwd">전화번호 : </label><input type="text"
						class="form-control" id="join_phone" placeholder="phone nunmber">
				</div>


				<div class="checkbox">
					<label><input type="checkbox"> Remember me</label>
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>


	</div>


</body>