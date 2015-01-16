<%@page contentType="text/html"%><%@page pageEncoding="utf-8"%><%@ page import ="java.sql.*" %><%@page import="javax.sql.*"%>
<html>
<body>
<%
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	try{
		String url="jdbc:mysql://localhost";
		Connection con=DriverManager.getConnection(url,"root","root");
		if(con.isClosed())
			out.print("資料庫已經關閉了！");
		else
			out.print("資料庫正在開啟中！");
		con.close();
	}
	catch(SQLException sExec){
		out.println("SQL錯誤！"+sExec.toString());
	}
}
catch(ClassNotFoundException err){
	out.println("class錯誤"+err.toString());
}
 %>
</body>
 </html>