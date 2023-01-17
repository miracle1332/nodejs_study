<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title><!-- 표현언어로 자료를 넘겨받아서 응답하는것(db없이) -->
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightpink">
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td>
		</tr>
		<tr>
			<td>${param.id}</td>
			<td>${param.pwd}</td>
			<td>${param.name}</td>
			<td>${param.email}</td>
		</tr>
	</table>
</body>
</html>