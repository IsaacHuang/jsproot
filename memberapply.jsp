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
	

<p>�m�W�G<input type="text" name="name"></p>
<p><input type="radio" name="sex" value="Boy">�k��
<input type="radio" name="sex" value="Girl">�k��</p>
<p>�a�}<input type="text" name="address">
<br>����ƱN�ϥΩ�|���ʪ��ɦv�t���γ~�C</p>
<p>�b��<input type="text" name="account">
<br>�п�J�q�l�l��H�c</p>
<p>�K�X<input type="password" name="password"></p>
<p>�ͤ�:
	
	<%
	out.print("<select name = 'year'>");
	for( int i = 1934 ; i < 2015 ; i++ )
	{
	 out.print("<option value ="+i+" >"+i);
	}
	out.print("</select> �~");
	out.print("<select name = 'month'>");
	for( int i = 1 ; i < 13 ; i++ )
	{
	 out.print("<option value ="+i+" >"+i);
	}
	out.print("</select> ��");
	out.print("<select name = 'day'>");
	for( int i = 1 ; i < 32 ; i++ )
	{
	 out.print("<option value ="+i+" >"+i);
	}
	out.print("</select> ��");
	%></p>
<p><input type="reset" name="reset" value="���s��g">
<input type="submit" name="Submit" value="ok"></p>
<p><textarea  rows="5" name="txtareaName" cols="20">�������Ҷ�g�������ơA�N���������L�γ~�A���O�ٱz�ӤH�v�q�A�Ъ`�N�ìd�߸�ƨӷ��ýT�{�AI-breathing�����z�I</textarea></p>
</form></center>
</body>
</html>