<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="utf-8" import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>欢迎来到此系统</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
</head>
<body style="background: url('picture/o.jpg') repeat;color:#FFF;">
	<table width="533" height="496" border="0">
		<tr>
			<td height="81"><form id="form2" name="form2" action="">
					<label for="name">
						<div align="center">
							<strong>欢迎来到IFTTT系统</strong>
						</div>
					</label>
				</form></td>
		</tr>

		<tr>
			<td width="469" height="90"><form action="LOGIN" method="post"
					name="form1">
			  <p>
						<label> <input name="id" type="text" id="id"></label>
					</p>
					<p>
						<input name="password" type="password" id="password" />
					</p>
					<p> <input
							type="submit" name="button" id="button" value="login" />
					  <input type="submit" name="button" id="button" value="register" />
					</p>
				</form></td>
			<td width="469" height="90"><form id="form5" name="form5"
					action="注册界面.jsp">
			  <p><label></label>
			  </p>
				</form></td>
		</tr>
	</table>
</body>
</html>