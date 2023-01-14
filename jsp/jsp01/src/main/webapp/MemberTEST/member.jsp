<%@page import="java.util.List"%>
<%@page import="jsp01.ex02.MemberDAO"%>
<%@page import="jsp01.ex02.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jsp01.ex02.*"
    %><!-- *는 모든걸 뜻한다. -->
<%
   request.setCharacterEncoding("utf-8");
   String _name=request.getParameter("name");
   MemberVO vo=new MemberVO();
   vo.setName(_name);
   MemberDAO dao=new MemberDAO();
   List memberList=dao.listMembers(vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력 창</title>
</head>
<body>
   <h2>회원 정보 출력</h2>
   <table border="1" align="center">
      <tr align="center" bgcolor="lightgreen">
         <td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일자</td>
      </tr>
      <%
         for(int i=0; i<memberList.size(); i++) {
            MemberVO _vo=(MemberVO)memberList.get(i);
            String id=_vo.getId();
            String pwd=_vo.getPwd();
            String name=_vo.getName();
            String email=_vo.getEmail();
            Date joinDate=_vo.getJoinDate();
      %>
      <tr align="center">
         <td><%=id %></td><td><%=pwd %></td><td><%=name %></td><td><%=email %></td><td><%=joinDate %></td>
      </tr>
      <%
         }
      %>
   </table>
</body>
</html>