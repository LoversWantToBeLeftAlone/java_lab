<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>修改资料</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
</head>

<body style="background: url('picture/o.jpg') repeat;color:#FFF;">
<table width="649" height="264" border="0">
  <tr>
    <td height="256"><form id="form1" name="form1" method="get" action="">
      <table width="200" border="0">
        <tr>
          <td><strong>查看资料</strong></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>
        <label for="姓名">姓名：</label>
        <input name="姓名" type="text" id="姓名"  	value=<%=session.getAttribute("name")%> readonly="readonly">
    </p>
      <p>
        <label for="性别">性别：</label>
        <input name="性别" type="text" id="性别"   	value=<%=session.getAttribute("sex")%> readonly="readonly" >
        </p>
      <p>
        <label for="余额">余额：</label>
        <input name="余额" type="text" id="余额"     	value=<%=session.getAttribute("money")%> readonly="readonly">
        </p>
      <p>
        <label for="积分">积分：</label>
        <input name="积分" type="text" id="积分"    	value=<%=session.getAttribute("jifeng")%> readonly="readonly">
        </p>
      <p>
        <label for="等级">等级：</label>
        <input name="等级" type="text" id="等级"     	value=<%=session.getAttribute("level")%> readonly="readonly">
        </p>
      <p><a href="管理员.jsp">返回</a></p>
   
    </form>      <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>