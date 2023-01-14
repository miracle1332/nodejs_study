<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name="홍길동";
	public String getName() {
		return name;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 스크립트 요소</title>
</head>
<body>
	<h1>안녕하세요 <%=name %> 님!</h1>
	<p>저희 홈페이지를 방문해주셔서 <%=getName()%> 님 반갑습니다.</p>
	
</body>
</html>