<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("utf-8");
    int dan=Integer.parseInt(request.getParameter("dan"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <table border="1" width="400">
      <tr align="center" bgcolor="#CEF279">
         <th colspan="2">** <%=dan %>단 **</th>      
      </tr>
      <% for(int i=1; i<=9; i++) { %>
      <tr align="center">
         <td width="200">
            <%=dan %>X<%=i %>
         </td>
         <td width="200">
            <%=dan*i %>
         </td>
      </tr>
      <%} %>
   </table>

   <a href='gugu.html'>단 입력하기</a>
   
</body>
</html>