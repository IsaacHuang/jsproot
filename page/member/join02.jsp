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
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  	
		
				</font><font face="Arial Unicode MS" size="6"><u><b>
				<font color="#FFFFFF">會員中心</font></b></u> 
	    </font>
		  <p align="center"><p align="center"><b>
		  <font size="6" color="#FFFFFF">
		<<會員資料填寫>></font></b></p>
		<p align="center">
		  
		<p align="center">　</p>
		
		
		<form name="user" method="post" action="account.jsp">
		  <p align="center" ><font color="#FFFFFF">登入帳號:</font>
              <INPUT TYPE="TEXT" NAME="id" SIZE=12>
  <font color="#FFFFFF">(必要)</font></p>
		  <p align="center"><font color="#FFFFFF">登入密碼:</font>
              <INPUT TYPE="password" NAME="pwd" SIZE=12>
  <font color="#FFFFFF">必要)</font></p>
		  <p align="center"><font color="#FFFFFF">姓名:</font>
            <INPUT TYPE="TEXT" NAME="name" SIZE=20>
<font color="#FFFFFF">(必要)</font></p>
		  <p align="center"><font color="#FFFFFF">電子郵件:</font>
              <INPUT TYPE="TEXT" NAME="email" SIZE=20>
  <font color="#FFFFFF">(必要)</font></p>
		  <p align="center"><font color="#FFFFFF">電話號碼:</font>
              <INPUT TYPE="TEXT" NAME="tel" SIZE=20>
  <font color="#FFFFFF">(必要)</font></p>
		  <p align="center"><font color="#FFFFFF">地址 :</font>
            <select name="Receivr_Address">
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
          </p>
		      <p align="center">
			  <INPUT TYPE="TEXT" NAME="add" SIZE=40>
  <font color="#FFFFFF">(必要)</font></p>
		  <p align="center"><font color="#FFFFFF">性別:</font>
              <label>
              <select name="gender" id="gender">
                <option value="0">女</option>
                <option value="1">男</option>
              </select>
              </label>
  <font color="#FFFFFF">(必要)</font></p>
		  <p align="center"><font color="#FFFFFF">職業:</font>
              <INPUT TYPE="TEXT" NAME="occupaidon" SIZE=20>
  <font color="#FFFFFF">(必要)</font></p>
		  <p align="center"><font color="#FFFFFF">生日:</font>
              <INPUT TYPE="TEXT" NAME="bir" SIZE=20>
  <font color="#FFFFFF">(必要)</font>  </p>
		  <p align="center">
    <input type="SUBMIT" name="submit" value="遞送">
    <input type="RESET"  name="reset"  value="清除">
          </p>
		</form>
	  
	  
	  
      </div>
 <%-- 右邊區塊 END --%>
	  </td>
  </tr>
</table>

</body>

</html>