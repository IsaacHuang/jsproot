<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
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
	  
	  
	  
	  
	  
	  <font face="Arial Unicode MS" size="6"><font color="#FFFFFF">�d���O</font>


		<a href="board.htm">
		 <a href="board.jsp"><img border="0" src="../material/message.png" width="123" height="28"></a><br>
		<
		<hr>
		
        <p>
		
          <%

		sql="select * from message";
		ResultSet rs=con.createStatement().executeQuery(sql);
		
        int num=0,lastno,lastpage,nowpage,prepage,nextpage,nostart,noend;

        
        rs.last();                                       //�N���в���̫�@��
        lastno = rs.getRow();                         //���X�`��Ƶ���
        lastpage = (int)Math.ceil((double)lastno/5);    //�p��̫�@�����s��
        
        if(request.getParameter("page") != null)      //���o�ǨӪ����X            
            try{
                nowpage = Integer.parseInt(request.getParameter("page"));
            }catch(Exception e){
                nowpage = Integer.parseInt(request.getParameter("p"));
            }
        else
            nowpage = lastpage;
        
        prepage = nowpage -1;                        //�W�@��
        nextpage = nowpage +1;                       //�U�@��
        if(nowpage == 1)                             //�P�_�O�_���Ĥ@��
            prepage =1;
        if(nowpage == lastpage)                      //�P�_�O�_���̫�@��
            nextpage = lastpage;
        
        nostart = nowpage * 5 -4;                    //�p��}�l�s��
        noend = nowpage * 5;                         //�p�⵲���s��
        sql = "select * from message where msgid between "+nostart+" and "+noend;
        rs = con.createStatement().executeQuery(sql);

        while(rs.next()){
 
 
  %>
 
		
        <table width="800" border="2" cellpadding="0" cellspacing="0" bordercolor="#000000">
          <tr>
            <td width="61" bgcolor='#FFFFFF'>�d���H</td>
            <td width="333" bgcolor='#FFFFFF'><% out.println(rs.getString(4)); %></td>
          </tr>
          <tr>
            <td bgcolor='#FFFFFF'>�ɶ�</td>
            <td bgcolor='#FFFFFF'><% out.println(rs.getString(3)); %></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor='#FFFFFF'><% out.println(rs.getString(2)); %></td>
          </tr>
        </table><br>
		
 
 <%
			
			
			
			
            num++;
            if(num==10)
                num=0;
        }
         out.println("<br>");
         con.close();
    %>
        </p>
		
		
		
		
        <form action="boardMessage.jsp?p=<%=nowpage%>" method="post">
        <div align="center">
			<p>&nbsp;</p>
			<p><a href="boardMessage.jsp?page=1"><font size="5" color="#000000"> >>�Ĥ@�� </font></a>
			  <a href="boardMessage.jsp?page=<%=prepage%>"><font size="5" color="#000000">�W�@�� </font></a></a>
			  <a href="boardMessage.jsp?page=<%=nextpage%>"><font size="5" color="#000000">�U�@�� </font></a></a>
			  <a href="boardMessage.jsp?page=<%=lastpage%>"><font size="5" color="#000000">�̫᭶<< </font></a></a></p>
			<font color=000000><p>�ثe����<b><%=nowpage%>/</form><font color=000000></font><%=lastpage%></b></p>
            <p> 
        ��J��ܪ����X�G
				<input type="text"	size="3" name="page"><input type="submit" value="��ܯd��">
   

	  </form>
	  
       
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
      </div>
 <%-- �k��϶� END --%>
	  </td>
  </tr>
</table>

</body>

</html>