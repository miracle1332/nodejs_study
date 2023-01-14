<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String name = (String)session.getAttribute("name");
    	String address = (String)application.getAttribute("address");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스코프 테스트</title>
</head>
<body>
	<h2>이름은 <%=name %>입니다.</h2>
	<h2>주소은 <%=address %>입니다.</h2>
</body>
</html>