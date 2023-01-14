<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   String user_id = request.getParameter("user_id");
   String user_pw = request.getParameter("user_pw");
%> <!-- 스크립틀릿 기호 - 순수자바표현만 가능 밖에는 html처럼 쓰면 됨-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립틀릿 연습!</title>
</head>
<body>
   <%
      if((user_id == null || user_id.length() == 0) || (user_pw == null || user_pw.length() == 0)) {
   %>
   <h2>아이디와 비밀번호는 필수입니다. 입력해주세요.</h2>
   <a href='login.html'>로그인하기</a>
   <%
      }else if(user_id.equals("admin")) {
   %>
   <h2>관리자로 로그인하였습니다</h2>
   <a href='#'>회원정보수정하기</a><br><a href='#'>회원정보삭제하기</a>
   <%
      }else {
   %>
   <h2>환영합니다 <%=user_id %> 님!!</h2>
   <%
      }
   %>
</body>
</html>