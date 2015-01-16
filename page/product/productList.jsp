<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-tw">
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<title>戰地秘境</title>
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
			out.print("<font><b><font size='3' color='#FFFFFF'>歡迎您，" + session.getAttribute("id")+"</font>");
			out.print("<form name='form1' method='post' action='../member/outUser.jsp'><input type='submit' name='Submit' value='登出'></form>");
			
	}else{
	
%>

<form name="form1" method="post" action="../member/check.jsp">
      <table width="400" border="0">
      <tr>
        <td><font face="Dotum"><b><font size="3" color="#FFFFFF">會員登入</font></td>
        <td><label>
          <input name="id" type="text" id="id" size="10">
        </label></td>
        <td><font face="Dotum"><b><font size="3" color="#FFFFFF">密碼</font></td>
        <td><label>
          <input name="pwd" type="password" id="pwd" size="10">
        </label></td>
        <td>
          <label>
            <input type="submit" name="Submit" value="送出">
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

 <%-- 左邊區塊 START --%>
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

 <%-- 左邊區塊 END --%>





   </td>





		
    <td colspan="2" valign="top" width="800">
 <%-- 右邊區塊 START --%>
      <div align="center">
	  
	  
	  
	  
	  	  <font face="Arial Unicode MS" size="6"><font color="#FFFFFF">產品</font>
    </font>
      <p align="center">　</p>
      <table width="518" border="1" align="center" cellpadding="2" cellspacing="1" id="table9" bgcolor='#333333'>
        <form name="myForm" onSubmit="location.href='../_derived/nortbots.htm';return false;" method="POST" action="--WEBBOT-SELF--" webbot-onsubmit="return(check(this))">
          <!--webbot bot="SaveDatabase" U-ASP-Include-Url="../_fpclass/fpdbform.inc" startspan -->
          <input type="hidden" name="VTI-GROUP" value="0">
          <!--#include file="../_fpclass/fpdbform.inc"-->
          <!--webbot bot="SaveDatabase" i-checksum="11827" endspan -->
          <tr class="style4" align="middle" >
            <td width="33%" rowspan="7" align="left">
			<img border="0" src="../material/1.jpg" width="170" height="170"></td>
            <td align="left" width="64%" > <font size="3" face="Dotum" color="#FFFFFF">名稱: <font color="#FFFFFF"> 戰地風雲3</font></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">產品編號: 001</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">價錢: <font color="#FFFFFF">1399元</font></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td class="style8" align="left"><font size="3" face="Dotum" color="#FFFFFF"> 支援:&nbsp; <font color="#FFFFFF">SLI，DX11</font></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">　</td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">　</td>
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
            <td align="left" width="74%" > <font size="3" face="Dotum" color="#FFFFFF">名稱: </font> <font color="#FFFFFF" size="3">戰地風雲 惡名昭彰2</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">產品編號: 002</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" color="#FFFFFF">價錢: </font> <font color="#FFFFFF" size="3" face="Dotum">1099元</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td class="style8" align="left"><font size="3" face="Dotum" color="#FFFFFF"> 支援:&nbsp; </font><font size="3" color="#FFFFFF"> SLI，DX11</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" color="#FFFFFF"></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">　</td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">
              　</td>
          </tr>
        </form>
      </table>
      <table width="520" border="1" align="center" cellpadding="2" cellspacing="1" bordercolor="#000000" id="table11" bgcolor='#333333'>
        <form name="myForm1" onSubmit="return(check(this))" method="post" action="product01.jsp">
          <tr class="style4" align="middle" >
            <td align="left" rowspan="7">
			<img border="0" src="../material/3.jpg" width="170" height="170"></td>
            <td align="left" width="74%" > <font size="3" color="#FFFFFF">名稱: </font> <font color="#FFFFFF" size="3" face="Dotum" >戰地風雲2142</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" face="Dotum" color="#FFFFFF">產品編號: 003</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font size="3" color="#FFFFFF">價錢: </font> <font color="#FFFFFF" size="3" face="Dotum">899元</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td class="style8" align="left"><font size="3" face="Dotum" color="#FFFFFF"> 支援: <font color="#FFFFFF">&nbsp;</font></font><font color="#FFFFFF" size="3">SLI，DX10</font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left"><font color="#FFFFFF" size="3"></font></td>
          </tr>
          <tr class="style4" align="middle" >
            <td align="left">　</td>
          </tr>
          <tr class="style4" align="middle" >
            <td height="32" align="left">　</td>
          </tr>
        </form>
      </table>
      
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
      </div>
 <%-- 右邊區塊 END --%>
	  </td>
  </tr>
</table>

</body>

</html>