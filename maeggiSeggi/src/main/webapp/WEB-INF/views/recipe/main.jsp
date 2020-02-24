
<%@page import="maeggi.seggi.recipe.RecipeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>maeggi saeggi</title>

<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
<style type="text/css">
img {
	width: 300px;
	height: 300px;
	object-fit: cover;
}

h4 {
	margin-left: 13%; 
	font-family: PapyrusM;
	font-size: 30pt;
	text-align: justify;
	
}

#more {
	width: 80px;
	background-color: #f8585b;
	border: none;
	color: #fff;
	padding: 10px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px;
	cursor: pointer;
	float: right;
	border-radius: 10px;
	
}
#add {
	width: 90px;
	background-color: white;
	border: solid 1px #f8585b;
	color: #f8585b;
	padding: 9px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	font-weight : bolder;
	margin: 4px;
	cursor: pointer;
	margin-right: 18%;
	float: right;
	border-radius: 10px;
}

section {
	clear: both;
}
#underline{
color: red;
}
.post-headline{
font-family: nanumSquare_acEB; 
font-size: 20pt;
}
</style>

</head>
<body>
		<% List<RecipeVO> hitList = (List<RecipeVO>)request.getAttribute("hitList");
		List<RecipeVO> drunklist = (List<RecipeVO>) request.getAttribute("drunklist");
		List<RecipeVO> freshlist = (List<RecipeVO>) request.getAttribute("freshlist");%>
<% List<RecipeVO> rlist = (List<RecipeVO>)request.getAttribute("rlist"); %>
	<% List<RecipeVO> rlistt = (List<RecipeVO>)request.getAttribute("rlistt"); %>
	<% List<RecipeVO> rlisttt = (List<RecipeVO>)request.getAttribute("rlisttt"); %>
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
								Theme Recipes</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
		<div id="line">
		<div id="headtitle">
			<h4>지금 가장 <span id="underline">HOT</span>한 요리</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
		</div>
	</div>

	<section class="archive-area">
		<div class="container">
			<div class="row">

				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<!-- Post Thumb -->
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=hitList.get(0).getRecipe_id() %>"><img src="<%=hitList.get(0).getImg_url_main() %>" alt=""></a>
						</div>
						<!-- Post Content -->
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<!-- Post Author -->
									<div class="post-author">
										<a href="#"><%=hitList.get(0).getMember_id() %></a>
									</div>
									<!-- Post Date -->
									<div class="post-date">
										<a href="#"><%=hitList.get(0).getRegister_date() %></a>
									</div>
								</div>
								<!-- Post Comment & Share Area -->
								<div class="post-comment-share-area d-flex">
									<!-- Post Favourite -->
									<div class="post-favourite">
										<a href="#"><i class="fas fa-heart" aria-hidden="true"></i>
											<%=hitList.get(0).getLike_num() %></a>
									</div>
									<!-- Post Comments -->
									<div class="post-comments">
										<a href="#"><i class="fas far fa-smile" aria-hidden="true"></i>
											<%=hitList.get(0).getHit() %></a>
									</div>
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline"><%=hitList.get(0).getName() %></h4>
							</a>
						</div>
					</div>
				</div>
				<!-- <!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.3s">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=hitList.get(1).getRecipe_id() %>"><img src="<%=hitList.get(1).getImg_url_main() %>" alt=""></a>
						</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<div class="post-author">
										<a href="#"><%=hitList.get(1).getMember_id() %></a>
									</div>
									<div class="post-date">
										<a href="#"><%= hitList.get(1).getRegister_date() %></a>
									</div>
								</div>
								<div class="post-comment-share-area d-flex">
									<div class="post-favourite">
										<a href="#"><i class="fas fa-heart" aria-hidden="true"></i>
											<%=hitList.get(1).getLike_num() %></a>
									</div>
									<div class="post-comments">
										<a href="#"><i class="fas far fa-smile" aria-hidden="true"></i>
											<%=hitList.get(1).getHit() %></a>
									</div>
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline"><%=hitList.get(1).getName() %></h4>
							</a>
						</div>
					</div>
				</div>


				<!-- Single Post -->
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.4s">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=hitList.get(2).getRecipe_id() %>"><img src="<%=hitList.get(2).getImg_url_main() %>" alt=""></a>
						</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<div class="post-author">
										<a href="#"><%=hitList.get(2).getMember_id() %></a>
									</div>
									<div class="post-date">
										<a href="#"><%=hitList.get(2).getRegister_date() %></a>
									</div>
								</div>
								<div class="post-comment-share-area d-flex">
									<div class="post-favourite">
										<a href="#"><i class="fas fa-heart" aria-hidden="true"></i>
											<%=hitList.get(2).getLike_num() %></a>
									</div>
									<div class="post-comments">
										<a href="#"><i class="fas far fa-smile" aria-hidden="true"></i>
											<%=hitList.get(2).getHit() %></a>
									</div>
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline"><%=hitList.get(2).getName() %></h4>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section><br/><br/>
  	<div id="line">
		<div id="headtitle">
			<h4><span id="underline">오늘 날씨</span>에는 이런 음식 어때요?</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
		
		</div>
	</div>

	<section class="archive-area">
		<div class="container">
			<div class="row">

				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=rlist.get(0).getRecipe_id() %>"><img src="<%= rlist.get(0).getImg_url_main() %>" alt="">
						</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<div class="post-author">
										<a href="#">By 융또융</a>
									</div>
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
								<div class="post-comment-share-area d-flex">
									<div class="post-favourite">
										<a href="#"><i class="fas fa-heart-o" aria-hidden="true"></i>
											10</a>
									</div>
									<div class="post-comments">
										<a href="#"><i class="fas fa-comment-o" aria-hidden="true"></i>
											12</a>
									</div>
									
								</div>
							</div>
				
							<a href="#">
								<h4 class="post-headline"><%= rlist.get(0).getName() %></h4>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.3s">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=rlistt.get(0).getRecipe_id() %>"><img src="<%= rlistt.get(0).getImg_url_main() %>" alt="">
						</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<div class="post-author">
										<a href="#">By 영주영주</a>
									</div>
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
								<div class="post-comment-share-area d-flex">
									<div class="post-favourite">
										<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
											10</a>
									</div>
									<div class="post-comments">
										<a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>
											12</a>
									</div>
									<div class="post-share">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline"><%= rlistt.get(0).getName() %></h4>
							</a>
						</div>
					</div>
				</div>


				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.4s">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=rlisttt.get(0).getRecipe_id() %>"><img src="<%= rlisttt.get(0).getImg_url_main() %>" alt="">
						</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<div class="post-author">
										<a href="#">By 민정민정</a>
									</div>
									<div class="post-date">
										<a href="#">May 19, 2017</a>
									</div>
								</div>
								<div class="post-comment-share-area d-flex">
									<div class="post-favourite">
										<a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>
											10</a>
									</div>
									<div class="post-comments">
										<a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i>
											12</a>
									</div>
									<div class="post-share">
										<a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i></a>
									</div>
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline"><%= rlisttt.get(0).getName() %></h4>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section><br/><br/> 
	<div id="line">
		<div id="headtitle">
			<h4><span id="underline">숙취</span>에는 이런 음식 어때요?</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
		</div>
	</div>
	<section class="archive-area">
		<div class="container">
			<div class="row">
				<% for(int i=0;i<6;i++){ 
					%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=drunklist.get(i).getRecipe_id() %>"><img src="<%=drunklist.get(i).getImg_url_main() %>" alt=""></a>
						</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<div class="post-author">
										<a href="#"><%=drunklist.get(i).getMember_id() %></a>
									</div>
									<div class="post-date">
										
									<a href="#"><%=drunklist.get(i).getRegister_date()%></a>
									</div>
								</div>
								<div class="post-comment-share-area d-flex">
									<div class="post-favourite">
										<a href="#"><i class="fas fa-heart" aria-hidden="true"></i>
											<%=drunklist.get(i).getLike_num() %></a>
									</div>
								
									<div class="post-comments">
										<a href="#"><i class="fas far fa-smile" aria-hidden="true"></i>
											<%=drunklist.get(i).getHit()%></a>
									</div>
									
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline"><%=drunklist.get(i).getName()%></h4>
							</a>
						</div>
					</div>
				</div>
				<%}%>
				
						</div>
					</div>
	
	</section>
	<br />
	<br />	<div id="line">
		<div id="headtitle">
			<h4><span id="underline">피로</span>에 지쳤을 때 이런 음식 어때요?</h4>
			<a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
		</div>
	</div>
	<section class="archive-area">
		<div class="container">
			<div class="row">
				<% for(int i=0;i<6;i++){ 
					%>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single-post wow fadeInUp" data-wow-delay="0.1s">
						<div class="post-thumb">
							<a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%=freshlist.get(i).getRecipe_id() %>"><img src="<%= freshlist.get(i).getImg_url_main() %>" alt=""></a>
						</div>
						<div class="post-content">
							<div class="post-meta d-flex">
								<div class="post-author-date-area d-flex">
									<div class="post-author">
										<a href="#"><%=freshlist.get(i).getMember_id() %></a>
									</div>
									<div class="post-date">
			
									<a href="#"><%=freshlist.get(i).getRegister_date()%></a>
									</div>
								</div>
								<div class="post-comment-share-area d-flex">
									<div class="post-favourite">
										<a href="#"><i class="fas fa-heart" aria-hidden="true"></i>
											<%=freshlist.get(i).getLike_num() %></a>
									</div>
								
									<div class="post-comments">
										<a href="#"><i class="fas far fa-smile" aria-hidden="true"></i>
											<%=freshlist.get(i).getHit()%></a>
									</div>
									
								</div>
							</div>
							<a href="#">
								<h4 class="post-headline"><%=freshlist.get(i).getName()%></h4>
							</a>
						</div>
					</div>
				</div>
				<%}%>
				
						</div>
					</div>
	
	</section>
	<br />
	<br />
	
 <script type="text/javascript">

</script> 
</body>
</html>