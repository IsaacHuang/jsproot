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
	  
	  
	  
	  
	  
	  
	  
	  <font face="Arial Unicode MS" size="6">
	 	 <b><font color="#FFFFFF">�|������</font></b></u> 
	   </font> 
	<p align="center"><font size="6" color="#FFFFFF"><<�[�J�|��>></font></b></p>
	<p align="center">
  
  
	<font size="2" color="#FFFFFF">
		<p>�˷R���U�ȱz�n�A�ܰ����z��ӥ������O�C</p>
		<p>�Ъ`�N�A���z��g���|���ӽЪ��ɡA�z�Y���� �Ԧa���Ҫ� �|�������A</p>
		
		<p>�Ԧa���� �|�q�ӽЪ�����o�z���ӤH��T�A�]�A�m�W�B�q�l�H�c�B�ͤ�B�ʧO�B
		���}�B�q�ܡB¾�~�M��L������ơC</p>
		<p>�z��g����ƷU�ԲӡA�ڭ̷U�ണ�ѱz�һݨD�������T���C</p>
		<p>�����|����A�z�N��o�@�� �Ԧa���� �|���b���A�åi�Ѹӱb���R���ϥ� 
		�Ԧa���� ���Ѫ��Ҧ��|���A�ȳ�~</p>
</font>
<a href="join02.jsp"> <img border="0" src="../material/button10.jpg" width="100" height="20"></a>
	  
	  
	  
	  
	  
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>