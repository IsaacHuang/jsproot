<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
	  
	  
	  
	  
	  	  <font face="Arial Unicode MS" size="6"><font color="#FFFFFF">���~</font>
    </font>
      <p align="center">�@</p>
      <table width="518" border="1" align="center" cellpadding="2" cellspacing="1" id="table9" bgcolor='#333333'>
        <form name="myForm" onSubmit="location.href='../_derived/nortbots.htm';return false;" method="POST" action="--WEBBOT-SELF--" webbot-onsubmit="return(check(this))">
          <!--webbot bot="SaveDatabase" U-ASP-Include-Url="../_fpclass/fpdbform.inc" startspan -->
          <input type="hidden" name="VTI-GROUP" value="0">
          <!--#include file="../_fpclass/fpdbform.inc"-->
          <!--webbot bot="SaveDatabase" i-checksum="11827" endspan -->
          <tr class="style4" align="middle" >
            <td width="33%" rowspan="7" align="left">
			<img border="0" src="../material/1.jpg" width="170" height="170"></td>
            <td align="left" width="64%" > <font size="3" face="Dotum" color="#FFFFFF">�W��: <font color="#FFFFFF"> �Ԧa����3</font></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">���~�s��: 001</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">����: <font color="#FFFFFF">1399��</font></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td class="style8" align="left"><font size="3" face="Dotum" color="#FFFFFF"> �䴩:&nbsp; <font color="#FFFFFF">SLI�ADX11</font></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">�@</td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">�@</td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"> 
            <p>&nbsp; </p></td>
          </tr>
        </form>
      </table>
      <table width="520" height="166" border="1" align="center" cellpadding="2" cellspacing="1" bordercolor="#000000" id="table10" bgcolor='#333333'>
        <form name="myForm0" onSubmit="return(check(this))" method="post" action="http://www.misterdonut.com.tw/member/preview.asp">
          <tr class="style4" align="middle" >
            <td align="left" rowspan="7"><img border="0" src="../material/2.jpg" width="170" height="170"></td>
            <td align="left" width="74%" > <font size="3" face="Dotum" color="#FFFFFF">�W��: </font> <font color="#FFFFFF" size="3">�Ԧa���� �c�W�L��2</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">���~�s��: 002</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" color="#FFFFFF">����: </font> <font color="#FFFFFF" size="3" face="Dotum">1099��</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td class="style8" align="left"><font size="3" face="Dotum" color="#FFFFFF"> �䴩:&nbsp; </font><font size="3" color="#FFFFFF"> SLI�ADX11</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" color="#FFFFFF"></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">�@</td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">
              �@</td>
          </tr>
        </form>
      </table>
      <table width="520" border="1" align="center" cellpadding="2" cellspacing="1" bordercolor="#000000" id="table11" bgcolor='#333333'>
        <form name="myForm1" onSubmit="return(check(this))" method="post" action="product01.jsp">
          <tr class="style4" align="middle" >
            <td align="left" rowspan="7">
			<img border="0" src="../material/3.jpg" width="170" height="170"></td>
            <td align="left" width="74%" > <font size="3" color="#FFFFFF">�W��: </font> <font color="#FFFFFF" size="3" face="Dotum" >�Ԧa����2142</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">���~�s��: 003</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" color="#FFFFFF">����: </font> <font color="#FFFFFF" size="3" face="Dotum">899��</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td class="style8" align="left"><font size="3" face="Dotum" color="#FFFFFF"> �䴩: <font color="#FFFFFF">&nbsp;</font></font><font color="#FFFFFF" size="3">SLI�ADX10</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font color="#FFFFFF" size="3"></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">�@</td>
          </tr>
          <tr class="style4" align="middle" >
            <td height="32" align="left">�@</td>
          </tr>
        </form>
      </table>
      
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>