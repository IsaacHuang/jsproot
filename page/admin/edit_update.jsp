<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%@ include file="../config.jsp" %>
<%

String bid=request.getParameter("bid");
if(!bid.equals("")){

String bname= new String(request.getParameter("bname").getBytes("ISO8859-1"),"UTF-8");
String btel= new String(request.getParameter("btel").getBytes("ISO8859-1"),"UTF-8");
String rname= new String(request.getParameter("rname").getBytes("ISO8859-1"),"UTF-8");
String radd= new String(request.getParameter("radd").getBytes("ISO8859-1"),"UTF-8");

sql="UPDATE `order1` SET `buyer_name`='"+bname+"', `buyer_phone`='"+btel+"', `receivr_name`='"+rname+"', `addr`='"+radd+"' WHERE `buyer_id`='"+bid+"' LIMIT 1;";
con.createStatement().execute(sql);
out.print("更新成功，回<a href='index.jsp'>訂單總覽</a>");


}
else{
out.print("有問題，請回上一頁");
}

%>