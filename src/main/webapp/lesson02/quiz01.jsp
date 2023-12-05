<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	
<%!
	public String sum(int n){
		int sum=0;
		for(int i = 1 ; i <= n; i++){
			sum += i;
		}
		return ("1부터"+ n + "까지의 합은 " + sum + "입니다.");
		}
%>
	<h1><%= sum(50) %></h1>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0 ; i < scores.length ; i ++){
		sum += scores[i];
	}
	int average = sum / scores.length;
%>
	<h1>평균 점수는 <%= average %>입니다.</h1>
	
<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	Iterator<String> iter = scoreList.iterator();
	int score = 0;
	while(iter.hasNext()){
		String check = iter.next();
		if (check.equals("O")){
			score += 10;
		}
	}
	
%>
	<h1>채점 결과는 <%= score %>입니다.</h1>
	
<%
	String birthDay = "20010820";
	int age = 2023 - Integer.valueOf(birthDay.substring(0,4));
	
%>	
	<h1>20010820의 나이는 <%= age %>세 입니다.</h1>


</body>
</html>