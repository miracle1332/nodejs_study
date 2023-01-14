<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name="이영희";
	String height="175cm";
%>
<%
	String age=request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신상정보 출력</title>
</head>
<body>
	<h1>신상정보출력</h1>
	<h2>이름 : <%=name %></h2>
	<h2>나이 : <%=age %></h2>
	<h2>십년 후 나이 : <%=Integer.parseInt(age)+10 %></h2>
	<h2>키 : <%=height %></h2>
</body>
</html>