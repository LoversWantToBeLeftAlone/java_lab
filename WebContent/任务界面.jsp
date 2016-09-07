<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="utf-8" import="java.sql.*" import="task.*"
	import="servlet.*" import="Dao.*" import="java.util.ArrayList"
	import="connect.*" import="servlet.LOGIN" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<% 
String id=LOGIN.c.getID();
consumer c=connectToMySql.showinformation(id);
ArrayList<TASK> list = connectToMySql.getAllTask(id); // 用链表存储TASK，一个用户一个任务表
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
</head>

<body  style="background: url('picture/o.jpg') repeat;color:#FFF;">
	<form id="form1" name="form1" method="post" action="PERFORMTASK">
		<label> <select name="select" size="1" id="select">
		        <option value="0">请选择</option>
				    <%if(!list.isEmpty()){
        	 for(int i=0;i<list.size();i++){%>
        		  <option value="<%=i+1%>"><%=i+1%></option>
        	<%}
          }%>
		</select>
		</label> <label for="select"></label> <label><br /> <br /> <br /> </label>
		<input type="submit" name="Submit" value="start" /> <label></label> <label></label>
		<label> <input type="submit" name="Submit" value="pause" />
		</label> <label> <input type="submit" name="Submit" value="restart" />
		</label>
	</form>
	<label></label>
	<label><br /> </label>
	<p>
		<a href="用户首页.jsp">返回首页</a>
	</p>
	<p>&nbsp;</p>
</body>
</html>
