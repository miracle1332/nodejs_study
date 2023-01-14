<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setAttribute("name", "이영희");
    	request.setAttribute("address", "서울시 중구");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request테스트</title>
</head>
<body><!-- 포워딩 바인딩 할것 -->
	<%
	RequestDispatcher dispatcher=request.getRequestDispatcher("request2.jsp");
	dispatcher.forward(request, response);
	%>
</body>
</html>