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
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  	
		
				</font><font face="Arial Unicode MS" size="6"><u><b>
				<font color="#FFFFFF">�|������</font></b></u> 
	    </font>
		  <p align="center"><p align="center"><b>
		  <font size="6" color="#FFFFFF">
		<<�|����ƶ�g>></font></b></p>
		<p align="center">
		  
		<p align="center">�@</p>
		
		
		<form name="user" method="post" action="account.jsp">
		  <p align="center" ><font color="#FFFFFF">�n�J�b��:</font>
              <INPUT TYPE="TEXT" NAME="id" SIZE=12>
  <font color="#FFFFFF">(���n)</font></p>
		  <p align="center"><font color="#FFFFFF">�n�J�K�X:</font>
              <INPUT TYPE="password" NAME="pwd" SIZE=12>
  <font color="#FFFFFF">���n)</font></p>
		  <p align="center"><font color="#FFFFFF">�m�W:</font>
            <INPUT TYPE="TEXT" NAME="name" SIZE=20>
<font color="#FFFFFF">(���n)</font></p>
		  <p align="center"><font color="#FFFFFF">�q�l�l��:</font>
              <INPUT TYPE="TEXT" NAME="email" SIZE=20>
  <font color="#FFFFFF">(���n)</font></p>
		  <p align="center"><font color="#FFFFFF">�q�ܸ��X:</font>
              <INPUT TYPE="TEXT" NAME="tel" SIZE=20>
  <font color="#FFFFFF">(���n)</font></p>
		  <p align="center"><font color="#FFFFFF">�a�} :</font>
            <select name="Receivr_Address">
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
          </p>
		      <p align="center">
			  <INPUT TYPE="TEXT" NAME="add" SIZE=40>
  <font color="#FFFFFF">(���n)</font></p>
		  <p align="center"><font color="#FFFFFF">�ʧO:</font>
              <label>
              <select name="gender" id="gender">
                <option value="0">�k</option>
                <option value="1">�k</option>
              </select>
              </label>
  <font color="#FFFFFF">(���n)</font></p>
		  <p align="center"><font color="#FFFFFF">¾�~:</font>
              <INPUT TYPE="TEXT" NAME="occupaidon" SIZE=20>
  <font color="#FFFFFF">(���n)</font></p>
		  <p align="center"><font color="#FFFFFF">�ͤ�:</font>
              <INPUT TYPE="TEXT" NAME="bir" SIZE=20>
  <font color="#FFFFFF">(���n)</font>  </p>
		  <p align="center">
    <input type="SUBMIT" name="submit" value="���e">
    <input type="RESET"  name="reset"  value="�M��">
          </p>
		</form>
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>