<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import ="java.io.*,java.util.*"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
    <table border ="1">
        <tr>
            <th>요청 파라미터 이름</th>
            <th>요청 파라미터 값</th>
        </tr>
        <%
            Enumeration<String> paramNames = request.getParameterNames();
            while (paramNames.hasMoreElements()) {
                String name = (String) paramNames.nextElement();
                out.print("<tr><td>" + name + " </td>\n");
                String paramValue = request.getParameter(name);
                out.println("<td> " + paramValue + "</td></tr>\n");
            }
        %>
    </table>
</body>
</html>