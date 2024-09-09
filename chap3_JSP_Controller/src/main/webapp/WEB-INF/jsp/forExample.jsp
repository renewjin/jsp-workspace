<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>For문 예제</title>
</head>
<body>
<h1>i값 출력하기</h1>
<%
	for(int i =0; i<6; i++) {
%>
	<p>i의 값은 <strong><%=i %></strong> 입니다.</p>
<%
	}
%>
<a href="/">메인</a>
</body>
</html>