<%@page contentType="text/html; charset=big5" %>
<%@page import="java.sql.*"%>
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
	  
	  
	  
	  
		<p align="center"><font face="Dotum"><img border="0" src="../material/sche002.gif" width="100" height="100"> </font><font face="Arial Unicode MS" size="6"><u><b><font color="#FFFFFF">�T�{�q�� 
</font></b></u> 
		</font>
		<p align="center">�@<p align="center"><b>
		<font size="6" color="#FFFFFF" face="Dotum">
		</font><font face="Arial Unicode MS" size="6" color="#FFFFFF"><<�q���ƽT�{>></font><font size="6" color="#FFFFFF" face="Dotum"></font></b></p>
		<p align="center">�@</p>
		<p align="center"><b><font face="Dotum" size="4" color="#FFFFFF">�p�G��K, 
		�бN�����C�L�X�ӯd���z�����.</font></b></p>
		<p align="center"><b><font face="Dotum" size="4" color="#FFFFFF">
		���M�]�аO�U�z���T�{���X,</font></b></p>
		<p align="center"><b><font face="Dotum" size="4" color="#FFFFFF">
		�H�Q�P�����q�ȪA�H���p���l�ܱz���q��</font></b></p>
		<p align="center">
  
<%


   request.setCharacterEncoding("Big5");

	String Buyer_Phone = request.getParameter("Buyer_Phone");
	String Pay_Way = request.getParameter("Pay_Way");
	String Receivr_Name = request.getParameter("Receivr_Name");
	String Receivr_Address = request.getParameter("Receivr_Address");
	String addr = request.getParameter("add");
                                            
   try                                                             
   {
	
  sql="insert order1(buyer_name,buyer_phone,receivr_name,price,pay_way,receivr_addr,addr)";
     sql+="values ('"+session.getAttribute("id")+"','"+Buyer_Phone+"','"+ Receivr_Name +"','"+session.getAttribute("total")+"','"+Pay_Way+"','"+Receivr_Address+"','"+addr+"')";
   
     con.createStatement().execute(sql);

		con.close();
}                                                             
   catch (Exception e2)                                            
   {                                                             
      out.println("ERROR Msg:"+ e2.getMessage());                                 
   }           
%> 
<hr>

		<p align="center"><font face="Dotum" size="4" color="#FFFFFF">
�ڭ̱N�b�̧֪��ɶ����B�z�z���q��.
�@</font><p align="center"><font face="Dotum" color="#FFFFFF">�z�������I�q���`���B�� :<font color="#FFFFFF" > <%=session.getAttribute("total") %><font face="Dotum" color="#FFFFFF">�� </font> </font> 
		</font> 
		
<form  action="../index.jsp" METHOD="post">   
<p align="center"><INPUT TYPE="submit" NAME="submit" VALUE="�^����"></p>
</form>
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>