<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@include file="check_session.jsp"%>
<html>
<head><title></title></head>
<body>
<%
   if(session.getAttribute("name")!=null){
                out.print(session.getAttribute("id")+"您好！歡迎蒞臨本網站！");
                out.print("<br>請<a href='index_log.jsp' target='_top'>按此</a>重新整理頁面！");
            }
            else{
                out.print("您輸入的帳號密碼不正確");
                out.print("<br><font size=36>請<a href=../index.jsp target=_top>按此</a>重新登入</font>");    
            }
%>
<%//@include file="index_log.jsp"%>
</body>
</html>