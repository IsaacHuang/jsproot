<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<title>add</title>
</head>
<body>
<%
try {
//Step 1: ¸ü¤J¸ê®Æ®wÅX°Êµ{¦¡ 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: «Ø¥ß³s½u 	
        String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=big5";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","root");
        if(con.isClosed())
           out.println("³s½u«Ø¥ß¥¢±Ñ");
        else {
//Step 3: ¿ï¾Ü¸ê®Æ®w   
           sql="use jsp";
           con.createStatement().execute(sql);
           //±qªí®æ¶Ç»¼¤¤¤å¨ì¸ê®Æ®w, ¥²¶·¨Ï¥ÎgetBytes("ISO-8859-1")½s½X
           String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"));
//           String new_name=request.getParameter("name");
           String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"));
           String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"));
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: °õ¦æ SQL «ü¥O	
           sql="insert guestbook (name, subject, content) ";
           sql+="value ('" + new_name + "', ";
           //sql+="'"+new_mail+"', ";
           sql+="'"+new_subject+"', ";
           sql+="'"+new_content+"')";   
          // sql+="'"+new_date+"')";   
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: Ãö³¬³s½u
           con.close();
//Step 5: Åã¥Üµ²ªG 
          //ª½±µÅã¥Ü³Ì·sªº¸ê®Æ
           response.sendRedirect("menu.jsp?page=1");
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>
</body>
</html>

