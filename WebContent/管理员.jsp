<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage="" import="connect.connectToMySql" import="Dao.consumer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script language="javascript">
</script>
</head>

<body style="background: url('picture/o.jpg') no-repeat; color: #FFF;">
	<div>
	  <blockquote>
	    <blockquote>
	      <p><em>你好！管理员</em></p>
        </blockquote>
      </blockquote>
</div>
	<div>
		<p>
			<strong>消息管理</strong> <a href="私信1.jsp">私信</a> <a href="公告1.jsp">公告</a>
		</p>
	</div>
	<div>
		<p>
			<strong>会员等级修改</strong>
		</p>
		<form id="form1" name="form1" method="post" action="admin">
			<p>
				<label for="textfield"></label> 账号： <input type="text" name="id"
					id="" />
			</p>
			<p>
				<label for="textfield2"></label> 等级： <input type="text" name="level"
					id="level" />
			</p>
			<p>
				<input type="submit" name="button" id="button" value="提交" />
			</p>
		</form>
	</div>
<div>
		<p>
			<strong>查看会员资料</strong>
		</p>
		<form id="form2" name="form2" method="post" action="display">
			<p>
				<label for="textfield"></label> 账号： <input type="text" name="account"
					id="" />
			</p>
			<p>
				<input type="submit" name="button" id="button" value="确定" />
			</p>
		</form>
</div>
<div>
	  <p><strong>发布消息</strong>	  </p>
	  <form id="form3" name="form3" method="post" action="sendMessage">
	    <p>
	      <label for="textfield4"></label>
	      内容：
	      <label for="textfield5"></label>
	      <input type="text" name="textfield" id="textfield" />
          <label for="select"></label>
           to:  
           <select name="select" size="1" id="select">
            <option value="public">public</option>
            <option value="private">private</option>
          </select>
	    </p>
	    <p>账号：
	      <label for="textfield3"></label>
	      <input name="ID" type="text" id="ID" />
	      (如果是私信请在这里输入接收者ID)
	    </p>
	    <p>
	      <input type="submit" name="button2" id="button2" value="发送" />
	    </p>
	    <p>&nbsp;</p>
	  </form>
	  <a href="登录界面.jsp">退出账号</a></div>
	<p>&nbsp;</p>
</body>
</html>