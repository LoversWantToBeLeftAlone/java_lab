<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="utf-8" import="java.sql.*" import="servlet.*"
	errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body style="background: url('picture/o.jpg') repeat; color: #FFF; font-weight: bold;">
	<table width="649" height="264" border="0">
		<tr>
			<td width="124" height="256"><form id="form1" name="form1"
					method="post" action="MODIFYINFORMATION">
					<p>修改信息</p>
			  <p>&nbsp;</p>
					<p>
					  <label for="姓名">姓名：    </label> <input type="text" name="name"
							id="name" />
			  </p>
					<p>
					  <label for="性别">性别：</label> <input type="text" name="sex" id="sex" />
					</p>
					<p>
					  <label for="身份证">身份：</label> <input type="text" name="idnumber"
							id="idnumber" />
					</p>
					<p>
						<label for="原密码">密码：</label> <input type="text" name="old_number"
							id="old_number" />
			  （原密码）</p>
			  <p>
				<label for="新密码">密码： </label><input type="text"
							name="new_password" id="new_password" />
					（新密码）</p>
					<p>
					  <label for="居住地">住址</label>
					  ：<input type="text" name="address"
							id="address" />
					</p>
			  <p>
						<label for="余额">余额：</label> <input type="text" name="money"
							id="money" />
			  </p>
					<p>
						<input type="submit" name="Submit" value="提交">
			        <a href="用户首页.jsp">取消</a></p>
				</form></td>
		  <td width="125"><p></p>
			  <p>&nbsp;
			  </p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
		  <p>&nbsp;</p></td>
		</tr>
	</table>
</body>
</html>