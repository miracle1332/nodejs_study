<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jsp02.ex01.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memBean" class="jsp02.ex01.MemberBean" scope="page"/><!-- useBean은 set,getProperty와 보통 함께 사용한다. -->
<jsp:setProperty property="*" name="memBean" /> <!-- form의 속성 모든 이름을 memBean과 같으면 알아서 넣어줌-->
 
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>회원목록창</title>
</head>
<body>
	<table align="center" border="1">
		 <tr align="center" bgcolor="lightblue">
			<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td><td>삭제</td>	 
		 </tr>
		 <tr align="center"><!-- mem -->
		 	<td><jsp:getProperty name="memBean" property="id"/></td>
		 	<td><jsp:getProperty name="memBean" property="pwd"/></td>
		 	<td><jsp:getProperty name="memBean" property="name"/></td>
		 	<td><jsp:getProperty name="memBean" property="email"/></td>
		 </tr>
	</table>
	<a href="/jsp02/memberForm.html">새 회원 등록하기.</a>
</body>
</html>