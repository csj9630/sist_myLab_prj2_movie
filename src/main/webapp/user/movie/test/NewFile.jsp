<%@page import="java.sql.Connection"%>
<%@page import="DBConnection.DbConn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>test 시작</h1>
			<%
				DbConn dbCon = DbConn.getInstance("jdbc/dbcp");				
				
				Connection con = dbCon.getConn();
				
				%>
				
				
				<%=con %>
				<%
				dbCon.dbClose(null, null, con);
			%>
</body>
</html>