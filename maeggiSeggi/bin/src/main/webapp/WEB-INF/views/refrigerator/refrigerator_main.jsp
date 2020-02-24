<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>매끼세끼 - 마이 냉장고</title>

    <!-- CSS -->
    <link href="/maeggiSeggi/common/css/refrigerator.css" rel="stylesheet">
    <link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
    
</head>

<body class="bg-amond">

	<!-- ******Refrigerator Area Start ****** -->
	<div class="fridge-area">
		<div class="col-12">
			<!-- ****** Theme Select Area Start ****** -->
			<div class="button-area col-1">
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="/maeggiSeggi/images/harvest.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="/maeggiSeggi/images/ingredients.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="/maeggiSeggi/images/sugar.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="/maeggiSeggi/images/recipe-book.png">
				</button>
				<button class="btn btn-orange btn-fill-vert-o">
					<img class="theme-btn" src="/maeggiSeggi/images/picnic.png">
				</button>
			</div>
			<!-- ****** Theme Select Area End ****** -->
			<!-- ****** Ingredient Select Area Start ****** -->
			<div class="refrigerator-area col-5" id="selectIngredientBox">
				<form class="select-wrapper" name="ingrediennt_select_form"
					method="POST" action="">
					<ul class="sort-list">
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>계란</p>
							</div>
						</li>
						<li>
							<div class="" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>쌀</p>
							</div>
						</li>
					</ul>
				</form>
			</div>
			<!-- ****** Ingredient Select Area End ****** -->

			<!-- ****** My Fridge Area Select Area End ****** -->
			<div class="refrigerator-area col-5">
				<div class="fridge-wrapper">
					<img id="fridge-image" src="/maeggiSeggi/images/refrigerator.png">
					<!-- 냉장고 div로 배경이미지를 넣거나 border 속성으로 구분.. -->
					<ul class="list-scroll fridge-list">
						<!-- 동적으로 추가되어야 함 -->
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_1" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_2" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_3" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_4" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
						<li>
							<div class="fridge-li" id="ingredient_5" draggable="true">
								<img src="/maeggiSeggi/images/ingredients.jpg">
								<p>토마토</p>
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>
	</div>
    
</body>
</html>