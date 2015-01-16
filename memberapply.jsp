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
<center><form name="Login" method="post" action="memberadd.jsp">
	

<p>姓名：<input type="text" name="name"></p>
<p><input type="radio" name="sex" value="Boy">男生
<input type="radio" name="sex" value="Girl">女生</p>
<p>地址<input type="text" name="address">
<br>此資料將使用於會員購物時宅配之用途。</p>
<p>帳號<input type="text" name="account">
<br>請輸入電子郵件信箱</p>
<p>密碼<input type="password" name="password"></p>
<p>生日:
	
	<%
	out.print("<select name = 'year'>");
	for( int i = 1934 ; i < 2015 ; i++ )
	{
	 out.print("<option value ="+i+" >"+i);
	}
	out.print("</select> 年");
	out.print("<select name = 'month'>");
	for( int i = 1 ; i < 13 ; i++ )
	{
	 out.print("<option value ="+i+" >"+i);
	}
	out.print("</select> 月");
	out.print("<select name = 'day'>");
	for( int i = 1 ; i < 32 ; i++ )
	{
	 out.print("<option value ="+i+" >"+i);
	}
	out.print("</select> 日");
	%></p>
<p><input type="reset" name="reset" value="重新填寫">
<input type="submit" name="Submit" value="ok"></p>
<p><textarea  rows="5" name="txtareaName" cols="20">此網站所填寫之任何資料，將不做任何其他用途，為保障您個人權益，請注意並查詢資料來源並確認，I-breathing提醒您！</textarea></p>
</form></center>
</body>
</html>