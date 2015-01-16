<%@page contentType="text/html; charset=big5" %>
<%@ page import="java.util.*"%>
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
	  
	  
	  
	  		
		
      <p align="center"><u><b><font color="#FFFFFF">會員中心&nbsp; </font></b></u> </font>

      <p align="center"><b>
	  
	  <font size="6" color="#FFFFFF" face="Dotum"> =送貨須知=</font></b></p>
            <p align="left"><font face="Dotum"><b>
		<img border="0" src="../material/check.png" width="1117" height="524">
            <p align="left"><b><font face="Dotum" color="#0000FF">
		
				
		<form method="Post" action="buy03.jsp">
		
		請輸入您的送貨資料: 
	
              <input type="hidden" name="VTI-GROUP" value="0">
              <p>　</p>
		<table BORDER COLS=2 WIDTH="75%" >
    <tr> <td><b>購物者姓名:</b></td>
         <td width="428"><%=session.getAttribute("id")%></td>
    </tr><tr> 
         <td><b>聯絡電話:</b></td>
         <td width="428"><input type="text" name="Buyer_Phone" size=40></td>
    </tr><tr> 
         <td><b>價錢:</b></td>
         <td width="428"><%=session.getAttribute("total")%></td>
    </tr><tr> 
         <td><b>附款方式:</b></td>
         <td width="428"><select name="Pay_Way"><option>信用卡</option><option>銀行匯款</option><option>郵局匯款</option><option>宅配代收, 貨到付款</option></select></td>
    </tr><tr> 
         <td><b>收件人姓名:</b></td>
         <td width="428"><input type="text" name="Receivr_Name" size=40></td>
    </tr><tr> 
         <td><b>收件者區域:</b></td>
         <td width="428"><select name="Receivr_Address">
                <option value="請選擇">請選擇</option>
                <option value="基隆">基隆</option>
                <option value="台北">台北</option>
                <option value="桃園">桃園</option>
                <option value="新竹">新竹</option>
                <option value="苗栗">苗栗</option>
                <option value="台中">台中</option>
                <option value="彰化">彰化</option>
                <option value="雲林">雲林</option>
                <option value="嘉義">嘉義</option>
                <option value="台南">台南</option>
                <option value="高雄">高雄</option>
                <option value="屏東">屏東</option>
                <option value="宜蘭">宜蘭</option>
                <option value="花蓮">花蓮</option>
                <option value="台東">台東</option>
                <option value="澎湖">澎湖</option>
                <option value="金門">金門</option>
                <option value="馬祖">馬祖</option>
              </select>
              </td>
    </tr>
  	<tr>
         <td><b>收件地址:</b></td>
         <td width="428"><input type="text" name="add" size=41></td>
    </tr>
  </table>
<input type="submit" name="Checkout" value="完 成 確 認">
</Form></p>
			
	  
	  
	  
      </div>
 <%-- 右邊區塊 END --%>
	  </td>
  </tr>
</table>

</body>

</html>