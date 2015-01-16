<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*"%>
<%
String clear=request.getParameter("clear");
try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/";
        	String sql="";
        	Connection con=DriverManager.getConnection(url,"root","root");
        	try{
        		if(con.isClosed())
        		out.print("資料庫關閉");
        		else {
        			sql="use jsp";
           			con.createStatement().execute(sql);
                sql="select itemlink from product where no="+clear;
                ResultSet rs=con.createStatement().executeQuery(sql);
                if(rs.next()){
                  String filePath="/"+rs.getString("itemlink");
                  out.print(filePath);
                  File myFile= new File(filePath);
                  out.print(myFile.getName());
                  String name=myFile.getName();
                  out.print("<br>"+name);
                  String path="/Users/Isaac/tomcat/webapps/ROOT/jsproot/img/";
                  File del=new File(path,name);
                  if(del.exists()){
                  del.delete();
                  out.print("此檔案已不存在！");
                  }
                }
                
           			sql="delete from product where no="+clear;
           			con.createStatement().execute(sql);
           			con.close();
      			}
    		}
    		catch (SQLException sExec) {
           		out.println("SQL錯誤");
    		}
		}
		catch (ClassNotFoundException err) {
      		out.println("class錯誤"+"menu");
		}
out.print("<a href='index.jsp'><font color=034cca size=36>回首頁</font></a>");
		//response.sendRedirect("putOff.jsp");
%>