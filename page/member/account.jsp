<%@ page errorPage="ErrPage.jsp"                         
         contentType="text/html;charset=Big5"                   
         import="java.sql.*"                             
%>
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
	  
	  
	  
	  
	  
	  
	  
	  
	  
	
</font><font face="Arial Unicode MS" size="6"><b><font color="#FFFFFF">�|������</font></b></u> </font>

      <p align="center"><b> <font size="6" color="#FFFFFF" face="Dotum"><<�|����ƶ�g>></font></b></p>


        
		
		
		
		                
<%
   request.setCharacterEncoding("Big5");
                                                 
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String add = request.getParameter("add");
	String Receivr_Address = request.getParameter("Receivr_Address");                                     
    String gender = request.getParameter("gender");
	String occupaidon = request.getParameter("occupaidon");
	String bir = request.getParameter("bir");  
	                         
                                        
  try                                                             
   {                                                             
     sql="insert member(ID,pwd,name,tel,receivr_Address,addr,email,gender,occupaidon,bir)";
     sql+="values ('"+id+"','"+pwd+"','"+name+"','"+tel+"','"+Receivr_Address+"','"+add+"','"+email+"','"+gender+"','"+occupaidon+"','"+bir+"')";
   
     con.createStatement().execute(sql);
            out.println("<font size='4' color='#FF0000' face='Dotum'>���U����!!</font>");
            out.println("<font size='4' color='#FF0000' face='Dotum'>���߱z�w�����Ԧa���Ҫ��|��</font></b></p>");                                         
       con.close();                                                                   
   }                                                             
   catch (Exception e)                                             
   {                    
      out.println("<font size='4' color='#FF0000' face='Dotum'>���U���ѡA�нT�{���!!</font><br>");
      out.println(e.getMessage());                                  
   }                                                           
//   
%>                                                          


  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>