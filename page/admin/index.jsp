<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@ include file="../config.jsp" %>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-tw">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>=歡迎光臨小雞蛋糕店=</title>
</head>
<body>
<table border="1">
<tr><th>訂單編號</th><th>訂購人姓名</th><th>訂購人電話</th><th>操作</th></tr>
<%
sql="SELECT * FROM `order1`;";
ResultSet rs =con.createStatement().executeQuery(sql);
while(rs.next()){
out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td><a href='edit.jsp?bid="+rs.getString(1)+"'>修改</a> - <a href='del.jsp?bid="+rs.getString(1)+"'>刪除</a></td></tr>");
}

%>
</table>
</body>
</html>