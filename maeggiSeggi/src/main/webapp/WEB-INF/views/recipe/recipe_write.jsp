<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
<link href="/maeggiSeggi/common/css/recipe_write.css" rel="stylesheet">
<script type="text/javascript" src="/maeggiSeggi/common/js/recipe_write.js" ></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>

<body style="margin-left: 15%; margin-right: 10%;">
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#"><i
								class="fa fa-home" aria-hidden="true"></i><b>Home</b></a></li>
						<li class="breadcrumb-item active" aria-current="page"><b>RECIPE</b></li>
						<li class="breadcrumb-item active" aria-current="page"><b>레시피
								등록하기</b></li>
					</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<h1>레시피 작성</h1>
	<br>
	<br>
	
	
		<form id="myform" class="form-horizontal" action="/maeggiSeggi/recipe/recipe_write.do" method="POST" enctype="multipart/form-data">
			<p><b>제목  </b></p>
			<input type="text" id="name" name="name" style="width: 80%;" placeholde="레시피 제목을 입력해주세요" />
			
			<p><b>레시피 요약  </b></p>
			<input type="text" id="content_intro" name="content_intro" style="width: 80%;" placeholde="본인의 레시피를 간단히 표현해 주세요" />
			
			<div>
				<p>
					<b>카테고리  </b>
				</p>
				<div class="selectbox">
					<select id="select_ctry" name="recipe_category">
						<option selected>테마별</option>
						<option>한식</option>
						<option>퓨전</option>
						<option>서양/이탈리아</option>
						<option>중국/동남아시아</option>
						<option>일본</option>
					</select>
				</div>
				<div class="selectbox" >
					<select id="select_sort" name="food_category">
						<option selected>종류별</option>
						<option>메인 반찬</option>
						<option>피자/디저트</option>
						<option>찜/찌개/전골/국</option>
						<option>밥</option>
						<option>만두/면류</option>
						<option>나물/생채/샐러드</option>
					</select>
				</div>
			</div>
			<p>
				<b>요리 정보</b>
			</p>
			<span>인원 :</span>
			<div class="selectbox">
				<select id="amount_per_person" name="amount_per_person">
					<option selected>인분</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>


			<span>조리 시간 :</span>
			<div class="selectbox">
				<select id="cook_time" name="cook_time">
					<option selected>분</option>
					<option>10</option>
					<option>20</option>
					<option>30</option>
					<option>40</option>
					<option>50</option>
					<option>1</option>
				</select>
			</div>
			<span>요리 난이도:</span>
			<div class="selectbox">
				<select id="cook_level" name="cook_level">
					<option selected>난이도</option>
					<option>초보환영</option>
					<option>중급</option>
					<option>어려움</option>
				</select>
			</div>
			<br/>
			<span>예상 칼로리</span>
			<div class="selectbox">
				<select id="kcal" name="kcal">
					<option selected>kcal</option>
					<option>250</option>
					<option>500</option>
					<option>800</option>
					<option>1000</option>
				</select>
			</div>
			<span>예상 가격대</span>
			<div class="selectbox">
				<select id="price" name="price">
					<option selected>가격(원)</option>
					<option>5000</option>
					<option>10000</option>
					<option>30000</option>
					<option>50000</option>
				</select>
			</div>
			
			<br />
			<br />
			
				<p><b>재료</b></p>
				<div id="sort" >
				  <input type="radio" class="ig_option" name="ig_option" id="main" value="주재료"> 주재료
				  <input type="radio" class="ig_option" name="ig_option" id="sub" value="부재료" > 부재료
				  <input type="radio" class="ig_option" name="ig_option" id="side" value="양념" > 양념
				</div>
				<div id="ig_content">
				<div id="ig_main_Add" class="ig_main_Add">
					<label for="ingredient">재료 이름:</label> 
						<input type="text" id="ingredient" name="ig_detail[0].name" placeholder="예)돼지고기">&ensp;&ensp;&ensp; 
					<label for="ingredientAmount">계량 정보 :</label> 
						<input type="text" id="ingredientAmount" name="ig_detail[0].volume" placeholder="예)200 [모든 단위는 g 기준]">
					<input name="ig_detail[0].ig_type_name" value="주재료" style="display:none;">
					
					<button type="button" class="btn btn-default" aria-label="Left Align" onclick="remove_div()">
  					<i class="fas fa-minus-circle fa-2x" style="color:gray;float:left;"></i></button>
				</div>
				
<!-- 				<div id="ig_side_Add" class="ig_side_Add">
				<label for="ingredient">재료 이름:</label> 
					<input type="text" id="side_ingredient" name="ig_detail[0].name" placeholder="예)고추장">&ensp;&ensp;&ensp; 
				<label for="ingredientAmount">계량 정보 :</label>
				 	<div class="selectbox">
						<select id="select" name="ig_detail[0].volume" >
							<option selected>양념</option>
							<option>약간</option>
							<option>적당량</option>
						</select>
					</div> 
					<button type="button" id="ig_option_minus"  class="btn btn-default" aria-label="Left Align" onclick="remove_div(this)">
  						<i class="fas fa-minus-circle fa-2x" style="color:gray;"></i></button>
					</div> -->
				</div>	
				
				<div id="group"></div>
				
				 <div>
					<button type="button" id="ig_option_plus" class="btn btn-default" aria-label="Left Align" onclick="add_div()">
	  					<i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
  				</div>
  				<br/>
  		
  			<p><b>요리 순서</b></p>
  			
  			<div class="form-group">
			    <label for='ControlTextarea'>step1
			    	<input name="recipe_detail[0].recipe_order_num" value="1" style="display:none">
			    </label>
			    <textarea class="form-control" id="ControlTextarea" name="recipe_detail[0].recipe_describe" rows="5"></textarea>
  			</div>
  			<div id="content"></div>
  			<div>
  			  <button type="button" id="recipe_plus" class="btn btn-default" onclick="add_content()">
	  					<i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
  			</div>
  			<br/>
  			
  			
  			
  			<p><b>요리 사진</b></p>
  			
 			<div class="jumbotron">
	 			<div id="imginsert">
	 				<label style="color:gray";>다수의 파일 업로드가 가능합니다.</label><br/>
		  			<input type="file" id="real-input" name="myphoto" class="image_inputType_file" accept="image/*" required multiple><br/>
		  		</div>
	  		</div>

  			 
  			
		<input id="register" type="submit" value="레시피 등록">
		</form>

			<input id="cancle" type="button" value="등록 취소">
		
	
	<br />
	<br />
<script type="text/javascript">
$(document).ready(function(){
	var result = "rec" + Math.floor(Math.random() * 10000000);
	
	var input = $("<input name='recipe_id' value='" + result + "' style='display:none;'>");
	$("#myform").append(input);
})

</script>

</body>
</html>