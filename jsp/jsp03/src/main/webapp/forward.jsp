<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	request.setAttribute("address", "서울시 종로구");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ㅍ표현언어를 이용한 포워딩 실습</title>
</head>
<body>
	<jsp:forward page="member2.jsp"></jsp:forward>
</body>
</html>