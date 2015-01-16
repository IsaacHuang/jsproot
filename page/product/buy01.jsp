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
	  
	  
	  
	  
	  
	  
	  	  <font face="Arial Unicode MS" size="6"><font color="#FFFFFF">訂購</font>
    </font><br>
</font></b></u></font><b> <font size="6" color="#FFFFFF" face="Dotum"> <<我的購物車>></font></b>
          <div align="center">
     <%
        String  interest[] = request.getParameterValues("Product_Id");
        int q=0,qq=0;
        int tota=0;
        int g=interest.length;
		int newnum=0;
        out.println("<font><b><font size='3' color='#FFFFFF'>產品名稱:</font><br>");
        

		
        while(rs.next())
        {  
  		  if(interest[q].equals(rs.getString(1)))
           {

            tota=tota+rs.getInt(4);
            out.println("<font><b><font size='3' color='#FFFFFF'>"+rs.getString(2)+"--->"+rs.getString(4)+"元</br></font>"); 
            
			qq=q+1;
			newnum=rs.getInt("product_num")-1;
			PreparedStatement prestmt = con.prepareStatement("UPDATE product SET product_num=? Where product_id=?");
			prestmt.setInt(1,newnum);
			prestmt.setInt(2,qq);
			prestmt.executeUpdate();


            if(q+1<g)q++;
           }

          
        }

         out.println("<font size='5' color='#FF0000'>總價為"+tota+"元</font>");
         session.setAttribute("total",tota);
     %>     
            </div>
            
    		<form method="POST" action="memberhome_buy03.jsp">
		
			<p align="center">
			<a href="buy02.jsp">
			
			<img border="0" id="img1" src="../material/button6.jpg" 
			height="20" width="100" alt="確定" 
			fp-style="fp-btn: Glass Rectangle 4" fp-title="確定" 
			onMouseOver="FP_swapImg('../material/button7.jpg')" 
			onMouseOut="FP_swapImg('../material/button6.jpg')" 
			onMouseDown="FP_swapImg('../material/button8.jpg')"
			onMouseUp="FP_swapImg('../material/button7.jpg')"></a>
			
			</p>
		</form>
	  
	  
	  
	  
	  
      </div>
 <%-- 右邊區塊 END --%>
	  </td>
  </tr>
</table>

</body>

</html>