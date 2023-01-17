<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jsp03.ex01.*, java.util.*"%>
<%  request.setCharacterEncoding("utf-8");
    	List memberList = new ArrayList();
    	MemberBean member1 = new MemberBean("lee","2222","이영애","lee@naver.com");
    	MemberBean member2 = new MemberBean("park","2332","박지성","park@naver.com");
    	memberList.add(member1);
    	memberList.add(member2);
    	request.setAttribute("memberList", memberList);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반적인 포워딩
</title>
</head>
<body>
	<jsp:forward page="member10.jsp"/>
</body>
</html>