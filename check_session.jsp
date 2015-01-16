<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head><title></title></head>
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
            sql="select * from member where account ='"+id+"'and password='"+pwd+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            if(rs.next()){
                session.setAttribute("name",id);
                
            }
            else{
                session.setAttribute("name",null);
            }
    	}
    	catch(SQLException sExec){
    		out.print("SQL錯誤");
    	}
	}
    catch(ClassNotFoundException err){
    	out.print("連線失敗");
	}
    	
  if(session.getAttribute("name")!=null)  
%>
</body>
</html>