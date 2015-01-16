<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
<%
	String new_itemname=request.getParameter("itemname");
    String new_itemintro=request.getParameter("itemintro");
    String new_price=request.getParameter("price");
    String new_quantity=request.getParameter("quantity");
   	int p= 0;
    int q= 0;
   	//String.valueOf(price)=new_price;
    try{
    p=Integer.parseInt(new_price);
    q=Integer.parseInt(new_quantity);
  }catch(Exception w){
  out.print(w);
}
   	
    
    //String.valueOf(quantity)=new_quantity;
    

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
                      int count=rs.getRow();
                      sql="select * from product where no ="+count;
                      if(rs.getString("itemname")==null){
                      sql="UPDATE `product` SET `itemname`="+'"'+new_itemname+'"'+",`itemintro`="+'"'+new_itemintro+'"'+",`price`="+p+",`quantity`="+q+" WHERE `no`="+count;
                      con.createStatement().execute(sql);
                      out.print("<br>已新增成功！");
                      out.print("<br><a href='index.jsp'><font color=93aabc size='36'>回首頁</font></a>");
                      }else{
                        out.print("<font size=20>您尚未上傳圖片！<br>");
                        out.print("請<a href='putOn.jsp'>按此重新填寫！</a></font>");
                      }
                      
                      con.close();
      			}
    		}
    		catch (SQLException sExec) {
           		out.println(sExec);
    		}
		}
		catch (ClassNotFoundException err) {
      		out.println("class錯誤"+"menu");
		}
		
%>
</body>
</html>

