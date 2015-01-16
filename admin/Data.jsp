<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
	<div>
		<font color="0934ad" size="36"><a href="../index.jsp" target="_top">HOME</a>
		<a href="putOn.jsp">商品上架</a>
		<a href="putOff.jsp">商品下架</a>
		<a href="Data.jsp">更改資料</a></font>
	</div>
	<div>
		<table BORDER=1 WIDTH='1100' align='center'>
			
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
        				sql="use jsp";
           				con.createStatement().execute(sql);
           				sql="select * from product"; 
           				ResultSet rs=con.createStatement().executeQuery(sql);
           				rs.last();
          	 			int total_content=rs.getRow();
           				out.println("<center>共"+total_content+"項商品<p>");
           				int page_num=(int)Math.ceil((double)total_content/5.0); 
           				if (page_num==0)
           					page_num=1;
           				out.println("<center>請選擇頁數");
           				for(int i=1;i<=page_num;i++){
           					out.print("<a href='Data.jsp?page="+i+"'>"+i+"</a>&nbsp;");
           				}
						out.println("<p>"); 
           				String page_string = request.getParameter("page");
          	 			if (page_string == null) 
               				page_string = "1";  
               			Integer current_page=Integer.valueOf(page_string);
               			int start_record=(current_page-1)*5;
               			sql="SELECT * FROM product ORDER BY no DESC LIMIT ";
               			sql+=start_record+",5";
               			rs=con.createStatement().executeQuery(sql);
		   				int a = 0;
		   				while(rs.next()){
		   					for(int i=1;i<=total_content;i++)
                			{
		   						while(a!=1)
					  			{
				  					out.println("<tr><td></td><td>商品名稱</td><td>商品介紹</td><td>商品價格</td><td>數量</td></tr>");
				  					a = 1;
				  				}
				  				out.print("<tr><form name='update' method='post' action='update.jsp' enctype='multipart/form data'><td rowspan=2><img src=/jsproot/"+rs.getString("itemlink")+"><input type='file' name='"+i+"'><input type='reset' value='清除'></td></form>");
                  				out.println("<form name='update_1' method='post' action='update.jsp'><tr><td><input type='text' name='item"+i+"' value='"+rs.getString("itemname")+"'></td>");
				  				out.println("<td><input type='text' name='intro"+i+"' value='"+rs.getString("itemintro")+"'></td>");
				  				out.println("<td><input type='text' name='price"+i+"' value='"+rs.getString("price")+"'>元</td>");
				  				out.println("<td><input type='text' name='uantity"+i+"' value='"+rs.getString("quantity")+"'>罐</td></tr>");
				  				out.print(i);
							}
						}
						out.print("<tr><td colspan=5 align='center'><input type='submit' name='submit' value='送出'></td></form>");
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
			%>
		</table>
	</div>
	</body>
</html>