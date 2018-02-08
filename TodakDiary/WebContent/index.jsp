<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.regex.Pattern" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
</head>
<body>	
<%
	try {
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
	 
		Class.forName(driverName);
	 
		Connection con = DriverManager.getConnection(url,"mooneegee","1227");    // getCo... : 계정정보 url, id, pw
	 
		out.println("Oracle DB Conneted");
		con.close();
	} catch (Exception e) {
		out.println("Oracle DB not Connted");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
</body>
</html>