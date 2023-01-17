<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
    <jsp:useBean id="mem" class="jsp03.ex01.MemberBean" /> <!-- 객체생성 -->
    <jsp:setProperty property="*" name="mem"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="plum ">
		
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>주소</td>
		</tr>
		<tr>
			<td><%=mem.getId() %></td>
			<td><%=mem.getPwd() %></td>
			<td><%=mem.getName() %></td>
			<td><%=mem.getEmail() %></td>
		</tr>
		<tr> <!-- getter을 쓰지 않고 표현언어로 바로 접근할 수 있다. -->
			<td>${mem.id}</td>
			<td>${mem.pwd}</td>
			<td>${mem.name}</td>
			<td>${mem.email}</td>
		</tr>
	</table>
</body>
</html>