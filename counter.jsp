<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>

<html>
<head><title>訪客計數器</title></head>
<body>
<%
int num;
String sum;

	//application.setAttribute("counter","0");

	sum=(String)application.getAttribute("counter");
	num=Integer.parseInt(sum);
	out.print("目前訪客數："+num+"</br>");
	if(session.isNew())
	num++;
	sum=String.valueOf(num);
	application.setAttribute("counter",sum);

%>
<h3>您是第<%=num%>位訪客</h3>
</body>
</html>