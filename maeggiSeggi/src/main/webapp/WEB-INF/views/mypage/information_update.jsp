<%@page import="maeggi.seggi.mypage.BoardVO"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@page import="java.util.ArrayList"%>
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
    <title>회원 정보수정</title>
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
	<script type="text/javascript">
		$(function() {
			$("#alert-success").hide();
			$("#alert-danger").hide();
			$("input").keyup(function() {
				var pass = $("#pass").val();
				var pass_confirm = $("#pass_confirm").val();
				if (pass != "" || pass_confirm != "") {
					if (pass == pass_confirm) {
						$("#alert-success").show();
						$("#alert-danger").hide();
						$("#submit").removeAttr("disabled");
					} else {
						$("#alert-success").hide();
						$("#alert-danger").show();
						$("#submit").attr("disabled", "disabled");
					}
				}
			});
		});
			//핸드폰 번호 수
			$("#phonenum").on("keyup",function(){
				myphone = $("#phonenum").val();
				resultStr ="";//결과 문자열을 저장할 변수
				colour = "";
				if(myphone.length != 11){
					resultStr = "핸드폰 번호는 11자리로 입력해야 합니다.";
					colour = "red";
				}else{
					resultStr = "핸드폰 번호 입력완료.";					
					colour = "green";
				}
				//웹페이지에 div태그 내부에 문자열을 추가 -> html()을 이용해도 좋다.
				$("#result_phone").text(resultStr);
				$("#result_phone").css("color",colour);
			});
		</script>
</head>
<body>
<%
		ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("list");
		memberVO loginuser = (memberVO) session.getAttribute("loginuser");
	%>
	<%--  <% if(session.getAttribute("id")!= null){ //로그인 된 유저만 접근 가능 %> --%>
    <!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" >
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>정보수정</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">나의 정보수정</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->
	<div class="container">
			<form action="/maeggiSeggi/board/infoupdate.do" method="POST">
				<div class="join_form">
					<label for="id">아이디:</label>
					<input type="hidden"
						class="form-control" name="member_id" placeholder =" <%= loginuser.getMember_id() %> " value="<%= loginuser.getMember_id() %>">
					<input type="text"
						class="form-control" placeholder =" <%= loginuser.getMember_id() %> " value="<%= loginuser.getMember_id() %>" disabled="disabled">
					<span id="checkVal" style="color: red;"></span>
				</div>												
				<div class="join_form">
					<label for="pwd">비밀번호:</label> <input type="password"
						class="form-control" id="pass" name="pass" value="<%= loginuser.getPass()%>">
				</div>
				<div class="join_form">
					<label for="pwd">비밀번호 확인:</label> <input type="password"
						class="form-control" id="pass_confirm" name="pass_cofirm" value="<%= loginuser.getPass()%>">
					<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
					<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
				</div>
				<div class="join_form">
					<label for="pwd">이름:</label> <input type="text"
						class="form-control" name="name" placeholder=" <%= loginuser.getName() %> " disabled="disabled">
				</div>
				<div class="join_form">
					<label for="pwd"> 핸드폰 번호 : ( - 없이 11자리 숫자만 입력  )</label> <input type="text"
						class="form-control" id="phonenum" name="phonenum" value=" <%= loginuser.getPhonenum() %> ">
					<div id="result_phone" style="color: red;"></div>
				</div>
				<div class="join_form">
					<label for="pwd"> 주민등록번호 : ( - 없이 13자리 숫자만 입력  )</label> <input type="text"
						class="form-control" placeholder=" <%= loginuser.getSsn() %> " disabled="disabled">
					<div id="result_ssn" style="color: red;"></div>
				</div>
				<div class="join_form">
					<label for="pwd"> 키 : (cm) </label><input type="text"
						class="form-control" id="height" name="height" value=" <%= loginuser.getHeight() %> ">
				</div>
				<div class="join_form">
					<label for="pwd"> 몸무게 : (kg) </label><input type="text"
						class="form-control" id="weight" name="weight" value=" <%= loginuser.getWeight() %> ">				
				</div>
				<button type="submit" onclick="alert('수정을 완료했습니다.')" class="btn btn-default" id="submit" style="color:white; background-color: #FC6C3F; width: 100px">Submit</button>
				<input type="button" value="수정 취소" onclick="alert('수정을 취소했습니다.');location.href='/maeggiSeggi/refrigerator/fridge.do'" style="color:white; background-color: #FC6C3F; width: 100px"/>
			</form>
		</div>
	<!-- information_update area end -->
	<%-- <% } else{ %>
		<script type="text/javascript">
		alert("로그인이 필요한 기능입니다!");
		document.location.href="/maeggiSeggi/loginandcustomer/login.do";
		</script>
		<% }%> --%>
</body>