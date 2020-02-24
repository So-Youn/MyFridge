<%@page import="java.util.Calendar"%>
<%@page import="org.apache.tiles.request.Request"%>
<%@page import="maeggi.seggi.recipe.RecipeVO"%>
<%@page import="maeggi.seggi.loginandcustomer.memberVO"%>
<%@page import="maeggi.seggi.restaurant.RecipePlannerAddVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">
<script src="/maeggiSeggi/common/js/jquery/jquery-2.2.4.min.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-size: 30pt;
}
h4 {
	text-align: center;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#myform").submit( function(event){
		event.preventDefault();
	});
	$("#submit").on("click", function() {
		memId = "<%=session.getAttribute("id")%>";
		
			node = document.createElement("Input");
			node.setAttribute("name", "member_id");
			node.setAttribute("value", memId);
			$("#myform").append(node);
			$.ajax({
				url : "/maeggiSeggi/restaurant/add.do",
				type : "get",
				traditional : true,
				data : $("#myform").serializeArray(),
				success : function(data) {
					alert("장바구니 담기 성공");
				}
			});
			$("#myform").children().last().remove();
		});
	
	
	});
</script>
</head>
<body style="font-family: PapyrusB;">
	<%
		RecipeVO mealinfo = (RecipeVO) request.getAttribute("mealinfo");
	%>
	<div class="row" style="margin-left: auto; margin-right: auto;">
		<div class="col-sm-6"
			style="background-color: lavender; margin-right: auto; padding: 0px"
			id="test">
			<form id="myform" method="post">
				<h4>나에게 없는 재료 체크하기</h4>
				<fieldset style="text-align: center;">
					<h4>재료확인</h4>
					<input type="checkbox" name="addlist[0].ingredient_id"
						value="195465">양파
					<select name="addlist[0].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select>
					<input type="checkbox" name="addlist[1].ingredient_id"
						value="195464">계란 <select name="addlist[1].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select> <input type="checkbox" name="addlist[2].ingredient_id"
						value="195463">오이 <select name="addlist[2].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select> <input type="checkbox" name="addlist[3].ingredient_id"
						value="195462">돼지고기 <select name="addlist[3].ig_unit">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1근</option>
						<option value="2">2근</option>
						<option value="3">3근</option>
					</select> <input type="checkbox" name="addlist[4].ingredient_id"
						value="195461">치즈 <select name="addlist[4].ig_amount">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1개</option>
						<option value="2">2개</option>
						<option value="3">3개</option>
					</select> <input type="checkbox" name="addlist[5].ingredient_id"
						value="195460">고추가루<br /> <br /> <select
						name="addlist[5].ig_unit">
						<option value="" disabled selected hidden>=== 선택 ===</option>
						<option value="1">1통</option>
						<option value="2">2통</option>
						<option value="3">3통</option>
					</select> <br /> <br />
					<button type="button" id="submit">체크한 재료 모두 장바구니에 추가하기</button>
				</fieldset>
			</form>
		</div>
		<div class="col-sm-5"
			style="background-color: lavenderblush; height: 800px;">
			<h4>[주간 식단에 추가하기]</h4>
			<h3><%=mealinfo.getName()%></h3>
			<form action="/maeggiSeggi/mealPlanner/insert.do" name="mypopup" method="POST" accept-charset="UTF-8">
				<%
					Calendar today = Calendar.getInstance();
					int year = today.get(Calendar.YEAR);
					int month = today.get(Calendar.MONTH) + 1;
					int date = today.get(Calendar.DATE);
				%>
				<!-- 식단추가 컨트롤러로 날짜 전송하는 곳  -->
				<div>
					<select name="planner_date">
						<option value="" disabled selected>=== 등록할 날짜 선택 ===</option>
						<option value="<%= year %>-<%= month %>-<%= date+0 %>"><%= year %>-<%= month %>월 <%= date+0 %>일</option>
						<option value="<%= year %>-<%= month %>-<%= date+1 %>"><%= year %>-<%= month %>월 <%= date+1 %>일</option>
						<option value="<%= year %>-<%= month %>-<%= date+2 %>"><%= year %>-<%= month %>월 <%= date+2 %>일</option>
						<option value="<%= year %>-<%= month %>-<%= date+3 %>"><%= year %>-<%= month %>월 <%= date+3 %>일</option>
						<option value="<%= year %>-<%= month %>-<%= date+4 %>"><%= year %>-<%= month %>월 <%= date+4 %>일</option>
						<option value="<%= year %>-<%= month %>-<%= date+5 %>"><%= year %>-<%= month %>월 <%= date+5 %>일</option>
						<option value="<%= year %>-<%= month %>-<%= date+6 %>"><%= year %>-<%= month %>월 <%= date+6 %>일</option>
					</select>
				</div>
				<!-- 식단추가 컨트롤러로 식단 아침,점심,저녁  전송 하는 곳  -->
				<div>
					<input type="radio" name="planner_code" value="1">아침
					 <input type="radio" name="planner_code" value="2">점심
					 <input type="radio" name="planner_code" value="3">저녁
					 <br />
				</div>
				<!-- 칼로리 출력 및 칼로리 컨트롤러로 전송 하는 곳  -->
				<div>
					<span><%=mealinfo.getName()%> 칼로리 : <%=mealinfo.getKcal()%></span><span>kcal</span>
					<input type="hidden" name="kcal" value="<%=mealinfo.getKcal()%>" />
					<input type="hidden" name="meal_name" value="<%=mealinfo.getName()%>" />
					<input type="hidden" name="member_id" value="<%= session.getAttribute("id") %>" />
				</div>
				<input type="submit" value="식단에 추가하기" onclick="window.close()">
			</form>
		</div>
	</div>
</body>
</html>