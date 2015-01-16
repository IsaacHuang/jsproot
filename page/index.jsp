<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-tw">
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<title>戰地秘境</title>
</head>
<body background="material/1173979039.jpg">





<table border="0" cellpadding="0" cellspacing="0" width="100%" >
  <tr>
    <td colspan="3" valign="top">

      <p align="center">
	  	
	  </p>
	  <div align="left">   
	  
<% 

	if( session.getAttribute("id") != null ){
			out.print("<font><b><font size='3' color='#FFFFFF'>歡迎您，" + session.getAttribute("id")+"</font>");
			out.print("<form name='form1' method='post' action='member/outUser.jsp'><input type='submit' name='Submit' value='登出'></form>");
			
	}else{
	
%>


<form name="form1" method="post" action="member/check.jsp">
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
	  <img border="0" src="material/welcomepiyo003.gif" width="336" height="72">
        <b>============</b><br>
		
   <a href="index.jsp"><img border="0" src="material/button1F.jpg" width="153" height="32"></a><br>
   <a href="member/center.jsp"><img border="0" src="material/buttonB.jpg" width="153" height="32"></a><br>
   <a href="product/productList.jsp"><img border="0" src="material/button15.jpg" width="153" height="32"></a><br>
   <a href="member/join04.jsp"><img border="0" src="material/button1B.jpg" width="153" height="32"></a><br>
   <a href="board/boardMessage.jsp"><img border="0" src="material/button16.jpg" width="153" height="32"></a><br>
   <a href="about/about.jsp"><img border="0" src="material/aboutus.jpg" width="153" height="32"></a><br>
		<b>============</b><br>

   </p>

 <%-- 左邊區塊 END --%>





   </td>





		
    <td colspan="2" valign="top">
 <%-- 右邊區塊 START --%>
 
 
 
      <div align="right">
	  
	  <img border="0" src="material/news001.gif" width="266" height="43"><br><br>
      
	  
	  
	  </p> 
	  
	  <img border="0"src="material/in001.png" width="701" height="36"><br>
	  <iframe width="690" height="315" src="http://www.youtube.com/embed/x91_YAkipQ0" frameborder="0" allowfullscreen></iframe>
	  	  <img border="0" src="material/in002.png" width="701" height="351"><br>
	  
	  
	  
	  
      </div>
	  
	  
	  
	  
	  
	  
	  
 <%-- 右邊區塊 END --%>
	  </td>
  </tr>
</table>

</body>

</html>