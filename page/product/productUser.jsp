<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%@ include file="../config.jsp" %>


<%
request.setCharacterEncoding("big5");
request.getSession(true);

sql="select * from product";
ResultSet rs=con.createStatement().executeQuery(sql);


%>
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
      <p align="center">�@</p>    
   
<form method="post" action="buy01.jsp">  
<input type="hidden" name="VTI-GROUP" value="0">            
  
<%
 while(rs.next()){%>

 <table width="518" border="1" align="center" cellpadding="2" cellspacing="1" bgcolor='#333333' id="table9">

          <input type="hidden" name="VTI-GROUP" value="0">          <tr class="style4" align="middle" >
            <td width="34%" rowspan="7" align="left">
			<img border="0" src="../material/<%=rs.getString(1)%>.jpg" width="170" height="170">
			</td>
            <td align="left" width="66%" > <font size="3" face="Dotum" color="#FFFFFF">�W��: <font color="#FFFFFF"> <%=rs.getString(2)%></font></font></td>
			
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">���~�s��: <%=rs.getString(1)%></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">����: <font color="#FFFFFF"><%=rs.getString(4)%>��</font></font></td>
          </tr>
		           <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">�Ѿl: <font color="#FFFFFF"><%=rs.getString(5)%>�M</font></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td class="style8" align="left"><font size="3" face="Dotum" color="#FFFFFF"> �䴩:&nbsp; <font color="#FFFFFF"><%=rs.getString(3)%></font></font></td>
          </tr>
       
          </tr>
          <tr class="style4" align="middle" >
            <td height="58" align="left"> 
             			<p align="right"><input type="checkbox" name="Product_Id" value="<%=rs.getString(1)%>"><font color="#FFFFFF">��i�ʪ���</font></td>
          </tr>
      
      </table>
	  
	  <% }
 %>
          
          
<input name="Submit1" type="submit" value="�T�w�e�X" />

</form>


	  
	  
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>