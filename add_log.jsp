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
//Step 1: ���J��Ʈw�X�ʵ{�� 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: �إ߳s�u 	
        String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=big5";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","root");
        if(con.isClosed())
           out.println("�s�u�إߥ���");
        else {
//Step 3: ��ܸ�Ʈw   
           sql="use jsp";
           con.createStatement().execute(sql);
           //�q���ǻ�������Ʈw, �����ϥ�getBytes("ISO-8859-1")�s�X
           String new_name=new String(session.getAttribute("id").getBytes("ISO-8859-1"));
//           String new_name=request.getParameter("name");
           String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"));
           String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"));
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: ���� SQL ���O	
           sql="insert guestbook (name, subject, content) ";
           sql+="value ('" + new_name + "', ";
           //sql+="'"+new_mail+"', ";
           sql+="'"+new_subject+"', ";
           sql+="'"+new_content+"')";   
          // sql+="'"+new_date+"')";   
//out.println(sql);
           con.createStatement().execute(sql);
//Step 6: �����s�u
           con.close();
//Step 5: ��ܵ��G 
          //������̷ܳs�����
           response.sendRedirect("menu_login.jsp?page=1");
       }
    }
    catch (SQLException sExec) {
           out.println("SQL���~"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class���~"+err.toString());
}
%>
</body>
</html>

