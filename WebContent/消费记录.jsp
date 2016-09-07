<%@ page contentType="text/html; charset=utf-8" language="java"  import="java.sql.*"  errorPage=""
import="task.TASK"  import="connect.connectToMySql" import="Dao.consumer" import="java.util.ArrayList"
import="servlet.LOGIN"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%
String id=LOGIN.c.getID();
consumer c=connectToMySql.showinformation(id);
ArrayList<TASK> list = connectToMySql.getAllDoneTask(id);
String detail="records:";
for(int i=0;i<list.size();i++){
int type=list.get(i).FLAG;
String date=list.get(i).date;
String time=list.get(i).time;
String content=list.get(i).content;
 detail+="=======type:"+type+"		date:"+date+"		time:"+time+"		content:"+content;
}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script type="text/javascript">
function load(){
	var content='<%=detail%>';
	document.getElementById("textarea").value=content;
}
</script>
</head>
<body  style="background: url('picture/o.jpg') repeat;color:#FFF;"onload="load()">
<div>
  <p><strong>消费记录</strong></p>
</div>
<div>
  <form name="form" id="form" action="">
    <table width="503" height="190" border="0">
      <tr>
        <td height="49"><label for="select2"></label>
       <label for="select"></label>


        <label for="select3"></label>
        <select name="select" size="1" id="select">
          <option value="0">请选择</option>
          <%if(!list.isEmpty()){
        	 for(int i=0;i<list.size();i++){%>
        		  <option value="<%=i+1 %>"><%=list.get(i).time%></option>
        	<%}
          }%>
        </select>
        <td width="407" rowspan="2"><label for="textarea"></label>
        <textarea name="textarea" id="textarea"  cols="60" rows="15"></textarea></td>
      </tr>
      <tr>
        <td width="86" height="116">&nbsp;</td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </form>
  <p><a href="用户首页.jsp">返回首页</a></p>
  <p>&nbsp;</p>
</div>
<p>&nbsp;</p>

</body>
</html>