<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- 카카오로그인meta -->
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />



<!-- Title -->
<title>로그인 페이지</title>

<!-- Favicon -->
<link rel="icon" href="/maeggiSeggi/images/core-img/favicon.ico">

<!-- font -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/k_login.css" rel="stylesheet">


<!-- Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">

<%-- 카카오 디벨로퍼 api 받아오기 --%>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>

<body>


	<div class="container">

		<!-- 여기부터  로그인 컨텐츠-->
		<div id="outter">


			<div id="right_inner">
				<form action="/maeggiSeggi/loginandcustomer/login.do" method="post">
					<div id="login_box">
						<h1>Member Login</h1>
						<ul id="input_button">
							<li id="id_pass">
								<ul>
									<li class="logintext" id="member_id"><div
											class="logintext_div">
											<input type="text" class="input_logintext" placeholder=' 아이디'
												name="member_id">
										</div></li>
									<!-- id -->
									<li class="logintext" id="pass"><div class="logintext_div">
											<input type="password" class="input_logintext" name="pass"
												placeholder=' 비밀번호'>
										</div></li>
									<!-- pass -->
								</ul>
							</li>
							<li><input type="submit" id="loginbutton" value="로그인" /></li>
						</ul>
						
							<div id="joinlist"><a href="/maeggiSeggi/loginandcustomer/join.do">[회원가입]</a></div>

					
					</div>	
					<%-- <div id="socialLogin_box">
						소셜 로그인
						<div id="socialList">
							<ul>

								<li>
									<div class="text-center">
										<a href="${naver_url}"><img width="300" alt="Naver Login"
											src="/maeggiSeggi/images/btn_login_naver.png"></a>
									</div>
									<div id=login_success></div> <a
									href="/maeggiSeggi/loginandcustomer/login.do" onclick="logout()">로그아웃</a>
									<button onclick="logininfo()">정보보기</button>
									<div id=logininformation></div>
								</li>


								<li><a id="kakao-login-btn"></a></li>

								<li><input type="button" class="socialbutton" id="social3"
									value="Google로 로그인"></li>
							</ul>
						</div>
					</div> --%>
				</form>
			</div>

			<script type='text/javascript'>
				var user_id;
				var user_email;
				var user_name;
				var user_gender;
				var user_age;
				var user_birthday;

				// 사용할 앱의 JavaScript 키를 설정해 주세요.//
				Kakao.init('c29ff88794664b94fee0ec7f346eb28d');
				// 로그인 버튼 만들기 // 
				Kakao.Auth.createLoginButton({

					container : '#kakao-login-btn', // 로그인 버튼을 넣을 장소 ID ( 위의 a 태그 )
					success : function(authObj) {
						Kakao.API.request({ // 카카오 API 에 요청 //
							url : '/v1/user/me', // 카카오 서버에 저장되어있는 나의 정보 에 url 걸기  // 
							success : function(res) {
								alert("로그인 성공 로그창f12에서 정보를 확인하세요."); // 로그인 성공 시 alert // 
								console.log("아이디: " + res.id);// 카카오 아이디 로그에 출력 (카카오에서 부여하는 고유값 ) 
								console.log("이메일: " + res.kaccount_email);//로그에 이메일주소 출력 (실제 입력한 이메일 주소 출력.)
								console.log("닉네임: "
										+ res.properties['nickname']);// 로그에 닉네임 출력         
								console.log("성별: " + res.gender); // 허용시 성별도 출력되는듯 현재 undefiend
								console.log("나이대: " + res.age_range); // 허용시 나이도 출력 가능? 알아봐야함.
								console.log("생일: " + res.birthday); //  허용시 생년월일 가능? 알아봐야함
								console.log("토큰값: " + authObj.access_token);// 로그에 Access 토큰값 출력

								/// 하단은 불러온 값을 변수에 담기, 한번에 담으려면 ArrayList 또는 JSONArray 를 활용해야할것 같음. //
								user_id = res.id; // 고유 아이디값 변수에 담기.
								user_email = res.kaccount_email; // 이메일값 변수에 담기.
								user_name = res.properties['nickname']; // 닉네임값 변수에 담기.
								user_gender = res.gender;
								user_age = res.age_range;
								user_birthday = res.birthday;

								// 담은 정보를 확인하기 위하여 밑에 출력 // 
								$('#login_success').append(
										user_name + "님 환영합니다.");

								// 성공시 이동할 화면 설정해주기.. 스프링의 경우 이동할 jsp 파일 또는 컨트롤러 주소를 써주면 될것 같음. //
								// window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/hansub_project/home?kakaonickname="+kakaonickname);

								// 카카오 accessToken 가져오는 방법. 필요시 사용 // 
								// var kakaoToken = Kakao.Auth.setAccessToken(accessTokenFromServer);
								// console.log(kakaoToken);
							}
						})
					},
					fail : function(error) {
						alert("Fail!!");
						alert(JSON.stringify(error));
					}
				});
				function logininfo() {
					var results = '';
					results += "<h2> 아이디값:" + user_id + "</h2>"
					results += "<h2> 이름:" + user_name + "</h2>"
					results += "<h2> 이메일:" + user_email + "</h2>"
					$('#logininformation').append(results);
				}
				
				function logout(){
					alert("로그아웃 되었습니다.");
				}
			</script>



			<h2>이번 주 조회 수 top3 레시피</h2>
			<div class="row">

				<!-- Single Post -->

				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="/maeggiSeggi/images/blog-img/2.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">연어공주</a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
								<!-- Post Comment & Share Area -->
								<div class="post-comment-share-area d-flex">
									<!-- Post Favourite -->
									<div class="post-favourite">
										<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
											10</a>
									</div>
									<!-- Post Comments -->
									<div class="post-comments">
										<a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>
											12</a>
									</div>
									<!-- Post Share -->
									<div class="post-share">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline">연어 샌드위치</h4>
							</a>
						</div>
					</div>
				</div>



				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.6s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="/maeggiSeggi/images/blog-img/3.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">쁘띠공주</a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
								<!-- Post Comment & Share Area -->
								<div class="post-comment-share-area d-flex">
									<!-- Post Favourite -->
									<div class="post-favourite">
										<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
											10</a>
									</div>
									<!-- Post Comments -->
									<div class="post-comments">
										<a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>
											12</a>
									</div>
									<!-- Post Share -->
									<div class="post-share">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline">든든한 한끼~ 소고기 국수</h4>
							</a>
						</div>
					</div>
				</div>



				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.7s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<img src="/maeggiSeggi/images/blog-img/4.jpg" alt="">
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#">zl존법사</a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
								<!-- Post Comment & Share Area -->
								<div class="post-comment-share-area d-flex">
									<!-- Post Favourite -->
									<div class="post-favourite">
										<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
											10</a>
									</div>
									<!-- Post Comments -->
									<div class="post-comments">
										<a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>
											12</a>
									</div>
									<!-- Post Share -->
									<div class="post-share">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>

							<h4>제철음식, 홍합 카나페</h4>

						</div>
					</div>
				</div>



			
			</div>
		</div>
	</div>



</body>