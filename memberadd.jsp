<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<title>memeber</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=big5";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use board";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
           String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"));
//           String new_name=request.getParameter("name");
           String new_sex=new String(request.getParameter("sex").getBytes("ISO-8859-1"));
           String new_address=new String(request.getParameter("address").getBytes("ISO-8859-1"));
		   String new_account=new String(request.getParameter("account").getBytes("ISO-8859-1"));
		   String new_password=new String(request.getParameter("password").getBytes("ISO-8859-1"));
		    String new_year=new String(request.getParameter("year").getBytes("ISO-8859-1"));
			String new_month=new String(request.getParameter("month").getBytes("ISO-8859-1"));
			String new_day=new String(request.getParameter("day").getBytes("ISO-8859-1"));
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令	
           sql="insert member (name, sex, address , account , password,year,month,day) ";
           sql+="value ('" + new_name + "', ";
           sql+="'"+new_sex+"', ";
           sql+="'"+new_address+"', ";
           sql+="'"+new_account+"',";   
           sql+="'"+new_password+"',";
		   sql+="'"+new_year+"', ";
		   sql+="'"+new_month+"', ";
		   sql+="'"+new_day+"');";  		   
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("success.jsp");
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

