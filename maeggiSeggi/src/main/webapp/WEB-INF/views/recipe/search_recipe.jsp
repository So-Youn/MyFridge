<%@page import="maeggi.seggi.recipe.RecipeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="/maeggiSeggi/common/css/responsive/responsive.css"
	rel="stylesheet">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<link href="/maeggiSeggi/common/css/recipe_search.css" rel="stylesheet">

</head>
<body>
	<%
		String category = (String)request.getAttribute("category");
		
	%>

	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">RECIPE</li>
							<li class="breadcrumb-item active" aria-current="page">Recipes
								Search</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<br />
	<div class="container" style="margin-top: 30px; font-family: PapyrusM;">
		<div class="row">
			<div class="col-sm-3">
				<h2 class="aside-title">Recipe Search</h2>

					<div class="form-group">
						<div class="input-group">
							<input type="text" name="recipe_search" id="recipe_search" class="form-control"
								placeholder="검색어를 입력하세요." style="font-size: 20pt;">

							<input type="button" id="search" class="ion-search" name="read" value="검색" onclick="getbyname()" >
							<!-- 	검색 <i class="ion-search"></i> -->
							

						</div>

					</div>
	
				<ul>
					<li class="active"><a href="#">All</a></li>
					<li><a href="#">Latest</a></li>
					<li><a href="#">Popular</a></li>
					<li><a href="#">Views</a></li>
				</ul>

				<div class="optionbox">
					<form class="checkbox-group" active="">
						<div id="check">
							<div id="title">테마별</div>
							<div class="form-group">
								<label><input type="radio" name="recipe_category" id="checkVal"
									value="all" checked>All</label>
							</div>
							<div class="form-group">
								<label><input type="radio" name="recipe_category" value="한식">한식</label>
							</div>
							<div class="form-group">
								<label><input type="radio" name="recipe_category" value="퓨전">
									퓨전</label>
							</div>
							<div class="form-group">
								<label><input type="radio" name="recipe_category" value="서양이탈리아"> 서양이탈리아</label>
							</div>
							<div class="form-group">
								<label><input type="radio" name="recipe_category" value="중국/동남아시아"> 중국 /동남아시아</label>
							</div>
							<div class="form-group">
								<label><input type="radio" name="recipe_category" value="일본">
									일본</label>
							</div>
						</div>
						<br>
					</form>

				</div>
				<hr class="d-sm-none">
			</div>
			<div class="col-sm-9">
				<div style="font-size: 20pt; float: left;width=100%">
<!-- 					<div class="nav-tabs-right">
						<select class="form-control" id="contentnum" name="contentnum">
							<option>Limit</option>
							<option value="10">10</option>
							<option value="20">20</option>
							<option value="50">50</option>
							<option value="100">100</option>
						</select>
					</div> -->
					<div class="search-result">
						<span id="underline">검색어</span>(으)로 조회된 결과는 <span id="Scount">-</span> 개 입니다.
					</div>


					<div id="main">
					<c:forEach var="recipe" items="${list}">
						<div id="content">
							<div class="grid">
								<div class="single-post">
									<div class="post-thumb">
										<a
											href="/maeggiSeggi/recipe/detailRecipe.do?id=${recipe.recipe_id} ">
											<img src="${recipe.img_url_main}" />
										</a>
									</div>
								</div>
								<div class="post-content">
									<div class="post-meta d-flex">
										<a hef="/maeggiSeggi/recipe/detailRecipe.do">
											<h6 style="font-family: nanumSquare_acEB; font: arial;">${recipe.name}</h6>
											<br />
										</a>
										<div class="post-author-date-area d-flex">
											<div class="post-author">
												<a href='#'>${recipe.member_id}</a>
											</div>
											<div class="post-date">
												<a href='#'>${recipe.register_date}</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</c:forEach>
					</div>
				<div style="text-align: center;clear:both;">
					<c:if test="${page.prev}">
						<a style="text-decoration: none;" href="javascript:page(${page.getStartPage()-1 });">&laquo;</a>
					</c:if>
					<c:forEach begin="${page.getStartPage() }" end="${page.getEndPage() }" var="idx">
						<a style="text-decoration:none;" href="javascript:page(${idx});">${idx}</a>
					</c:forEach>
					<c:if test="${page.next}">
						<a style="text-decoration: none;" href="javascript:page(${page.getEndPage()+1 });">&raquo;</a>
					</c:if>
					</div>
				</div>
			</div>
			<hr class="d-sm-none">
		</div>
	</div>

	<script type="text/javascript">
	function page(idx){
		var pagenum = idx;
		location.href="/maeggiSeggi/recipe/searchRecipe.do?pagenum="+pagenum+"&contentnum=9";
	}
		
		$(document).ready(function() {

		recipe_category = "${recipe_category}";
		pagenum = "${page.pagenum}";
		contentnum = 9;
		

		$("#check input").each(function() {
			$(this).on("click",function() {
								recipe_category = $(this).val();
								$.ajax({
											url : "/maeggiSeggi/recipe/ajax_searchRecipe.do",
											type : "get",
											async :false,
											data : {
												"recipe_category" : recipe_category,
												"pagenum"  : pagenum,
												"contentnum" : 9
											},
											success : function(data) {
												mydata = "";
												data = data.mainVo;
												for (var i = 0; i < data.length; i++) {
												mydata += "<div id='content'>"+
															"<div class='grid'>"+
															"<div class='single-post'>"
															+ "<div class='post-thumb'>"
																+ "<a href='/maeggiSeggi/recipe/detailRecipe.do?id="+ data[i].recipe_id+ "'>"
																	+ "<img src='" + data[i].img_url_main + "' style='width:248px;height:248px;'/>"
																+ "</a>"
															+ "</div>"
															+ "<div class='post-content'>"
																+ "<div class='post-meta d-flex'>"
																	+ "<a hef='/maeggiSeggi/recipe/detailRecipe.do'>"
																		+ "<h6 style='font-family: nanumSquare_acEB;font:arial;'>"+ data[i].name+ "</h6><br/>"
																	+ "</a>"
																	+ "<div class='post-author-date-area d-flex'>"
																		+ "<div class='post-author'>"
																			+ "<a href='#'>"+ data[i].member_id+ "</a>"
																		+ "</div>"
																		+ "<div class='post-date' >"
																			+ "<a href='#'>"+ data[i].register_date+ "</a>"
																		+ "</div>"
																	 + "</div>"
															+ "</div>"
														+ "</div>"
													+ "</div>"
												+ "</div>"
											+"</div>";
															
		
												}
												
												$("#main").empty();
												$("#main").append(mydata);
												$("#underline").html(recipe_category);
												
											}
											
										
										});
							})
				});
		});

			function getbyname(){
			$("#search").on("click",function() {
			var search = $("#recipe_search").val();
			pagenum = "${page.pagenum}";
			contentnum = 9;
			
			if(search!=''){
					$.ajax({
						url: "/maeggiSeggi/recipe/ajax_SearchName.do",
						type: "get",
						async :false,
						data: {
							"search": $("input[name='recipe_search']").val(),
							"pagenum"  : pagenum,
							"contentnum" : 9
						},
						success:function(data){
							mydata = "";
							data = data.mainVo;
							for (var i = 0; i < data.length; i++) {
								mydata += "<div id='content'>"
											+"<div class='grid'>"
												+"<div class='single-post'>"
													+ "<div class='post-thumb'>"
														+ "<a href='/maeggiSeggi/recipe/detailRecipe.do?id="+ data[i].recipe_id+ "'>"
															+ "<img src='" + data[i].img_url_main + "' style='width:248px;height:248px;'/>"
														+ "</a>"
													+ "</div>"
													+ "<div class='post-content'>"
														+ "<div class='post-meta d-flex'>"
																+ "<a hef='/maeggiSeggi/recipe/detailRecipe.do'>"
																	+ "<h6 style='font-family: nanumSquare_acEB;font:arial;'>"+ data[i].name+ "</h6><br/>"
																+ "</a>"
															+ "<div class='post-author-date-area d-flex'>"
																+ "<div class='post-author'>"
																	+ "<a href='#'>"+ data[i].member_id+ "</a>"
																+ "</div>"
																+ "<div class='post-date' >"
																	+ "<a href='#'>"+ data[i].register_date+ "</a>"
																+ "</div>"
															+ "</div>"
														+ "</div>"
													+ "</div>"
											+ "</div>"
										+ "</div>"
									+"</div>";

							}
							$("#main").empty();
							$("#main").append(mydata);
							$("#underline").html(search);
							$("#Scount").html(data.length);
					}
				});
			}
		})
	} 
		
		
	</script>


</body>
</html>