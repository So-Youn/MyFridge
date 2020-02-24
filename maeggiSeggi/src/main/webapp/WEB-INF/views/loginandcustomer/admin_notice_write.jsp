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
    <title>Yummy Blog - Food Blog Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="/maeggiSeggi/common/css/minjae.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<body>

    <!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area" >
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>공지사항 글쓰기 (관리자)</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">ABOUT US</li>
                            <li class="breadcrumb-item active" aria-current="page">공지사항</li>
                            <li class="breadcrumb-item active" aria-current="page">글쓰기(관리자)</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->
	
	<!-- 1:1 ask write area start -->
   <div>
		<fieldset>
			<div>
				<div class="mypage_info_texts" style="width: 420px; margin-left: auto; margin-right: auto;">
					<span>이름</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="id" class="" type="text" disabled="disabled" placeholder="아이디"/>
				</div>
				<div style="width: 420px; margin-left: auto; margin-right: auto;">
					<span>제목</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>
						<input name="title" title="제목" class="" placeholder="제목을 입력해 주세요." value=""/>
					</span>
				</div>
				<div style="width: 420px; margin-left: auto; margin-right: auto;">
					<span>첨부하기</span>&nbsp;
					<span>
						<input type="button" value="파일 첨부하기" onclick="" style="color:white; background-color: #fc6c3f; width: 150px"/>
					</span>
				</div>
				<p></p>
				<div style="width: 420px; margin-left: auto; margin-right: auto;">
					<textarea rows="10" cols="50"></textarea>
				</div>
			</div>
		</fieldset>
		<div style="width: 210px; margin-left: auto; margin-right: auto;">
			<input type="button" value="작성 완료" onclick="alert('작성을 완료했습니다.'); location.href='ask.do'" style="color:white; background-color: #fc6c3f; width: 100px"/>
			<input type="button" value="작성 취소" onclick="alert('작성을 취소했습니다.'); location.href='ask.do'" style="color:white; background-color: #fc6c3f; width: 100px"/>
		</div>
	</div>
	<p></p>
    
    

   

</body>
