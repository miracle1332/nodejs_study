<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, jsp02.ex01.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memBean" class="jsp02.ex01.MemberBean" scope="page"/><!-- useBean은 set,getProperty와 보통 함께 사용한다. -->

<% 
	String command = request.getParameter("command");
	MemberDAO memDao = new MemberDAO();
	if(command != null && command.equals("addMember")) {
%>
<jsp:setProperty property="id" name="memBean" /><!-- param태그는 겟파라미터를 가지고 있다 form name과같아야함 -->
<jsp:setProperty property="pwd" name="memBean" /><!-- property는 memberBean의 필드와 일치!중요 -->
<jsp:setProperty property="name" name="memBean" /><!-- ★property의 속성과 form의 name(날라온 파라미터값)과 같으면 param생략가능!! -->
<jsp:setProperty property="email" name="memBean"/>
<%
		memDao.addMember(memBean);
	}else if(command != null && command.equals("delMember")) {
		String id = request.getParameter("id");
		memDao.delMember(id);
	}
	List memberList = memDao.listMembers();
%>
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
	 <%
	 	if(memberList.size() == 0) { //데이터가 없는 새 데이터면 이 조건을 만족할 것.(한번도 회원가입을 안했다면)		
	 %>
	 	<tr>
	 		<td colspan="6">아직 등록된 회원이 없습니다.</td>
	 	</tr>
	 <%
	 	}else {
	 		for(int i=0; i<memberList.size(); i++){
	 			MemberBean mbean =(MemberBean)memberList.get(i);//
	 %>
		 <tr align="center">
		 	<td><%=mbean.getId() %></td>
		 	<td><%=mbean.getPwd() %></td>
		 	<td><%=mbean.getName() %></td>
		 	<td><%=mbean.getEmail() %></td>
		 	<td><%=mbean.getJoinDate() %></td>
		 	<td><a href="/jsp02/member5.jsp?command=delMember&id=<%=mbean.getId() %>">삭제</a></td>
		 </tr>
	<%
	 		} //for문 종료
	 	} //if문 종료
	%>
	</table>
	<a href="/jsp02/memberForm.html">새 회원 등록하기.</a>
</body>
</html>