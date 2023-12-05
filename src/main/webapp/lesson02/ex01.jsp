<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML 주석 -->
	<%-- JSP 주석 --%>
<% 
	//자바 문법 시작
	// scriptlet
	int sum = 0 ;
	for(int i = 0 ; i <= 10 ; i++){
		sum += i;
	}
	
%>
	<b>합계 : </b>
	<input type="text" value ="<%= sum %>">
	<br>
	
<%!
	// 선언문 - 클래스 같은 느낌
	
	// 필드
	private int num = 100;
	// 메소드
	public String getHelloWorld(){
		return "Hello World";
	}
%>
	
<%= getHelloWorld() %><br>
<%= num + 20 %>
</body>
</html>