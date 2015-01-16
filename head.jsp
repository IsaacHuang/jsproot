<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<html>
<title></title>
		<style type="text/css">
		.color{
			background-color: #CDC0B0;
		}
		body{
			font-style: 
		}
	</style>
	<body class="color">
	<table border="0">
	<tr>	
	<td  width="8%">
		<% if(session.getAttribute("name")==null) out.print("<a href=../index.jsp target='_top'>"); else out.print("<a href='../jsproot/index_log.jsp' target='_top'>");%><img src="img/Logo_1.jpg" align="left" height="100" width="80"></a>
		</td>
	<td valign=center align=center width="15%">
		<font color=19FF1C><% if(session.getAttribute("name")==null) out.print("<a href=../index.jsp target='_top'>"); else out.print("<a href='../jsproot/index_log.jsp' target='_top'>");%><h1>I-breathing<h1></a></font>
		</td>
	<td align=center width="8%">
		<font color=19FF1C><h3><a href="memberapply.jsp" target="main">註冊會員</a></h3></font>
		</td>
	<td align=center width="8%">
	<font color=19FF1C><a href="content.jsp" target="main"><h3>登入會員</a></h3></font>
	</td>
	<td align="center" width="8%">
		<font color=19FF1C><% if(session.getAttribute("name")==null) out.print("<a href=../index.jsp target='_top'>"); else out.print("<a href='mailto:etom116@hotmail.com' target='main'>");%><h3>聯絡我們</h3></font>
	</td>
	<td align="center" width="8%">
	<font color=19FF1C><h3><% if(session.getAttribute("name")==null) out.print("<a href=../index.jsp target='_top'>"); else out.print("<a href='about.html' target='main'>");%>關於我們</a></h3></font>
	</td>
	<td align="center" width="8%">
		<font color=19FF1C><h3><% if(session.getAttribute("name")==null) out.print("<a href=../index.jsp target='_top'>"); else out.print("<a href='shoppingcar.jsp' target='main'>");%>購物車</h3></font>
	</td>
	<td align="center" width="8%">
		<font color=19FF1C><% if(session.getAttribute("name")==null) out.print("<a href='item.jsp' target='main'>"); else out.print("<a href='item_login.jsp' target='main'>");%><h3>商品項目</h3></font>
	</td>
	<td align="center" width="8%">
		<font color=19FF1C><h3><a href="../jsproot/admin/board.jsp" target='_top'>後台管理</a></h3></font>
	</td>
	<td width="10%">
		<%@include file="counter.jsp"%>
		</td>
	</tr>
	</table>
	<embed 
	src="/jsproot/admin/Mozart.mp3"
	loop="true"
	hidden="true"
	autostart="true" />
	</body>


</html>