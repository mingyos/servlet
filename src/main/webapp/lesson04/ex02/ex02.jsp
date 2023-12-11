<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>

</head>
<body>
	<%-- 
		흐름
		1)유저 추가 : ex02.jsp(사용자 추가 화면) -> InsertEx02 서블릿(DB 저장) -> ex02_1.jsp(사용자 목록 화면)
	 --%>
	 
	 <form method="post" action="/lesson04/ex02_insert">
	 	<p>
	 		<b>이름</b>
	 		<input type="text" name="name">
	 	</p>
	 	<p>
	 		<b>생년월일</b>
	 		<input type="text" name="yyyymmdd">
	 	</p>
	 	<p>
	 		<b>이메일</b>
	 		<input type="text" name="email">
	 	</p>
	 	<p>
	 		<b>자기소개</b><br>
			<textarea name="introduce" cols="50" rows="5"></textarea>
	 	</p>
	 	<input type="submit" value="추가">
	 </form>
</body>
</html>