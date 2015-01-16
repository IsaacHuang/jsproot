<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<title></title>
</head>
<style type="text/css">
<!--
body {
	background-color: #CDC0A0;
}
-->
</style>
<body>
<TABLE border="5" cellspacing="5" cellpadding="5" bordercolorlight="red" bordercolordark="yellow" bgcolor="#ffffff" width = 50% align="center">

<%

try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/";
        String sql="";
		int[] x= new int[10];
		int k = 0;
		int total = 0;
        Connection con=DriverManager.getConnection(url,"root","root");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use jsp";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="select ordername , sum(orderquantity) as t1 from orderitem  group by ordername "; //算出共幾筆留言
		
           ResultSet rs=con.createStatement().executeQuery(sql);
		    while(rs.next())
			{
			out.println("<tr><td style='font-size: 25pt ' align='center'>"+rs.getString("ordername")+"</td><td style='font-size: 25pt ' align='center'>"+rs.getString("t1")+"</td>");

			   x[k] = Integer.parseInt(rs.getString("t1"));			   
			   k++;
			}
			k=0;
			
			sql="select DISTINCT price from product as t1 INNER JOIN orderitem as t2 on t1.itemname = t2.ordername  "; 
			rs=con.createStatement().executeQuery(sql);
			while(rs.next())
			{
			x[k] = x[k] * Integer.parseInt(rs.getString("price"));	
			k++;
			}
			k = 0;
			for(int i = 0 ; i < 10 ; i++ )
			{
			total = total + x[i];
			}
			out.print("<tr><td colspan = 2 ALIGN='right' style='font-size: 25pt ' TEXT='RED' ><font Color=“#0000ff” ><b>總計:"+total+"</b></td></tr>");
			
			
           //算出共幾筆留言
           
         

//Step 6: 關閉連線
          con.close();
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
</table>
</body>
</html>