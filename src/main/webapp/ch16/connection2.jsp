<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%> 
<html>
<head>
<title>Database SQL</title>
</head>
<body>
	<%
		String url = "jdbc:oracle:thin:@localhost:1521/freepdb1";
		String user = "ace";
		String password = "ace";
		try (Connection conn = DriverManager.getConnection(url, user, password);){
			Class.forName("oracle.jdbc.OracleDriver");
			out.println("데이터베이스 연결이 성공했습니다.");
		} catch (SQLException ex) {
			out.println("데이터베이스 연결이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		}
	%>
</body>
</html>