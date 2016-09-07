<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="utf-8" import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
</head>

<body style="background: url('picture/o.jpg') repeat;color:#FFF;">
<form id="form1" name="form1" method="post" action="STORETASK">
		<label> <select name="select">
				<option value="1">定时</option>
				<option value="2">指定邮箱收到邮件</option>
				<option value="3">指定ID发布包含指定内容的微博</option>
				<option value="4">指定ID在指定时间内未发布微博</option>
		</select>
		</label> <select name="select1">
			<option value="1">发微博</option>
			<option value="2">发邮件</option>
		</select>
		<p>
			<label></label> 日期 <label> <input name="date" type="text"
				id="date" />
			</label>
		</p>
		<p>
			时间 <label> <input name="time" type="text" id="time" />
			</label>
		</p>
		<p>
			内容 <label> <textarea name="content" id="content"></textarea>
			</label>
		</p>
		<p>&nbsp;</p>
		<p>
			<input type="submit" name="Submit2" value="确定" />
		</p>
	</form>
	<p>
		<a href="用户首页.jsp">取消</a>
    <a href="用户首页.jsp">返回首页</a></p>
</body>
</html>
