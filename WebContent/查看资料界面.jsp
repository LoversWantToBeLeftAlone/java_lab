
<%
	String name = LOGIN.c.getName();
	String sex = LOGIN.c.getSex();
	String address = LOGIN.c.getAddr();
	int money = LOGIN.c.getMoney();
	int level = LOGIN.c.getLevel();
%>

<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" import="servlet.*" import="Dao.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body style="background: url('picture/o.jpg') repeat;color:#FFF;">
	<table width="669" height="269" border="0">
		<caption>查看资料</caption>
		<tr>
			<td width="371" height="213"><form id="form1" name="form1"
					method="post" action="">
					<p>
						<label for="1">姓名：</label> <input name="1" type="text" id="1"
							value=<%=name%> readonly />
					</p>
					<p>
						<label for="2">性别：</label> <input name="2" type="text" id="2"
							value=<%=sex%> readonly />
					</p>
					<p>
						<label for="3">住所：</label> <input name="3" type="text" id="3"
							value=<%=address%> readonly />
					</p>
					<p>
						<label for="4">金额：</label> <input name="4" type="text" id="4"
							value=<%=money%> readonly />
					</p>
					<p>
						<label for="5">等级：</label> <input name="5" type="text" id="5"
							value=<%=level%> readonly />
					</p>
					<p>
						<label for="6">积分：</label> <input name="6" type="text" id="6" 
						    value=<%=level*10%> readonly />
					</p>
					
					<p>
					<a href="用户首页.jsp">返回</a>
				</p>
				</form></td>
			<td width="280">

			</td>
		</tr>
	</table>
</body>
</html>