<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
	<div>
		<font color="0934ad" size="36"><a href="../index_log.jsp" target="_top">HOME</a>
		<a href="putOn.jsp">商品上架</a>
		<a href="putOff.jsp">商品下架</a>
		<a href="Data.jsp">更改資料</a></font>
	</div>
	<div>
		<table BORDER=1 WIDTH='1000' align='center'>
			<tr>
				<td>圖檔上傳</td>
				<td>商品名稱</td>
				<td>商品介紹</td>
				<td>商品價格</td>
				<td>數量</td>
				<td></td>
			</tr>
			<tr>
				<form name="insert" method="post" action="upload.jsp" enctype="multipart/form-data">
				<td>
					<input type="file" name="pic"><br>
						<input type="reset" value="清除">
						<input type="submit" value="上傳">
				</td>
			</form>
			<form name="insert1" method="post" action="act_on.jsp">
				<td>
					<textarea name="itemname"></textarea>
				</td>
				<td>
					<textarea name="itemintro"></textarea>
				</td>
				<td>
						<%out.print("<select name = 'price'>");
							for( int i = 1 ; i < 99 ; i++ )
							{
	 							out.print("<option value ="+i+" >"+i);
							}
							out.print("</select> 元");
							%>
				</td>
				<td>
					<%out.print("<select name = 'quantity'>");
							for( int i = 1 ; i < 99 ; i++ )
							{
	 							out.print("<option value ="+i+" >"+i);
							}
							out.print("</select>個");%>
				</td>
				<td>
					<input type="submit" name="submit" value="確定新增">
				</td>
			</form>
			</tr>
		</table>
	</div>
	<div>
		<%@include file="content.jsp"%>
	</div>
	
	</body>
</html>