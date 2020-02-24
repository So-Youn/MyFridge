<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/stswebTest/advanced/multiInsert.do"
		enctype="multipart/form-data">
		아이디:<input type="text" name="id" ><br/>
		패스워드:<input type="text" name="pass" ><br/>
		성명:<input type="text" name="name" ><br/>
		주소:<input type="text" name="addr" ><br/>
		경력사항
		<input type="text" name="historys[0].num"/>
		<input type="text" name="historys[0].content1"/>
		<input type="text" name="historys[0].content2"/>
		<input type="text" name="historys[0].mydate"/>
		<input type="file" name="historys[0].myphoto"/><br/>
			<input type="text" name="historys[1].num"/>
		<input type="text" name="historys[1].content1"/>
		<input type="text" name="historys[1].content2"/>
		<input type="text" name="historys[1].mydate"/>
		<input type="file" name="historys[1].myphoto"/><br/>
			<input type="text" name="historys[2].num"/>
		<input type="text" name="historys[2].content1"/>
		<input type="text" name="historys[2].content2"/>
		<input type="text" name="historys[2].mydate"/>
		<input type="file" name="historys[2].myphoto"/><br/>
			<input type="text" name="historys[3].num"/>
		<input type="text" name="historys[3].content1"/>
		<input type="text" name="historys[3].content2"/>
		<input type="text" name="historys[3].mydate"/>
		<input type="file" name="historys[3].myphoto"/><br/>
		<input type="submit" value="전송">
	</form>
</body>
</html>