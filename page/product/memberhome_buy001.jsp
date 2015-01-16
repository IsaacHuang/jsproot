<%@page import="java.util.*"%>
<%@ page contentType="text/html;charset=big5"language="java" import="java.sql.*"%>
<%@page pageEncoding="MS950"%>
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
<title>=歡迎光臨小雞蛋糕店=</title>
</head>

<body background="../material/1173979039.jpg">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="800" background=" ../material/1173979039.jpg">
  <!-- MSTableType="layout" -->
  <tr>
    <td height="194" colspan="3" valign="top">
      <!-- MSCellType="DecArea" -->

      <p align="center">  
		<img border="0" src="../material/top.gif" width="798" height="90"></p>
      <p align="center">  
		<img border="0" src="../material/p113558341163.gif" width="450" height="50"><img border="0" src="../material/p113558341163.gif" width="450" height="50"></td>
  </tr>
	<tr>
    <td valign="top" width="108">
      <p align="center"> 
		<img border="0" src="../material/welcomepiyo003.gif" width="102" height="92"></p>
      <p align="center"><b>============</b>
		<a href="../index.jsp"><img border="0" src="../material/button1F.jpg" width="100" height="33"></a>
		<a href="../member/center.htm"><img border="0" src="../material/buttonB.jpg" width="100" height="33"></a>
		<a href="../product/productList.htm"><img border="0" src="../material/button15.jpg" width="100" height="33"></a>
		<a href="../member/memberhome_join04.jsp"><img border="0" src="../material/button1B.jpg" width="100" height="33"></a>
		<a href="../board/boardMessage.jsp"><img border="0" src="../material/button16.jpg" width="100" height="33"></a>
		<a href="mailto:benny634@gmail.com?subject=Hello cake:"><img border="0" src="../material/piyos011.gif" width="62" height="80"></a></p>

		</td>
		
		
    <td  colspan="2" valign="top">
      <!-- MSCellType="ContentBody" -->
   <p align="center">
   <img border="0" src="../material/sche002.gif" width="100" height="100">
<font face="Arial Unicode MS" size="6"><u><b><font color="#008000">會員中心<br>
</font></b></u></font><b> <font size="6" color="#FF0000" face="Dotum"> =我的購物車=</font></b>
          <div align="left">
     <%
        String  interest[] = request.getParameterValues("Product_Id");
        int q=0;
        int tota=0;
        int g=interest.length;
        out.println("產品名稱<br>");
        
        while(rs.next())
        {  
  		  if(interest[q].equals(rs.getString(1)))
           {
            tota=tota+rs.getInt(4);
            out.println(rs.getString(2)+"--->"+rs.getString(4)+"元</br>"); 
            
            if(q+1<g)q++;
           }
          
        }
         out.println("<font size='5' color='#FF0000'>總價為"+tota+"元</font>");
         session.setAttribute("total",tota);
     %>     
            </div>
            
    		<form method="POST" action="memberhome_buy03.jsp">
		
			<p align="center">
			<a href="memberhome_buy03.jsp">
			
			<img border="0" id="img1" src="../material/button6.jpg" 
			height="20" width="100" alt="確定" 
			fp-style="fp-btn: Glass Rectangle 4" fp-title="確定" 
			onMouseOver="FP_swapImg('../material/button7.jpg')" 
			onMouseOut="FP_swapImg('../material/button6.jpg')" 
			onMouseDown="FP_swapImg('../material/button8.jpg')"
			onMouseUp="FP_swapImg('../material/button7.jpg')"></a>
			
			</p>
		</form>
                    
    	</table>

			
</td>
  </tr>
</table>

</body>

</html>