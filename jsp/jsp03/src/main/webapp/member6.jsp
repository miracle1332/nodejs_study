<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
    <jsp:useBean id="mem1" class="jsp03.ex01.MemberBean" /> <!-- 객체생성 -->
    <jsp:setProperty property="*" name="mem1"/>
    <jsp:useBean id="addr" class="jsp03.ex01.Address"/>
    <jsp:setProperty property="city" name="addr" value="서울"/>
    <jsp:setProperty property="zipcode" name="addr" value="10022"/>
    <%
    	mem1.setAddr(addr);//memberBean클래스의 addr속성에 위에서 설정한 addr값을 세팅하는것.
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="coral">
		
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>거주시</td><td>우편번호</td>
		</tr>
		<tr align="center">
			<td>${mem1.id}</td>  
			<td>${mem1.pwd}</td>
			<td>${mem1.name}</td>
			<td>${mem1.email}</td>
			<td>${mem1.addr.city}</td> <!--=mem1.getAddr().getCity()%> -->
			<td>${mem1.addr.zipcode}</td>
		</tr>
	</table>
</body>
</html>