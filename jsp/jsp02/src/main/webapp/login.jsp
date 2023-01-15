<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><!-- db사용 안함 여기서는 -->
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창 - result.jsp과 연결 / </title>
</head>
<body>
<%
	String msg = request.getParameter("msg");
	if(msg != null) {
%>
	<h2><%=msg %></h2>
<% 
	}
%>
	<form action="result.jsp" method="post">
		아이디 : <input tpye="text" name="user_id"><br>
		비번 : <input type="text" name="user_pw"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="재입력">
	</form>
</body>	
</html>