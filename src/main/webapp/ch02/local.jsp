<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int data = 0; // 새로고침하면 새로 초기화됨 %>

<%
	data++;
	out.println("Value of the variable is: " + data);

%>
</body>
</html>