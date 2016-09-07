<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<body style="background: url('picture/o.jpg') repeat;color:#FFF;">
<div>
  <table width="200" border="0">
    <tr>
      <td>充值 </td>
    </tr>
  </table> 
  <a href="用户首页.jsp">返回首页</a>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <form id="form1" name="form1" method="post" action="recharge">
    <p>金额：
      <label for="textfield"></label>
      <input type="text" name="money" id="" />
    </p>
    <p>账号：
      <label for="textfield2"></label>
      <input type="text" name="id" id="" />
    </p>
    <p>
      <input type="submit" name="button2" id="button2" value="确定" />
    </p>
  </form>
  <p>&nbsp;</p>
</div>
</body>
</html>