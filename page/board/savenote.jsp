<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<%@page import = "java.sql.*" %>
<%!
     String newline(String str)         //�B�z����r�����ۭq��k
     {
      int index=0;
      while((index=str.indexOf("\n"))!=-1)
       str=str.substring(0,index)+"<br>"+str.substring(index+1);
      return(str);
     }
%><%@ include file="../config.jsp" %>
<%
       

		
	
	 //request.setCharacterEncoding("utf8");
     String name = new String
             (request.getParameter("name").getBytes("ISO-8859-1"));
     String note = new String
             (request.getParameter("note").getBytes("ISO-8859-1"));
     java.sql.Date date=new java.sql.Date(System.currentTimeMillis());
     note = newline(note);
    
     sql="insert into message(msgname,msgcontent,msgdate) values ('"+name+"','"+note+"','"+date+"')";
    con.createStatement().execute(sql);
     con.close();

%>
�d�����\^^
<FORM ACTION="boardMessage.jsp" METHOD="post">   
<INPUT TYPE="submit" NAME="submit" VALUE="�^�d���O">  