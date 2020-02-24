<%@page import="maeggi.seggi.recipeFavorite.RecipeFavoriteVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<link rel="stylesheet" href="/maeggiSeggi/common/css/l_favorite.css">
    <!-- Title -->
    <title>Yummy Blog - Food Blog Template</title>
    
    <script type="text/javascript">	
    	function searchFavorite() {
    		var text = $("#inputText").val();
    		location.href = "/maeggiSeggi/favorite/search.do?name=" + text;
    	}
		function deleteFavorite() {
			var text = $("#inputText").val();
    		location.href = "/maeggiSeggi/favorite/delete.do?recipe_id=" + $("input[name="+ text +"]").val() + "&name=" + text;
		}
	</script>

</head>

<body>

    <!-- ****** Breadcumb Area Start ****** -->
    <div class="breadcumb-area">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="bradcumb-title text-center">
                        <h2>Favorite Recipe</h2>
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
                            <li class="breadcrumb-item active" aria-current="page">Favorite Recipe</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Breadcumb Area End ****** -->

    <!-- ****** Archive Area Start ****** -->
    
    <section class="archive-area section_padding_80" style="width: 80%; margin-left: auto; margin-right: auto;">
    	<div id="inputDiv" style="width: 520px; height: 80px; margin-left: auto; margin-right: 10%;">
    		<input id="inputText" type="text" placeholder="레시피를 검색하세요"/>
			<input id="delete" type="button" value="목록에서 삭제" onclick="deleteFavorite()"/>
		</div>
		<p></p>
        <div class="container">
            <div class="row">

			<c:forEach items="${favorites}" var="recFav">
                <!-- Single Post -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-post wow fadeInUp" data-wow-delay="0.4s">
                        <!-- Post Thumb -->
                        <div class="post-thumb">
                            <img src='${recFav.get("IMG_URL_MAIN")}' alt="레시피 이미지">
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-meta d-flex">
                                <div class="post-author-date-area d-flex">
                                    <!-- Post Author -->
                                    <div class="post-author">
                                        <a href="#">${recFav.get("MEMBER_ID")}</a>
                                    </div>
                                    <!-- Post Date -->
                                    <div class="post-date">
                                        <a href="#">${recFav.get("FAVORITE_DATE")}</a>
                                    </div>
                                </div>
                                <!-- Post Comment & Share Area -->
                                <div class="post-comment-share-area d-flex">
                                    <!-- Post Favourite -->
                                    <div class="post-favourite">
                                        <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>${recFav.get("LIKE_NUM")}</a>
                                    </div>
                                </div>
                            </div>
                            <a id="recipe_id" href='/maeggiSeggi/recipe/detailRecipe.do?id=${recFav.get("RECIPE_ID")}'>
                            	<input type="hidden" name='${recFav.get("NAME")}' value='${recFav.get("RECIPE_ID")}'>
                                <h4 class="post-headline">${recFav.get("NAME")}</h4>
                            </a>
                        </div>
                    </div>
                </div>
			</c:forEach>
                
            </div>
        </div>
    </section>
    <!-- ****** Archive Area End ****** -->
</body>
</html>