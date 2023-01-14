<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int score = Integer.parseInt(request.getParameter("score"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수변환</title>
</head>
<body>
	<h2>시험점수 : <%=score %></h2>
	<%
		if(score >= 90) {
	%>	
	<p>등급 : A </p>
	<% }else if(score >= 80) { %>
	<p>등급 : B</p>
	<% }else if(score >= 70) { %>
	<p>등급 : C</p>
	<% }else if(score >= 60) { %>
	<p>등급 : D</p>
	<% }else{ %>
	<p>등급 : F</p>
	<%} %>
	<a href="score.html">시험점수 입력창으로 이동하기</a>
</body>
</html>