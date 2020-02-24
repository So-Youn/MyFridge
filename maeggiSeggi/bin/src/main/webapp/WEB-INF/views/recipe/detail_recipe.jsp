<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>maeggi saeggi</title>



<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<!-- Responsive CSS -->
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style type="text/css">
img {
	width: 100%;
	height: 80;
	object-fit: cover;
}

h4 {
	font-family: PapyrusB;
	font-size: 30pt;
	text-align: justify;
}

#add {
	width:100%;
	background-color: white;
	border: solid 1px #fdd7c8;
	color: #f8585b;
	padding: 9px 10px;
	text-align: center;
	text-decoration: none;
	font-size: 15px;
	font-weight : bolder;
	margin: 4px;
	cursor: pointer;
	/* margin-right: 10%; */
	float: left;
	border-radius: 10px;
}

#underline {
	color: orange;
}

li {
	display: inline;
	margin-right: 20px;
}

.jumbotron{
 padding: 30px 15px;
  margin-bottom: 30px;
  color: inherit;
  background-color:#fdd7c8;
}
</style>

<script type="text/javascript">

function popup(){
	window.open("/maeggiSeggi/recipe/addPlanner.do","식단 관리","top=100, left=450, width=700, height=450, status=no, menubar=no, toolbar=no, resizable=no");

}
</script>
</head>
<body>
	
	<!-- ****** Header Area End ****** -->
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">RECIPE</li>
							<li class="breadcrumb-item active" aria-current="page">
								Recipe Details</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-4">
			<div class="single-post">
				<h4>지글지글 맛있는 돼지구이</h4>
				<div class="post-thumb">
					<img src="../images/pork1.PNG" alt="">
				</div>
				<!-- Post Content -->
				<div class="post-content">
					<div class="post-meta d-flex">
						<div class="post-author-date-area d-flex">
							<!-- Post Author -->
							<div class="post-author">
								<a href="#">By 융또융</a>
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
								<a href="#"><i class="fas fa-heart" aria-hidden="true"></i>
									10</a>
							</div>
							<!-- Post Comments -->
							<div class="post-comments">
								<a href="#"><i class="far fa-comment" aria-hidden="true"></i>
									12</a>
							</div>
							<!-- Post Share -->
							<div class="post-share">
								<a href="#"><i class="far fa-smile" aria-hidden="true"></i>
									250</a>
							</div>
							&nbsp;&nbsp;
							<div class="post-share">
								<a href="#"><i class="fas fa-share-alt" aria-hidden="true"></i>&nbsp;2</a>
							</div>
						</div>
						</div>
					</div>
					<div class="jumbotron">
						<div>
							<h4>요리 간단 소개</h4>
							<div style="font-family: PapyrusB; font-size: 15pt;">

								<div>
									<span>완전 짱짱 맛있는 돼지구이 입니다 강추강추!</span><br /> <span>칼로리 :</span> <strong>310</strong>
									<span>kcal</span>
								</div>
							</div>
						</div>


						<div style="font-family: PapyrusB; font-size: 15pt;">
							<h4>재료</h4>
							<ul>
								<li>김치 <strong>0.5</strong> <span> 쪽</span>
								</li>
								<li>두부 <strong>1</strong> <span> 모</span>
								</li>
								<li><br /> 양파 <strong>0.5</strong> <span> 개</span></li>
								<li>고추 <strong>1</strong> <span> 개</span>
								</li>
							</ul>
						</div>
					</div>
					<input type="button" id="add" value="식단에 추가하기" onclick="popup()">
					<hr class="d-sm-none">
					
				</div>
			</div>
			
			<div class="col-sm-8">
			 <div class="single-post">
				<h4>요리 순서</h4>
				<div>
					
					<ul class="list-group list-group-flush">
						<li class="list-group-item">우선 냄비에 간장 반컵과 설탕 반컵을 넣고</li>
						<li class="list-group-item">매실청 1/3컵, 물 2컵 넣어 팔팔 끓여준 후 불을 꺼서 완전히 식혀 줍니다.양념이 식는 동안,</li>
						<li class="list-group-item">돼지목심에 칼집을 사선으로 내어 주세요. 앞뒤면 고루고루~</li>
						<li class="list-group-item">그리고 아까 끓인 양념이 다식으면, 소주 1큰술, 다진마늘 2큰술과 양파 1/4를 갈아서 넣어주면 양념끝!ㅋ</li>
						<li class="list-group-item">이제 칼집낸 돼지고기를 넣어 1일 재워주면 끝!</li>
						<li class="list-group-item">가열된 팬에 앞뒤로 맛있게 구워주세요~ㅎ	</li>

					</ul>
				</div>
			</div>
				
				<!-- Related Post Area -->
				<div class="related-post-area section_padding_50">
					<h4 class="mb-30">관련 레시피</h4>

					<div class="related-post-slider owl-carousel">
						<!-- Single Related Post-->
						<div class="single-post">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="/maeggiSeggi/images/blog-img/15.jpg" alt="">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">By Marian</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">May 19, 2017</a>
										</div>
									</div>
								</div>
								<a href="#">
									<h6>The Top Breakfast And Brunch Spots In Hove</h6>
								</a>
							</div>
						</div>
						
						<!-- Single Related Post-->
						<div class="single-post">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="/maeggiSeggi/images/blog-img/5.jpg" alt="">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">By Marian</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">May 19, 2017</a>
										</div>
									</div>
								</div>
								<a href="#">
									<h6>The Top Breakfast And Brunch Spots In Hove</h6>
								</a>
							</div>
						</div>
						<!-- Single Related Post-->
						<div class="single-post">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="/maeggiSeggi/images/blog-img/16.jpg" alt="">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">By Marian</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">May 19, 2017</a>
										</div>
									</div>
								</div>
								<a href="#">
									<h6>The Top Breakfast And Brunch Spots In Hove</h6>
								</a>
							</div>
						</div>
						<!-- Single Related Post-->
						<div class="single-post">
							<!-- Post Thumb -->
							<div class="post-thumb">
								<img src="/maeggiSeggi/images/blog-img/5.jpg" alt="">
							</div>
							<!-- Post Content -->
							<div class="post-content">
								<div class="post-meta d-flex">
									<div class="post-author-date-area d-flex">
										<!-- Post Author -->
										<div class="post-author">
											<a href="#">By Marian</a>
										</div>
										<!-- Post Date -->
										<div class="post-date">
											<a href="#">May 19, 2017</a>
										</div>
									</div>
								</div>
								<a href="#">
									<h6>The Top Breakfast And Brunch Spots In Hove</h6>
								</a>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Comment Area Start -->
				
				<div class="row">
				<div class="col-12 none" style="float : left;">
					<h4><span id="underline">3</span> 댓글 </h4>

					<ol>
						<!-- Single Comment Area -->
						<li class="single_comment_area">
							<div class="comment-wrapper d-flex">
								<!-- Comment Meta -->
								<div class="comment-author">
									<img src="/maeggiSeggi/images/blog-img/17.jpg" alt="">
								</div>
								<!-- Comment Content -->
								<div class="comment-content">
									<span class="comment-date text-muted">27 Aug 2018</span>
									<h5>Brandon Kelley</h5>
									<p>Neque porro qui squam est, qui dolorem ipsum quia dolor
										sit amet, consectetur, adipisci velit, sed quia non numquam
										eius modi tempora.</p>
									<a href="#">Like</a> <a class="active" href="#">Reply</a>
								</div>
							</div>
							<ol class="children">
								<li class="single_comment_area">
									<div class="comment-wrapper d-flex">
										<!-- Comment Meta -->
										<div class="comment-author">
											<img src="/maeggiSeggi/images/blog-img/18.jpg" alt="">
										</div>
										<!-- Comment Content -->
										<div class="comment-content">
											<span class="comment-date text-muted">27 Aug 2018</span>
											<h5>Brandon Kelley</h5>
											<p>Neque porro qui squam est, qui dolorem ipsum quia
												dolor sit amet, consectetur, adipisci velit, sed quia non
												numquam eius modi tempora.</p>
											<a href="#">Like</a> <a class="active" href="#">Reply</a>
										</div>
									</div>
								</li>
							</ol>
						</li>
						<li class="single_comment_area">
							<div class="comment-wrapper d-flex">
								<!-- Comment Meta -->
								<div class="comment-author">
									<img src="/maeggiSeggi/images/blog-img/19.jpg" alt="">
								</div>
								<!-- Comment Content -->
								<div class="comment-content">
									<span class="comment-date text-muted">27 Aug 2018</span>
									<h5>Brandon Kelley</h5>
									<p>Neque porro qui squam est, qui dolorem ipsum quia dolor
										sit amet, consectetur, adipisci velit, sed quia non numquam
										eius modi tempora.</p>
									<a href="#">Like</a> <a class="active" href="#">Reply</a>
								</div>
							</div>
						</li>
					</ol>
				</div>
				</div>
				
				 <div class="single-post">
				<fieldset>
					<h4>
						레시피 후기
					</h4>
					<div>
						<span>전체 </span> <strong>20</strong> <span>건</span> 
						<button type="button" class="btn btn-outline-warning btn-sm" style="float:right;margin-bottom: 1%">후기 등록</button>
					</div>
				</fieldset>
				<table class="table table-hover" summary="번호,내용,글쓴이,등록일로 구성된 게시판">
					<thead>
						<tr>
							<th>번호</th>
							<th>내용</th>
							<th>글쓴이</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tr>
						<td>1</td>
						<td>너무너무 맛있어요</td>
						<td>요리지킴이</td>
						<td>20-01-22</td>
					</tr>
					<tr>
						<td>2</td>
						<td>밥이랑 먹으니 요리가 일품</td>
						<td>밥수니</td>
						<td>20-01-18</td>
					</tr>
					<tr>
						<td>3</td>
						<td>혼자 먹기 아쉬운 요리 ㅜㅜ</td>
						<td>자취생</td>
						<td>20-01-14</td>
					</tr>
				</table>
				<br />
			</div>
			</div>
			</div>
</body>
</html>