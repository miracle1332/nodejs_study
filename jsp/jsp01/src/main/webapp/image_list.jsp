<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%! String[] pro_name={"냉장고","컴퓨터","에어컨","청소기","세탁기"}; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품정보 리스트</h2>
	<table border="1">
		<tr>
			<th>상품이미지</th><th>상품이름</th><th>선택하기</th>
		</tr>
		<%
			for(int i=0; i<6; i++) {
		%>
		<tr>
			<th><img src="images/<%=i %>.png" alt=""></th>
			<td><%=pro_name[i]%></td>
			<td><input name="chk<%=i %>"  type="checkbox"></td>
		</tr>
			<%
			}
			%>
	</table>
</body>
</html>