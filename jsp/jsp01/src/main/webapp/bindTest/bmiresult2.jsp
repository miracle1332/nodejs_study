<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
   request.setCharacterEncoding("utf-8");
   String name=request.getParameter("name");
   int height=Integer.parseInt(request.getParameter("height"));   
   int weight=Integer.parseInt(request.getParameter("weight"));
   int standard=(int)((height-100)*0.9);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비만도 결과</title>
</head>
<body>
   <% //null이 아니지만 길이가 0일수도 있다
      if(name != null && name.length() != 0) {//||(or)를 쓰게되면 둘중에 하나라도 참이게 되면 if 문이 수행된다. &&는 둘 다 반드시 참이여야수행이된다.
         //name이 null이 아니고 name의 길이가 0 이 아니여야만 참이 되어서 실행문이 실행된다.
         //만약 ||로 써서 name이 null이 아닌것 하나의 조건만이 참이 되면 이 실행문이 실행되기때문에 이름을 입력하지 않아도 이름이 null값이 아니기만 해도 수행된다 
         if(weight > standard+5) {
   %>      
                  <h2><% out.print(name + "님 몸무게는 " + weight + "kg이며 비만입니다.");%></h2>
            <% 
               }else if(weight < standard-5) {
            %>
                  <h2><% out.print(name + "님 몸무게는 " + weight + "kg이며 정상입니다.");%></h2>
            <% 
               }else {
            %>
                  <h2><% out.print(name + "님 몸무게는 " + weight + "kg이며 저제충입니다.");%></h2>
            <% 
               }
      }else {
   %>
         <h2>이름을 입력하세요.</h2>
         <a href='bmi.jsp'>비만도 체크로 이동</a>
   <%
      }
   %>
   
   
   
</body>
</html>