<%@page contentType="text/html; charset=big5" %>
<%@ page import="java.util.*"%>
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
	  
	  
	  
	  		
		
      <p align="center"><u><b><font color="#FFFFFF">�|������&nbsp; </font></b></u> </font>

      <p align="center"><b>
	  
	  <font size="6" color="#FFFFFF" face="Dotum"> =�e�f����=</font></b></p>
            <p align="left"><font face="Dotum"><b>
		<img border="0" src="../material/check.png" width="1117" height="524">
            <p align="left"><b><font face="Dotum" color="#0000FF">
		
				
		<form method="Post" action="buy03.jsp">
		
		�п�J�z���e�f���: 
	
              <input type="hidden" name="VTI-GROUP" value="0">
              <p>�@</p>
		<table BORDER COLS=2 WIDTH="75%" >
    <tr> <td><b>�ʪ��̩m�W:</b></td>
         <td width="428"><%=session.getAttribute("id")%></td>
    </tr><tr> 
         <td><b>�p���q��:</b></td>
         <td width="428"><input type="text" name="Buyer_Phone" size=40></td>
    </tr><tr> 
         <td><b>����:</b></td>
         <td width="428"><%=session.getAttribute("total")%></td>
    </tr><tr> 
         <td><b>���ڤ覡:</b></td>
         <td width="428"><select name="Pay_Way"><option>�H�Υd</option><option>�Ȧ�״�</option><option>�l���״�</option><option>�v�t�N��, �f��I��</option></select></td>
    </tr><tr> 
         <td><b>����H�m�W:</b></td>
         <td width="428"><input type="text" name="Receivr_Name" size=40></td>
    </tr><tr> 
         <td><b>����̰ϰ�:</b></td>
         <td width="428"><select name="Receivr_Address">
                <option value="�п��">�п��</option>
                <option value="��">��</option>
                <option value="�x�_">�x�_</option>
                <option value="���">���</option>
                <option value="�s��">�s��</option>
                <option value="�]��">�]��</option>
                <option value="�x��">�x��</option>
                <option value="����">����</option>
                <option value="���L">���L</option>
                <option value="�Ÿq">�Ÿq</option>
                <option value="�x�n">�x�n</option>
                <option value="����">����</option>
                <option value="�̪F">�̪F</option>
                <option value="�y��">�y��</option>
                <option value="�Ὤ">�Ὤ</option>
                <option value="�x�F">�x�F</option>
                <option value="���">���</option>
                <option value="����">����</option>
                <option value="����">����</option>
              </select>
              </td>
    </tr>
  	<tr>
         <td><b>����a�}:</b></td>
         <td width="428"><input type="text" name="add" size=41></td>
    </tr>
  </table>
<input type="submit" name="Checkout" value="�� �� �T �{">
</Form></p>
			
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>