 <%@page import="jsp03.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jsp03.ex01.*"%>
    <%
    	request.setCharacterEncoding("utf-8");
 		MemberBean member = new MemberBean("lee","2222","이영애","lee@naver.com");
 		request.setAttribute("member", member);//생성된 member객체를 member라는 이름으로 속성을 세팅해서 바인딩후 member9.jsp로 포워딩합니다. 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberBean객체를 활용한 포워딩</title>
</head>
<body>
	<jsp:forward page="member9.jsp"/>
</body>
</html>