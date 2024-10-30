<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! int data = 0; // 새로고침해도 초기화되지 않음 (계속 오름)%>

<%
	data++;
	out.println("Value of the variable is: " + data);

%>
</body>
</html>