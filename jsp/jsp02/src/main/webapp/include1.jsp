<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 1</title>
</head>
<body>
	<h1>안녕하세요 제 반려자입니다</h1>
	<jsp:include page="vsImage.jsp" flush="true">
		<jsp:param value="정현규" name="name"/>
		<jsp:param value="정현규.jpg" name="imgName"/>
	</jsp:include>
	<h2>성격이 안좋습니다.</h2>
</body>
</html>