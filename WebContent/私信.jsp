<%@ page contentType="text/html; charset=utf-8" language="java" 
import="java.sql.*" errorPage="" import ="Dao.Message"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<body style="background: url('picture/o.jpg') repeat;color:#FFF;">
<div>
  <table width="200" height="51" border="0">
    <tr>
      <td><strong>私信</strong></td>
    </tr>
  </table>
  <p><a href="用户首页.jsp">返回</a></p>
  <div>
    <p>&nbsp;</p>
    <form id="form1" name="form1" method="post" action="showPrivateMessage">
      <p>
        <label for="textarea"></label>
        <textarea name="textarea" cols="65" rows="5" readonly="readonly" id="textarea">
        <%=session.getAttribute("content") %>
        </textarea>
      </p>
      <p>
        <input type="submit" name="submit" id="submit" value="last" />
        <input type="submit" name="submit" id="submit" value="show" />
        <input type="submit" name="submit" id="submit" value="delete" />
        <input type="submit" name="submit" id="submit" value="next" />
      </p>
    </form>
    <p>&nbsp;</p>
  </div>
  <p>&nbsp;</p>
</div>
</body>
</html>