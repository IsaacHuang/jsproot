<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head><title>後台管理</title></head>
<body>
	<div>
		<font color="0934ad" size="36"><a href="../index_log.jsp" target="_top">HOME</a>
		<a href="putOn.jsp">商品上架</a>
		<a href="putOff.jsp">商品下架</a>
		<a href="Data.jsp">更改資料</a></font>
	</div>
	<div>
		<%@include file="content.jsp"

		%>
	</div>
	<body>
</html>