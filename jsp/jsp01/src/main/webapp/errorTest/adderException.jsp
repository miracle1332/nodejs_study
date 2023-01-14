<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러페이지</title>
</head>
<body>
	<h2><%=exception.getMessage() %></h2>
	<h2><%=exception.toString() %></h2> <!-- 에러 처리내용을 보여주는 스트링 -->
	<h2>숫자만 입력해주세요. 다시 입력 바랍니다.</h2>
	<a href="adder.html">다시하기.</a>
</body>
</html>