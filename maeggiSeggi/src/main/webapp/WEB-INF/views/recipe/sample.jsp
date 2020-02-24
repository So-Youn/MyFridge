<%@page import="maeggi.seggi.recipe.RecipeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%  RecipeVO recipetest = (RecipeVO)session.getAttribute("recipeList"); 
	%>
	<div>
	<%=  recipetest.getName()%>
	<%=  recipetest.getRegister_date()%>
	<%=  recipetest.getContent_intro()%>

    </div>
<%-- 
            <c:forEach items="${recipeList}" var="recipeVO">
                <tr>
                    <td>${recipeList.amount_per_person}</td>
                    <td>${recipeList.name}</td>
                    <td>${recipeList.content_intro}</td>
                </tr>
            </c:forEach> --%>

</body>
</html>