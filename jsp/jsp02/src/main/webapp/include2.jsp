<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 2</title>
</head>
<body>
	<h1>안녕하세요 제 반려견입니다</h1>
	<jsp:include page="vsImage.jsp" flush="true">
		<jsp:param value="뭉이" name="name"/>
		<jsp:param value="logo_moong.jpg" name="imgName"/>
	</jsp:include>
	<h2>정말 귀엽고 천사인 강아지 뭉이</h2>
</body>
</html>