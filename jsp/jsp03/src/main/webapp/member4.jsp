<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jsp03.ex01.*"%>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
    <jsp:useBean id="mem1" class="jsp03.ex01.MemberBean" /> <!-- 객체생성 -->
    <jsp:setProperty property="*" name="mem1"/>
    <jsp:useBean id="memList" class="java.util.ArrayList"/><!-- => List memList = new ArrayList(); -->
    <%
    	MemberBean mem2 = new MemberBean("lyneen","moong1004^^","오혜린","lyneen@naver.com");
    	memList.add(mem1);
    	memList.add(mem2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="green">
		
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>주소</td>
		</tr>
		<tr>
			<td>${memList[0].id}</td>
			<td>${memList[0].pwd}</td>
			<td>${memList[0].name}</td>
			<td>${memList[0].email}</td>
		</tr>
		<tr align="center"> <!-- getter을 쓰지 않고 표현언어로 바로 접근할 수 있다. -->
			<td>${memList[1].id}</td>
			<td>${memList[1].pwd}</td>
			<td>${memList[1].name}</td>
			<td>${memList[1].email}</td>
		</tr>
	</table>
</body>
</html>