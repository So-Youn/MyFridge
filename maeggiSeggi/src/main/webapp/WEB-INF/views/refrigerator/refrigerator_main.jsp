<%@page import="maeggi.seggi.fridge.FridgeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <link href="/maeggiSeggi/common/css/refrigerator.css" rel="stylesheet">
    <link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
    <link rel="stylesheet" href="/maeggiSeggi/common/css/wow-alert.css">
    
    <!-- JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <script src="/maeggiSeggi/common/js/wow-alert.js"></script>
    <script type="text/javascript">
	    var fridgeList;
	    
	    $(document).ready(function() {
	    	var memId = '<%= session.getAttribute("id") %>';
	    	
	    	//냉장고 관리 모달 창 열기
	    	addDataToModal(memId);
	    	
	    	//냉장고 추가 제거
	    	manageFridge(memId);
	    	
	    	//냉장고 추가
	    	addFridge(memId);
	    	
	    	//메인 냉장고 설정
	    	setMainFridge();
	    	
	    	//드래그
	    	drag();
	    	//드랍
	    	drop();
	    });
	    
	    function addDataToModal(id) {
			$(".modal-btn").on("click", function() {
				$("#fridge_modal").modal({
					escapeClose: false,
					clickClose: false,
					showClose: false
				})
				
				$.ajax({
					url:"/maeggiSeggi/refrigerator/ajax_fridge.do",
					async: false,
		    		type:"get",
		    		data: {
		    			"id": id
		    			},
		    		success: function(data) {
						fridgeList = data;
					}
				});

				var div = $("<div id='check_box'></div>");
				var radio = "";
				var mydiv = "";
				
				if(fridgeList.length == 0) {
					radio = "<input type='radio' name='distinct_code' id='' value='0'>";
					mydiv = "<div class='fridge-img-div'><img class='fridge-img-ico' src='/maeggiSeggi/images/refrigerator.png'><input name='addF' type='text' maxlength='5' placeholder='냉장고 이름을 입력하세요.'></div>";
				} else {
					for (var i = 0; i < fridgeList.length; i++) {
						radio += "<input type='radio' name='distinct_code' id='" + fridgeList[i].refrigerator_id + "' ";
						if(fridgeList[i].distinct_code == '1') {
							radio += "checked=true value='1'>";
						}
						else radio += "value='0'>";	
						
						mydiv += "<div class='fridge-img-div'><img class='fridge-img-ico' src='/maeggiSeggi/images/refrigerator.png'><p>#" + fridgeList[i].name + "<br/>냉장고</p></div>";
					}
				}
				
				div.append(radio);
				$("#manage_fridge").empty();
				$("#manage_fridge").append(div);
				$("#manage_fridge").append(mydiv);
			});
		}
	    
	    function manageFridge(id) {
	    	$(".plus-btn").each(function() {
	    		$(this).on("click", function() {
	    			if($("input[name=addF]").length) {
	    				alert("아직 등록되지 않은 냉장고가 있습니다!");
	    				return;
	    			}
	    			
	    			if($(this).attr("title") == "냉장고 추가") {
	    				mycheck = "<input type='radio' name='distinct_code'>";
	    				mydiv = "<div class='fridge-img-div'><img class='fridge-img-ico' src='/maeggiSeggi/images/refrigerator.png'><input name='addF' type='text' maxlength='5' placeholder='냉장고 이름을 입력하세요.'></div>";
	    				$("#check_box").append(mycheck);
	    				$("#manage_fridge").append(mydiv);
	    			} else if($(this).attr("title") == "냉장고 제거") {
	    				var name = prompt("어떤 냉장고를 삭제하시겠습니까?","냉장고의 이름을 입력하세요");
	    				
	    				$.ajax({
	    					url:"/maeggiSeggi/refrigerator/ajax_fridge_delete.do",
	    					type:"post",
	    					dataType:"text",
	    					data: {
	    						"member_id":id,
	    						"name":name
	    					},
	    					success:function(data) {
	    						alert(data);
	    						
	    						if($("#manage_fridge").children("div").length == 1) return;
	    	    				$("#manage_fridge").children("div").last().remove();
	    	    				$("#check_box").children("input").last().remove();
	    					},
	    					fail:function(data) {
	    						alert(data);
	    					}
	    				});
	    			}
	    		})
	    	})
	    }
	    
	    function addFridge(id) {
	    	$(document).on("keydown",$("input[name=addF]"),function(key){
	    		if(key.keyCode == 13) {
	    			var text = $("input[name=addF]").val();
	    			var node = $("<p></p>");
	    			node.html("#" + text + "<br/>냉장고");
	    			$("#manage_fridge").children("div").last().append(node);
	    			
	    			//db저장
	    			$.ajax({
	    				url:"/maeggiSeggi/refrigerator/ajax_fridge_insert.do",
	    				type:"post",
	    				dataType:"text",
	    				data: {
	    					"member_id":id,
	    					"name":text,
	    					"distinct_code":0
	    				},
	    				success: function(data) {
	    					alert(data);
	    					//db 저장 끝난 후 지움
	    	    			$("input[name=addF]").remove();
	    				},
	    				fail: function(data) {
							alert(data);
						}
	    			});
	    		}
	    	});
	    }
	    
	    function setMainFridge() {
			$(document).on("click", "input[name=distinct_code]", function() {
				$("#check_box").find("input").not($(this)).val("0");
				if($(this).is(":checked")) {
					$(this).val("1");
				} else {
					$(this).val("0");
				}
				
				var inputList = $("#check_box").children("input");
				var message ="";

				for (var i = 0; i < inputList.length; i++) {
					$.ajax({
						url:"/maeggiSeggi/refrigerator/ajax_update_main.do",
						async: false,
						type:"post",
						dataType:"text",
						data: {
							"refrigerator_id": $(inputList[i]).attr('id'),
							"distinct_code": $(inputList[i]).val()
						},
						success:function(data) {
							message = data;
						},
						fail:function(data) {
							message = data;
						}
					});
				}
				alert(message);
			});
			
			$("#modalClose").on("click", function() {
				location.href = "/maeggiSeggi/refrigerator/fridge.do";
			});
		}
	    
	    function drag() {
	    	$(document).on("dragstart",$("#ig_list"),function(e) {
	    		target_clone = $(e.target).clone();
	    		$(target_clone).attr("draggable", "false");
	    	});
	    }
	    function drop() {
	    	$(document).on("dragover",$("#fridge"),function(e) {
	    		e.preventDefault();
	    	});
	    	
	    	$(document).on("drop",$("#fridge"),function(e) {
	    		var amount = prompt("얼마나 저장하시겠습니까? ","재료의 양을 입력하세요. ex) 100g, 10개 등)");
	    		//$("#fridge").children("li>div").find("#" + target_clone.find("div").attr("id")).
	    		if(amount != null) {
	    			var p = $("<p draggable='false'>" + amount + "</p>");
		    		target_clone.append(p);
		    		$("#fridge").append(target_clone);	
	    		}
	    	})
	    }
	    
    </script>
    <script src="/maeggiSeggi/common/js/l_fridge.js"></script>
</head>

<body class="bg-amond">
	<!-- ******Refrigerator Area Start ****** -->
	<div class="fridge-area">
		<button class="save-btn fridge-btn btn-orange btn-fill-vert-o">
			<p>삭제</p>
		</button>
		<button class="save-btn fridge-btn btn-orange btn-fill-vert-o">
			<p>저장</p>
		</button>
		<div class="col-12">
			<!-- ****** Theme Select Area Start ****** -->
			<div class="button-area col-1">
				<button class="ig-btn fridge-btn btn-orange btn-fill-vert-o">
					<p>주재료</p>
				</button>
				<button class="ig-btn fridge-btn btn-orange btn-fill-vert-o">
					<p>부재료</p>
				</button>
				<button class="ig-btn fridge-btn btn-orange btn-fill-vert-o">
					<p>양념</p>
				</button>
				<!-- <a class="modal-btn fridge-btn btn-orange btn-fill-vert-o" type="button">레시피</a> -->
				<a class="modal-btn fridge-btn btn-orange btn-fill-vert-o" href="#fridge_modal">냉장고</a>
			</div>
			<!-- ****** Theme Select Area End ****** -->
			<!-- ****** Ingredient Select Area Start ****** -->
			<div class="refrigerator-area col-5" id="selectIngredientBox">
				<form class="select-wrapper" name="ingrediennt_select_form"
					method="POST" action="">
					<ul id="ig_list" class="sort-list">
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
					</ul>
				</form>
				<div id="input_search">
					<input type="text" placeholder="재료명을 입력하세요.">
					<a><i class="fa fa-search fa-2x" aria-hidden="true"></i></a>
				</div>
			</div>
			<!-- ****** Ingredient Select Area End ****** -->
			
			<!-- ****** My Fridge Area Select Area End ****** -->
			<div class="refrigerator-area col-5">
				<div class="fridge-wrapper">
					<img id="fridge-image" src="/maeggiSeggi/images/refrigerator.png">
					<!-- 냉장고 div로 배경이미지를 넣거나 border 속성으로 구분.. -->
					<ul id="fridge" class="list-scroll fridge-list">
						<!-- 동적으로 추가되어야 함 -->
					<c:forEach items="${detail}" var="ig">
						<li class='draggable' draggable='false'>
							<div value='${ig.get("INGREDIENT_ID")}' draggable='false'>
						<c:choose>
							<c:when test='${ig.get("IG_TYPE_NAME") == "주재료"}' >
								<img src='/maeggiSeggi/images/l_dish.png' draggable='false'>
							</c:when>
							<c:when test='${ig.get("IG_TYPE_NAME") == "부재료"}'>
								<img src='/maeggiSeggi/images/l_soup.png' draggable='false'>
							</c:when>
							<c:otherwise>
								<img src='/maeggiSeggi/images/l_chili-sauce.png' draggable='false'>
							</c:otherwise>
							<%-- <c:when test='${ig.get("IG_TYPE_NAME") == "양념"}'>
								<img src='/maeggiSeggi/images/l_chili-sauce.png' draggable='false'><p draggable='false'>${ig.get("NAME")}</p></div>
							</c:when> --%>
						</c:choose>
								<p draggable='false'>${ig.get("NAME")}</p>
							</div>
							<p draggable='false'>${ig.get("IG_AMOUNT")}</p>
						</li>
					</c:forEach>
					</ul>
				</div>
				<% 
					FridgeVO fridge = (FridgeVO)request.getAttribute("main"); 
					if(fridge == null) {
				%>
				<p id="fridge_name">메인 냉장고를 추가하세요!</p>
				<% } else { %>
				<p id="fridge_name" value='<%= fridge.getRefrigerator_id() %>'><b><%= fridge.getMember_id() %></b> 님의 <b>#<%= fridge.getName() %></b> 냉장고</p>
				<% } %>
			</div>

		</div>
	</div>
	
	<div id="formDiv"></div>
    
    <!-- 모달 창입니다 ---------------------------------------------------------------------- -->
    <div id="fridge_modal" class="modal" role="dialog" aria-hidden="true">
    	<div id="manage_fridge">
    		<div id="check_box">
    		</div>
    		<div class="fridge-img-div">
  				<img class="fridge-img-ico" src="">
  				<p></p>
  			</div>
    	</div>
    	
    	<div id="pm-btn">
    		<button class="plus-btn" title="냉장고 추가"><i class="fas fa-plus-circle fa-2x" style="color:orange;"></i></button>
    		<button class="plus-btn" title="냉장고 제거"><i class="fas fa-minus-circle fa-2x" style="color:gray;"></i></button>
    	</div>
  		<a id="modalClose" href="#" class="" rel="modal:close" style="padding-left: 95%; position: static;">Close</a>
	</div>
</body>

