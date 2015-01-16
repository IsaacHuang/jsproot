<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@ include file="../config.jsp" %>
<form action="edit_update.jsp">
<%
String bid=request.getParameter("bid");
if(!bid.equals("")){
sql="SELECT * FROM `order1` WHERE `buyer_id`='"+bid+"'";
ResultSet rs =con.createStatement().executeQuery(sql);
rs.next();
out.print("訂單編號："+rs.getString(1)+"<input type='hidden' name='bid' value='"+rs.getString(1)+"' /><br />");
out.print("購買人姓名：<input type='text' name='bname' value='"+rs.getString(2)+"' /><br />");
out.print("購買人電話：<input type='text' name='btel' value='"+rs.getString(3)+"' /><br />");
out.print("收件人姓名：<input type='text' name='rname' value='"+rs.getString(4)+"' /><br />");
out.print("收件人地址：<input type='text' name='radd' value='"+rs.getString(8)+"' /><br />");

}
else{
out.print("有問題，請回上一頁");
}
%>
<input type="submit" value="送出" /><input type="button" value="取消" onclick="javascript: history.back(-1);"/>
</form>