<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@ include file="../config.jsp" %>
<%
String bid=request.getParameter("bid");
if(!bid.equals("")){
sql="DELETE FROM `order1` WHERE `buyer_id`='"+bid+"';";
con.createStatement().execute(sql);
out.print("刪除成功，回<a href='index.jsp'>訂單總覽</a>");
}
else{
out.print("有問題，請回上一頁");
}
%>