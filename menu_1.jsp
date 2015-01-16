<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<title></title>
<style type="text/css">
<!--
body {
	background-color: #CDC0A0;
}
-->
</style>
	<body>
		<form name="Login" method="post" action="logInAlready_form.jsp">
			帳號<input type="text" name="account">
			<br>
			<br>密碼<input type="password" name="password">
			<br><input type="submit" name="submit" value="登入">
		</form>
		<%
			out.print("<tr>您尚未登入</tr>");
		%>
		<form name="form1" method="post" action="add.jsp">
			<font color="926387"><h3>留言板：<h3></font>
			<br>姓名：<input type="text" name="name">
			<br>標題：<input type="text" name="subject">
			<br>內容：<textarea name="content" rows="5"></textarea>
			<input type="submit" name="Submit" value="送出">
			<input type="Reset" name="Reset" value="重新填寫">
		</form>
		<%
		try{
			//Step 1:載入資料庫驅動程式
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url="jdbc:mysql://localhost";
			Connection con=DriverManager.getConnection(url,"root","root");String sql="use jsp";
			con.createStatement().execute(sql);
			if(con.isClosed())
					out.print("建立連線失敗");
			try{
					//Step 4:執行SQL指令，若要操作記錄集，需使用executeQuery，才能傳回ResultSet
					sql="select * from guestbook";//算出共幾筆留言
					ResultSet rs=con.createStatement().executeQuery(sql);
					//先移到檔尾，getRow()後，就可知道共有幾筆記錄
					rs.last();
					int total_content=rs.getRow();
					out.print("共"+total_content+"筆留言<p>");
					//每頁顯示5筆，算出共幾頁
					int page_num=(int)Math.ceil((double)total_content/5.0);//無條件進位
					if(page_num==0)//無留言時將頁數指標定為1
						page_num=1;
					out.print("請選擇頁數");
					//使用超連結方式，呼叫自己，使用get方式傳遞參數(變數名稱為page)
					for(int i=1;i<=page_num;i++)//使用get傳輸方式，建立1,2,.....頁超連結
					{
						out.print("<a href='menu_1.jsp?page="+i+"'>"+i+"</a>&nbsp;");
					}
					out.print("<p>");	
					//讀取page變數
					String page_string=request.getParameter("page");
					if(page_string==null)
						page_string="1";//無留言時將頁數指標定為1
					Integer current_page=Integer.valueOf(page_string);//將page_string轉成整數
					//Integer current_page=Integer.valueOf(request.getParameter("page"));
					//計算開始記錄位置
					//Step 5:顯示結果
					int start_record=(current_page-1)*5;
					//遞減排序，讓最新的資料排在最前面
					sql="select name, subject, content from guestbook";
					//sql+=start_record+",5";
					/*上述語法解讀如下：
					current_page.....select * from guestbook order by no desc limit
					current_page=1:select * from guestbook order by no desc limit 0,5 //從第0筆顯示5筆
					current_page=2:select * from guestbook order by no desc limit 5,5 //從第5筆顯示5筆
					current_page=3:select * from guestbook order by no desc limit 10,5 //從第10筆顯示5筆*/
					rs=con.createStatement().executeQuery(sql);
					//逐筆顯示，直到沒有資料(最多還是5筆)
					while(rs.next()){
						for(int i=1;i<4;i++){
							if(i==1)
								out.print("訪客姓名："+rs.getString(i)+"<br>");
							if(i==2)
								out.print("留言主題："+rs.getString(i)+"<br>");
							if(i==3)
								out.print("留言內容："+rs.getString(i)+"<br>");
						}
						//out.print("留言主題："+rs.getString(4)+"<br>");
						//out.print("留言主題："+s.getString("subject")+"<br>");
						//out.print("訪客姓名："+rs.getString(2)+"<br>");
						//out.print("訪客姓名："+s.getString("name")+"<br>");
						//out.print("E-mail:"+rs.getString(3)+"<br>");
						//out.print("E-mail:"+rs.getString("mail")+"<br>");
						//out.print("留言內容："+rs.getString(5)+"<br>");
						//out.print("留言內容："+s.getString("content")+"<br>");
						//out.print("留言時間："+rs.getString(6)+"<br><hr>");
						//out.print("留言時間："+rs.getString("putdate")+"<br><hr>");
					}
				
					//Step 6:關閉連線
					con.close();
			}
			catch(SQLException sExec)
			{
				out.print("SQL錯誤");
			}
		}
		catch(ClassNotFoundException err){
		out.print("Class 錯誤");
	}
		%>
	</body>
</html>