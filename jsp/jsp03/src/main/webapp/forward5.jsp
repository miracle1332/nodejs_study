<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jsp03.ex01.*, java.util.*"%>
<%  request.setCharacterEncoding("utf-8");
	request.setAttribute("id", "son");
	request.setAttribute("pwd", "1234");
	session.setAttribute("name", "손흥민");
	application.setAttribute("email", "son@naver.com");
	request.setAttribute("address", "서울시 종로구");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반적인 포워딩
</title>
</head>
<body>
	<jsp:forward page="member11.jsp"/>
</body>
</html>