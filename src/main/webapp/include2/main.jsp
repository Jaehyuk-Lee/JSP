<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: 0 auto;
		text-align: center;
	}
	table {
		width: 1000px;
		height: 800px;
	}
	.top {
		height: 100px;
		background-color: yellow;
	}
	.left {
		background-color: red;
		width: 200px;
	}
	.right {
		background-color: green;
	}
	
</style>
</head>
<body>
<table class="main">
	<tr>
		<td colspan=2 class="top"><%@ include file="top.jsp" %></td>
	</tr>
	<tr>
		<td class="left"><%@ include file="left.jsp" %></td>
		<td class="right"><%@ include file="content.jsp" %></td>
	</tr>
</table>
</body>
</html>