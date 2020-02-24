<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="/maeggiSeggi/common/css/maeggiFonts.css" rel="stylesheet">

<style type="text/css">
* {
  margin: 0;
  padding: 0;
}
h4 {
	text-align: center;
}
</style>
</head>
<body style="font-family: PapyrusB;">
	<div class="row" style="margin-left: auto; margin-right: auto;">
		<div class="col-sm-6"
			style="background-color: lavender; margin-right: auto; padding: 0px">

			<h4>나에게 없는 재료 체크하기</h4>
			<fieldset style="text-align: center;">
				<h4>재료확인</h4>
				<input type="checkbox" name="food" value="양파">양파 <input
					type="checkbox" name="food" value="계란">계란 <input
					type="checkbox" name="food" value="오이">오이 <input
					type="checkbox" name="food" value="돼지고기">돼지고기 <input
					type="checkbox" name="food" value="치즈">치즈 <input
					type="checkbox" name="food" value="고추가루">고추가루<br /> <br />
				<br /> <br /> <input type="button" value="체크한 재료 모두 장바구니에 추가하기">
			</fieldset>
		</div>
		<div class="col-sm-5"
			style="background-color: lavenderblush; height: 800px;">
						<h4>주간 식단 추가</h4>

			<div>
				<input type="radio" name="time" value="아침">아침 
				<input type="radio" name="time" value="점심">점심 
				<input type="radio" name="time"	value="저녁">저녁
				<br /> <input type="button" value="칼로리 확인하기">
			</div>
			<div>
				<span>예상되는 칼로리</span> <strong>1200</strong> <span>kcal</span>
			</div>
			<input type="submit" value="식단에 추가하기">
		</div>
	</div>
	
</body>
</html>