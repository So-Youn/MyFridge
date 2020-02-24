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
<title>Maeggi Seggi</title>


<!-- Favicon -->
<link rel="icon" href="maeggiSeggi/images/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="/maeggiSeggi/common/css/style.css" rel="stylesheet">


<!--Responsive CSS -->
<link href="/maeggiSeggi/common/css/responsive/responsive.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<style type="text/css">
img {
   width: 300px;
   height: 300px;
   object-fit: cover;
}


h4 {
   margin-left: 200px;
   font-family: PapyrusM;
   font-size: 30pt;
   text-align: justify;
   float: left;
}


#bmore,#nmore,#hmore {
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
#underline{
color: skyblue;
}
section {
   clear: both;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		checkb = 0;
		$("#bmore").on("click", function() {
			cook_level = "초보환영";
			if(checkb==0){
				checkb = 1;
			$.ajax({
				url : "/maeggiSeggi/recipe/ajax_levellist.do",
				type : "get",
				data : {"cook_level" : cook_level},
				success : function(data) {
					mydata = "";
					for (i = 0; i < data.length; i++) {
						mydata = mydata + "<div class='bbb col-12 col-md-6 col-lg-4'>"
							+"<div class=''>"
				               +"<div class='single-post wow fadeInUp' data-wow-delay='0.1s'>"
				                  <!-- Post Thumb -->
				                  +"<div class='post-thumb'>"
				                  +"<a href='/maeggiSeggi/recipe/detailRecipe.do?id="+data[i].recipe_id+"'>"+"<img src='"+data[i].img_url_main+"' alt=''/></a>"
				                  +"</div>"
				                  <!-- Post Content -->
				                  +"<div class='post-content'>"
				                     +"<div class='post-meta d-flex'>"
				                        +"<div class='post-author-date-area d-flex'>"
				                           <!-- Post Author -->
				                           +"<div class='post-author'>"
				                              +"<a href='#'>By 융또융</a>"
				                           +"</div>"
				                           <!-- Post Date -->
				                           +"<div class='post-date'>"
				                              +"<a href='#'>May 19, 2017</a>"
				                           +"</div>"
				                        +"</div>"
				                        <!-- Post Comment & Share Area -->
				                        +"<div class='post-comment-share-area d-flex'>"
				                           <!-- Post Favourite -->
				                           +"<div class='post-favourite'>"
				                              +"<a href='#'><i class='fa fa-heart-o' aria-hidden='true'></i>10</a>"
				                           +"</div>"
				                           <!-- Post Comments -->
				                           +"<div class='post-comments'>"
				                              +"<a href='#'><i class='fa fa-comment-o' aria-hidden='true'></i>12</a>"
				                           +"</div>"
				                           <!-- Post Share -->
				                           +"<div class='post-share'>"
				                              +"<a href='#'><i class='fa fa-share-alt' aria-hidden='true'></i></a>"
				                           +"</div>"
				                        +"</div>"
				                     +"</div>"
				                     +"<a href='/maeggiSeggi/recipe/detailRecipe.do'>"
				                        +"<h4 class='post-headline'>"+data[i].name
				                     +"</a>"
				                  +"</div>"
				               +"</div>"
				            +"</div>"
				            +"</div>"
					}
					$("#bend").append(mydata);
					hr="";
					hr=hr+"<hr width=100% color='#f8585b' size='3'>"
					$("#fend").append(hr);
				}
			});
			}else if(checkb==1){
				checkb = 0;
				$(".bbb").remove();
				$("#fend").children().last().remove();
			}
		});
		checkn = 0;
		$("#nmore").on("click", function() {
			cook_level = "보통";
			if(checkn==0){
				checkn = 1;
			$.ajax({
				url : "/maeggiSeggi/recipe/ajax_levellist.do",
				type : "get",
				data : {"cook_level" : cook_level},
				success : function(data) {
					mydata = "";
					for (i = 0; i < data.length; i++) {
						mydata = mydata + "<div class='nnn col-12 col-md-6 col-lg-4'>"
							+"<div class=''>"
				               +"<div class='single-post wow fadeInUp' data-wow-delay='0.1s'>"
				                  <!-- Post Thumb -->
				                  +"<div class='post-thumb'>"
				                  +"<a href='/maeggiSeggi/recipe/detailRecipe.do?id="+data[i].recipe_id+"'>"+"<img src='"+data[i].img_url_main+"' alt=''/></a>"
				                  +"</div>"
				                  <!-- Post Content -->
				                  +"<div class='post-content'>"
				                     +"<div class='post-meta d-flex'>"
				                        +"<div class='post-author-date-area d-flex'>"
				                           <!-- Post Author -->
				                           +"<div class='post-author'>"
				                              +"<a href='#'>By 융또융</a>"
				                           +"</div>"
				                           <!-- Post Date -->
				                           +"<div class='post-date'>"
				                              +"<a href='#'>May 19, 2017</a>"
				                           +"</div>"
				                        +"</div>"
				                        <!-- Post Comment & Share Area -->
				                        +"<div class='post-comment-share-area d-flex'>"
				                           <!-- Post Favourite -->
				                           +"<div class='post-favourite'>"
				                              +"<a href='#'><i class='fa fa-heart-o' aria-hidden='true'></i>10</a>"
				                           +"</div>"
				                           <!-- Post Comments -->
				                           +"<div class='post-comments'>"
				                              +"<a href='#'><i class='fa fa-comment-o' aria-hidden='true'></i>12</a>"
				                           +"</div>"
				                           <!-- Post Share -->
				                           +"<div class='post-share'>"
				                              +"<a href='#'><i class='fa fa-share-alt' aria-hidden='true'></i></a>"
				                           +"</div>"
				                        +"</div>"
				                     +"</div>"
				                     +"<a href='/maeggiSeggi/recipe/detailRecipe.do'>"
				                        +"<h4 class='post-headline'>"+data[i].name
				                     +"</a>"
				                  +"</div>"
				               +"</div>"
				            +"</div>"
				            +"</div>"
					}
					$("#nend").append(mydata);
					hr="";
					hr=hr+"<hr width=100% color='#f8585b' size='3'>"
					$("#ffend").append(hr);
				}
			});
			}else if(checkn==1){
				checkn = 0;
				$(".nnn").remove();
				$("#ffend").children().last().remove();
			}
		});
		checkh = 0;
		$("#hmore").on("click", function() {
			cook_level = "어려움";
			if(checkh==0){
				checkh = 1;
			$.ajax({
				url : "/maeggiSeggi/recipe/ajax_levellist.do",
				type : "get",
				data : {"cook_level" : cook_level},
				success : function(data) {
					mydata = "";
					for (i = 0; i < data.length; i++) {
						mydata = mydata + "<div class='hhh col-12 col-md-6 col-lg-4'>"
							+"<div class=''>"
				               +"<div class='single-post wow fadeInUp' data-wow-delay='0.1s'>"
				                  <!-- Post Thumb -->
				                  +"<div class='post-thumb'>"
				                  +"<a href='/maeggiSeggi/recipe/detailRecipe.do?id="+data[i].recipe_id+"'>"+"<img src='"+data[i].img_url_main+"' alt=''/></a>"
				                  +"</div>"
				                  <!-- Post Content -->
				                  +"<div class='post-content'>"
				                     +"<div class='post-meta d-flex'>"
				                        +"<div class='post-author-date-area d-flex'>"
				                           <!-- Post Author -->
				                           +"<div class='post-author'>"
				                              +"<a href='#'>By 융또융</a>"
				                           +"</div>"
				                           <!-- Post Date -->
				                           +"<div class='post-date'>"
				                              +"<a href='#'>May 19, 2017</a>"
				                           +"</div>"
				                        +"</div>"
				                        <!-- Post Comment & Share Area -->
				                        +"<div class='post-comment-share-area d-flex'>"
				                           <!-- Post Favourite -->
				                           +"<div class='post-favourite'>"
				                              +"<a href='#'><i class='fa fa-heart-o' aria-hidden='true'></i>10</a>"
				                           +"</div>"
				                           <!-- Post Comments -->
				                           +"<div class='post-comments'>"
				                              +"<a href='#'><i class='fa fa-comment-o' aria-hidden='true'></i>12</a>"
				                           +"</div>"
				                           <!-- Post Share -->
				                           +"<div class='post-share'>"
				                              +"<a href='#'><i class='fa fa-share-alt' aria-hidden='true'></i></a>"
				                           +"</div>"
				                        +"</div>"
				                     +"</div>"
				                     +"<a href='/maeggiSeggi/recipe/detailRecipe.do'>"
				                        +"<h4 class='post-headline'>"+data[i].name
				                     +"</a>"
				                  +"</div>"
				               +"</div>"
				            +"</div>"
				            +"</div>"
					}
					$("#hend").append(mydata);
					hr="";
					hr=hr+"<hr width=100% color='#f8585b' size='3'>"
					$("#fffend").append(hr);
				}
			});
			}else if(checkh==1){
				checkh = 0;
				$(".hhh").remove();
				$("#fffend").children().last().remove();
			}
		});
	});
</script>
</head>
<body>
	<% List<RecipeVO> listb = (List<RecipeVO>)request.getAttribute("levellistb"); %>
	<% List<RecipeVO> listn = (List<RecipeVO>)request.getAttribute("levellistn"); %>
	<% List<RecipeVO> listh = (List<RecipeVO>)request.getAttribute("levellisth"); %>
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
                        Level Recipes</li>
                  </ol>
               </nav>
            </div>
         </div>
      </div>
   </div>
<div id="line">
      <div id="headtitle">
         <h4>나는야 <span id="underline">초급 </span>요리사</h4>
         <a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="bmore" value="More">
      </div>
   </div>


   <section class="archive-area" id="fend">
      <div class="container">
         <div class="row" id="bend">


            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.1s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listb.get(0).getRecipe_id() %>"><img src="<%= listb.get(0).getImg_url_main() %>" alt=""/></a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listb.get(0).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>
            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.3s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listb.get(1).getRecipe_id() %>"><img src="<%= listb.get(1).getImg_url_main() %>" alt=""/></a>
                  </div>
                  <!-- Post Content -->
                  <div class="post-content">
                     <div class="post-meta d-flex">
                        <div class="post-author-date-area d-flex">
                           <!-- Post Author -->
                           <div class="post-author">
                              <a href="#">By 영주영주</a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listb.get(1).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>




            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.4s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listb.get(2).getRecipe_id() %>"><img src="<%= listb.get(2).getImg_url_main() %>" alt=""/></a>
                  </div>
                  <!-- Post Content -->
                  <div class="post-content">
                     <div class="post-meta d-flex">
                        <div class="post-author-date-area d-flex">
                           <!-- Post Author -->
                           <div class="post-author">
                              <a href="#">By 민정민정</a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listb.get(2).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section><br/><br/>


   <div id="line">
      <div id="headtitle">
         <h4>나는야 <span id="underline">중급</span>요리사</h4>
       <a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="nmore" value="More">
      </div>
   </div>


   <section class="archive-area" id="ffend">
      <div class="container">
         <div class="row" id="nend">


            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.1s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listn.get(0).getRecipe_id() %>"><img src="<%= listn.get(0).getImg_url_main() %>" alt=""/></a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listn.get(0).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>
            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.3s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listn.get(1).getRecipe_id() %>"><img src="<%= listn.get(1).getImg_url_main() %>" alt=""/></a>
                  </div>
                  <!-- Post Content -->
                  <div class="post-content">
                     <div class="post-meta d-flex">
                        <div class="post-author-date-area d-flex">
                           <!-- Post Author -->
                           <div class="post-author">
                              <a href="#">By 영주영주</a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listn.get(1).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>




            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.4s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listn.get(2).getRecipe_id() %>"><img src="<%= listn.get(2).getImg_url_main() %>" alt=""/></a>
                  </div>
                  <!-- Post Content -->
                  <div class="post-content">
                     <div class="post-meta d-flex">
                        <div class="post-author-date-area d-flex">
                           <!-- Post Author -->
                           <div class="post-author">
                              <a href="#">By 민정민정</a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listn.get(2).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section><br/><br/>


   <div id="line">
      <div id="headtitle">
         <h4>나는야 <span id="underline"> 고급 </span>요리사</h4>
         <a href="/maeggiSeggi/recipe/recipe_write.do"><input type="button" id="add" value="레시피 등록" ></a>
			<input type="button" id="hmore" value="More">
      </div>
   </div>


   <section class="archive-area" id="fffend">
      <div class="container">
         <div class="row" id="hend">


            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.1s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listh.get(0).getRecipe_id() %>"><img src="<%= listh.get(0).getImg_url_main() %>" alt=""/></a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listh.get(0).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>
            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.3s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listh.get(1).getRecipe_id() %>"><img src="<%= listh.get(1).getImg_url_main() %>" alt=""/></a>
                  </div>
                  <!-- Post Content -->
                  <div class="post-content">
                     <div class="post-meta d-flex">
                        <div class="post-author-date-area d-flex">
                           <!-- Post Author -->
                           <div class="post-author">
                              <a href="#">By 영주영주</a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listh.get(1).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>




            <!-- Single Post -->
            <div class="col-12 col-md-6 col-lg-4">
               <div class="single-post wow fadeInUp" data-wow-delay="0.4s">
                  <!-- Post Thumb -->
                  <div class="post-thumb">
                     <a href="/maeggiSeggi/recipe/detailRecipe.do?id=<%= listh.get(2).getRecipe_id() %>"><img src="<%= listh.get(2).getImg_url_main() %>" alt=""></a>
                  </div>
                  <!-- Post Content -->
                  <div class="post-content">
                     <div class="post-meta d-flex">
                        <div class="post-author-date-area d-flex">
                           <!-- Post Author -->
                           <div class="post-author">
                              <a href="#">By 민정민정</a>
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
                     <a href="/maeggiSeggi/recipe/detailRecipe.do">
                        <h4 class="post-headline"><%= listh.get(2).getName() %></h4>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section><br/><br/>

</body>
</html>