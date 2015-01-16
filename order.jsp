<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<title>order</title>
</head>
<style type="text/css">
<!--
body {
	background-color: #CDC0A0;
}
-->

</style>
<body>
		   

<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=big5";
		String sql = "";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           con.createStatement().execute("use board");
		   String new_orderquantity=new String(request.getParameter("quantity"));
		   String new_itemno=new String(request.getParameter("rrr").getBytes("ISO-8859-1"));
		   String new_price=new String(request.getParameter("rrr3").getBytes("ISO-8859-1"));
		   String new_name=new String(request.getParameter("rrr2").getBytes("ISO-8859-1"));
		   String new_orderquantity1=new String(request.getParameter("rrr1").getBytes("ISO-8859-1"));
		   int f = Integer.parseInt(new_orderquantity1);
		   int f1 = Integer.parseInt(new_orderquantity);
		   int price = Integer.parseInt(new_price);
		   f = f - f1;
		   price = price * f;
//out.println(sql);
           //
		   int check = 0;
		    sql = "select name from orderitem " ;
			ResultSet rs=con.createStatement().executeQuery(sql);
			while(rs.next())
			{
			//out.print(rs.getString("name")+"-----"+new_name);
			if ( new_name.equals(rs.getString("name")) )
			{
			check = 1;
	
			}
			con.createStatement().execute("use board");
			}
			if(check == 0)
			{
		     sql = "INSERT orderitem(name,order"+new_itemno+",totalprice) " +
            "VALUES ('"+new_name+"','"+new_orderquantity+"','"+price+"')";
			con.createStatement().execute(sql);
			}
			else
			{
			sql = "update orderitem SET order"+new_itemno+" = '"+new_orderquantity+"', totalprice = '"+price+"' where name = '"+new_name+"' ";
      
			con.createStatement().execute(sql);
			
			}
			sql = "UPDATE product SET quantity = '"+f+"' WHERE  no= '"+new_itemno+"' ";
			con.createStatement().execute(sql);
			
			
//Step 5: 顯示結果 
           //sql="insert into order (ordername,orderquantity) ";
           //sql+="values ('" + new_itemname + "', ";
           //sql+="'"+new_mail+"', "; 
           //sql+="'"+new_orderquantity+"');";   
    
           //sql="SELECT * FROM guestbook ORDER BY no DESC LIMIT ";//LIMIT是限制傳回筆數
           
         
           //rs=con.createStatement().executeQuery(sql);
		   
//  逐筆顯示, 直到沒有資料(最多還是5筆)
         
//Step 6: 關閉連線
          con.close();
		  response.sendRedirect("item_login.jsp?page=1");
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤"+"menu");
}
%>
</body>
</html>