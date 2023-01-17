<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	String id=(String)request.getAttribute("id");
    	String pwd=(String)request.getAttribute("pwd");
    	String name=(String)session.getAttribute("name");
    	String email=(String)application.getAttribute("email");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="red">
		
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td>
		</tr>
		<tr align="center">
			<td><%=id %></td>
			<td><%=pwd %></td>
			<td><%=name %></td>
			<td><%=email %></td>
		</tr>
	</table>
</body>
</html>