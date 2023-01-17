<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>
	<form action="result.jsp">
		아이디<input type="text" name="id"><br> <!-- result.jsp실제로 만들지 않음. -->
		비밀번호<input type="password" name="pw"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="다시입력">
		<br>
		<!--
			<a href="/jsp03/memberForm.html">회원가입하기</a>
		-->
		<a href="${pageContext.request.contextPath}/memberform.html">회원가입하기</a>
	</form>
</body>
</html>