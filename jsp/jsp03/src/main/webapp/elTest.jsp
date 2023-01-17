<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%><!-- 표현언어 기능을 활성화하겠다는 명령 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다양한 표현언어에서 사용하는 데이터들.</title>
</head>
<body>
	<h2>표현언어로 여러가지 데이터 출력하기</h2>
	<h2>
		\${150} : ${150} <br><!-- \역슬래시를 붙이면 문자가 그대로 나옴 -->
		\${20+30} : ${20+30} <br>
		\${"안녕하세요"} : ${"안녕하세요"} <br>
		\${"50"+3 } : ${"50"+3 } <br> <!-- 문자로 숫자로 인식해서 계산된다. -->
		<%-- \${"안녕"+30} : ${"안녕"+30 }--%>
	</h2>
</body>
</html>