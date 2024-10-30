<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	td {
		text-align: right;
	}
</style>
<title>달력</title>
</head>
<body>
<%
	int year = 2024;
	int month = 10;
	
	Calendar c = Calendar.getInstance();
	c.set(year, month-1, 1);
	int first_day = c.get(Calendar.DAY_OF_WEEK);
	int last_date = c.getActualMaximum(Calendar.DATE);
%>
	<table>
        <caption><%=year %>년 <%=month %>월 달력</caption>
        <thead>
            <tr>
                <th>일</th>
                <th>월</th>
                <th>화</th>
                <th>수</th>
                <th>목</th>
                <th>금</th>
                <th>토</th>
            </tr>
        </thead>
        <tbody>
        <tr>
<%
	for (int day = 1; day < first_day; day++) {
%>
    		<td></td>
<%	}
	for (int date = 1; date <= last_date; date++) {
%>
    		<td><%=date %></td>
<% 	if ((date + first_day - 1) % 7 == 0) { %>
    	</tr>
    	<tr>
<%    	}
    }
%>
		</tr>
        </tbody>
    </table>

</body>
</html>