<%@page contentType="text/html; charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<html>
<head><title></title></head>
<body>
	<%
	try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/";
        	String sql="";
        	Connection con=DriverManager.getConnection(url,"root","root");
        	try{
        		if(con.isClosed())
        		out.print("資料庫關閉");
        		else {
                try{
                     MultipartRequest up = new MultipartRequest(request,"/Users/Isaac/tomcat/webapps/ROOT/jsproot/img/",1024*1024*1024);
                      String fieldName=(String)up.getFileNames().nextElement();
                      String fileName=up.getFilesystemName(fieldName);
                      String contentType=up.getContentType(fieldName);
                      String thePath="img/"+fileName;
                      sql="use jsp";
                      con.createStatement().execute(sql);
                		  if(fileName!=null){
                        sql="select itemlink from product "; 
                        ResultSet rs=con.createStatement().executeQuery(sql);
                        sql="update `product` set `itemlink`='"+thePath+"')";
                        con.createStatement().execute(sql);
                      }
                      con.close();
                      response.sendRedirect("Data.jsp");
                      }catch(Exception e){
                        out.print(e.getMessage());
                      }
      			}
    		}
    		catch (SQLException sExec) {
           		out.println("SQL錯誤");
    		}
		}
		catch (ClassNotFoundException err) {
      		out.println("class錯誤"+"menu");
		}
		
%>
</body>
</html>