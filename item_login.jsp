<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<html>
<head>
<title>item</title>
</head>
<style type="text/css">
<!--
body {
	background-color: #CDC0A0;
}
-->
</style>
<body>
<table BORDER=1 WIDTH=100%>
<%
try {
//Step 1: ���J��Ʈw�X�ʵ{�� 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: �إ߳s�u 	
        String url="jdbc:mysql://localhost/";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","root");
        if(con.isClosed())
           out.println("�s�u�إߥ���");
        else {
//Step 3: ��ܸ�Ʈw   
           sql="use jsp";
           con.createStatement().execute(sql);
//Step 4: ���� SQL ���O, �Y�n�ާ@�O����, �ݨϥ�executeQuery, �~��Ǧ^ResultSet	
           sql="select * from product"; //��X�@�X���d��
           ResultSet rs=con.createStatement().executeQuery(sql);

           //�������ɧ�, getRow()��, �N�i���D�@���X���O��
           rs.last();
           int total_content=rs.getRow();
           out.println("�@"+total_content+"�˰ӫ~<p>");
           
           //�C�����5��, ��X�@�X��
           int page_num=(int)Math.ceil((double)total_content/5.0); //�L����i��
		   if (page_num==0) //�L�d���ɱN���ƫ��Эq��1
		       page_num=1;
           out.println("�п�ܭ���");
           //�ϥζW�s���覡, �I�s�ۤv, �ϥ�get�覡�ǻ��Ѽ�(�ܼƦW�٬�page)
           for(int i=1;i<=page_num;i++) //�ϥ�get�ǿ�覡,�إ�1,2,...���W�s��
              {
			   out.print("<a href='item.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html���ť�
           }
           out.println("<p>");
           //Ū��page�ܼ�
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "1";  //�L�d���ɱN���ƫ��Эq��1        
           Integer current_page=Integer.valueOf(page_string);//�Npage_string�ন���
           //Integer current_page=Integer.valueOf(request.getParameter("page"));
	       //�p��}�l�O����m   
//Step 5: ��ܵ��G 
           int start_record=(current_page-1)*5;
           //����Ƨ�, ���̷s����ƱƦb�̫e��
           sql="SELECT * FROM product ORDER BY no DESC LIMIT ";//LIMIT�O����Ǧ^����
           sql+=start_record+",5";
           //�W�z�y�k��Ū�p�U:
           // current_page... select * from guestbook order by no desc limit
           //      current_page=1: select * from guestbook order by no desc limit 0, 5 //�q��0�����5��
           //      current_page=2: select * from guestbook order by no desc limit 5, 5 //�q��5�����5��
           //      current_page=3: select * from guestbook order by no desc limit 10, 5//�q��10�����5��

           rs=con.createStatement().executeQuery(sql);
		   int a = 0;
		   int count = 0;
//  �v�����, ����S�����(�̦h�٬O5��)
           while(rs.next())
                {
				  


				  
				  while(a!=1)
				  {
				  out.println("<tr><td></td><td>�ӫ~�W��</td><td>�ӫ~����</td><td>�ӫ~����</td><td>�ƶq</td><td></td></tr>");
				  a=1;
				  }
			
				  out.print("<tr><td rowspan = 2><img src="+rs.getString("itemlink")+"></td>");
                  out.println("<tr><td>"+rs.getString("itemname")+"</td>");
				  out.println("<td>"+rs.getString("itemintro")+"</td>");
				  out.println("<td>"+rs.getString("price")+"��</td>");
				  out.println("<td>"+rs.getString("quantity")+"��</td>");
				  out.println("<td><form name='formm' method='post' action='order.jsp'><input type='hidden' name='rrr' value="+rs.getString("itemname")+"><input type='hidden' name='rrr1' value="+rs.getString("quantity")+">");
				  out.println("<input type='number' required=required' name='quantity' min='1' max="+rs.getString("quantity")+"><input type='submit' name='Submit' value='��J�ʪ���'></form></td></tr>");
				 //out.println("�d���D�D:"+rs.getString("subject")+"<br>");
                 //out.println("�X�ȩm�W:"+rs.getString(2)+"<br>");
				 //out.println("�d���H:"+rs.getString("name")+"<br>");
                 //out.println("E-mail:"+rs.getString(3)+"<br>");
				 //out.println("E-mail:"+rs.getString("mail")+"<br>");
                 //out.println("�d�����e:"+rs.getString(5)+"<br>");
				 //out.println("�d�����e:"+rs.getString("content")+"<br>");
                 //out.println("�d���ɶ�:"+rs.getString(6)+"<br><hr>");
				 //out.println("�d���ɶ�:"+rs.getString("date")+"<br><hr>");
          }
//Step 6: �����s�u
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL���~");
    }
}
catch (ClassNotFoundException err) {
      out.println("class���~"+"menu");
}
%>
</table>
</body>
</html>