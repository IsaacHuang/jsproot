<%
	if( session.getAttribute("id") != null ){
	
		response.sendRedirect("../product/productUser.jsp") ;
	
	
	}else{


%>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%@ include file="../config.jsp" %>


<html>
<head>
<meta http-equiv="Content-Language" content="zh-tw">
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<title>�Ԧa����</title>
</head>
<body background="../material/1173979039.jpg">





<table border="0" cellpadding="0" cellspacing="0" width="100%" >
  <tr>
    <td colspan="3" valign="top">

      <p align="center">
	  	
	  </p>
	  <div align="left">   
	  
<% 

	if( session.getAttribute("id") != null ){
			out.print("<font><b><font size='3' color='#FFFFFF'>�w��z�A" + session.getAttribute("id")+"</font>");
			out.print("<form name='form1' method='post' action='../member/outUser.jsp'><input type='submit' name='Submit' value='�n�X'></form>");
			
	}else{
	
%>


<form name="form1" method="post" action="../member/check.jsp">
      <table width="400" border="0">
      <tr>
        <td><font face="Dotum"><b><font size="3" color="#FFFFFF">�|���n�J</font></td>
        <td><label>
          <input name="id" type="text" id="id" size="10">
        </label></td>
        <td><font face="Dotum"><b><font size="3" color="#FFFFFF">�K�X</font></td>
        <td><label>
          <input name="pwd" type="password" id="pwd" size="10">
        </label></td>
        <td>
          <label>
            <input type="submit" name="Submit" value="�e�X">
            </label>
        </td>
      </tr>
    </table>
	  </form>
	<% } %>  
	  
	</div>
	
	
	</td>
  </tr>
	<tr>
    <td valign="top" width="110">

 <%-- ����϶� START --%>
      <p align="left">
	  <img border="0" src="../material/welcomepiyo003.gif" width="336" height="72">
        <b>============</b><br>
		
   <a href="../index.jsp"><img border="0" src="../material/button1F.jpg" width="153" height="32"></a><br>
   <a href="../member/center.jsp"><img border="0" src="../material/buttonB.jpg" width="153" height="32"></a><br>
   <a href="../product/productList.jsp"><img border="0" src="../material/button15.jpg" width="153" height="32"></a><br>
   <a href="../member/join04.jsp"><img border="0" src="../material/button1B.jpg" width="153" height="32"></a><br>
   <a href="../board/boardMessage.jsp"><img border="0" src="../material/button16.jpg" width="153" height="32"></a><br>
   <a href="../about/about.jsp"><img border="0" src="../material/aboutus.jpg" width="153" height="32"></a><br>
		<b>============</b><br>

 <%-- ����϶� END --%>





   </td>





		
    <td colspan="2" valign="top" width="800">
 <%-- �k��϶� START --%>
      <div align="center">
	  
	  
	  
	  
	  	  <font face="Arial Unicode MS" size="6"><font color="#FFFFFF">�q��</font>
	  
	  </font>
</font></p>
      <p>
	  
<%
int count=1;
int NewCount;
if(session.isNew())
{
sql="select * from countersession";
ResultSet rs=con.createStatement().executeQuery(sql);

while(rs.next())
{count=rs.getInt("count");}
NewCount = count +1;
PreparedStatement prestmt = con.prepareStatement("UPDATE CounterSession SET count=? WHERE ID=?");
prestmt.setInt(1,NewCount);
prestmt.setString(2,"A");
prestmt.executeUpdate();
%>
        <font color="#FFFFFF" size="4">�z�O������<%=NewCount%>���U��</font>
<%
}
else
{
ResultSet rs =con.createStatement().executeQuery("SELECT * FROM CounterSession");
while(rs.next())
{count =rs.getInt("count");}
%>
        <font color="#FFFFFF" size="4">�z�O������<%=count%>���U��</font>
<%
}

con.close();
%>

      
   
   
<form  method="post" action="check.jsp">
				  
				  
				  
<table border="3" width="410" bordercolor="#FFFFFF">
<tr>
<td width="404" align="left" colspan="2"><p align="center"><b><font color="#FFFFFF" face="Dotum"> <<�n�J�|��>> </font></b></p>
<hr></td>
</tr>
<tr>
<td width="75" align="center"><p align="right"><b><font face="Dotum" color="#FFFFFF">�b���G</font></b></p></td>
<td width="324" align="center"><p align="left"><font face="Dotum">
<input type="text" name="id" size="20">
</font></td>
</tr>
<tr>
<td width="75" align="center"><p align="right"><b><font face="Dotum" color="#FFFFFF">�K�X�G</font></b></p></td>
<td width="324" align="center"><p align="left"> <font face="Dotum">
<input type="password" name="pwd" size="20">
<input type="submit" value="�n�J" name="loginButton">
</font></td>
</tr>
</table>
</form>
<br><br>
	  
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>

<% } %>