<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%@ include file="../config.jsp" %>

<%

  
if(request.getParameter("id") !=null && request.getParameter("pwd") != null){
      
    
   sql = "SELECT * FROM member WHERE id='" +request.getParameter("id") + "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 
    ResultSet paperrs =con.createStatement().executeQuery(sql);
    
    if(paperrs.next()){            
        session.setAttribute("id",request.getParameter("id"));
        response.sendRedirect("../index.jsp") ;
    }
    else
        out.println("±K½X±b¸¹¤£²Å !!") ;
}
%>

