<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
    <jsp:useBean id="memBean" class="jsp03.ex01.MemberBean" scope="page"/>
    <jsp:setProperty property="name" value="오혜린" name="memBean"/><!-- value값을 외부에서 받지 않고 직접세팅. -->
    <jsp:useBean id="memList" class="java.util.ArrayList" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empty연산자</title>
</head>
<body>
	\${empty memBean} : ${empty memBean} <br> <!-- memBean이 비어있으면 true를 반환, 아니면 false 반환 -->
	\${not empty memBean} : ${not empty memBean} <br>
	\${empty memList} : ${empty memList}  <br>
	\${not empty memList} : ${not empty memList} <br>
	\${empty "hello"} : ${empty "hello"} <br> 
	\${empty null} : ${empty null} <br> 
	\${empty ""} : ${empty ""} <br>
</body>

</html>