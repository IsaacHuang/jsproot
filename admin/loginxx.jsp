<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body>
	<%
	 String id=request.getParameter("account");
    String pwd=request.getParameter("password");
   try{
        Class.forName("com.mysql.jdbc.Driver");
    	String url="jdbc:mysql://localhost";
    	Connection con=DriverManager.getConnection(url,"root","root"); 

    	try{
    		String sql="use jsp";
    		con.createStatement().execute(sql);
            sql="select * from xmember where account ='"+id+"'and password='"+pwd+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            if(rs.next())
                session.setAttribute("name",rs.getString(1));
                }
        catch(SQLException sExec){
            out.print("SQL錯誤");
        }
    }
    catch(ClassNotFoundException err){
        out.print("class錯誤");
    }


	%>
    <%if (session.getAttribute("name")!=null)%>
    <%@include file="index.jsp"%>
	</body>
</html>