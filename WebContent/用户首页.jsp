<%@ page contentType="text/html; charset=utf-8" language="java"
	pageEncoding="utf-8" import="java.sql.*" import="servlet.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>用户主页</title>

<script language="javascript">
	function realSysTime(clock) {
		var now = new Date(); // 创建Date对象 
		var year = now.getFullYear(); // 获取年份 
		var month = now.getMonth(); // 获取月份 
		var date = now.getDate(); // 获取日期 
		var day = now.getDay(); // 获取星期 
		var hour = now.getHours(); // 获取小时 
		var minu = now.getMinutes(); // 获取分钟 
		var sec = now.getSeconds(); // 获取秒钟 
		month = month + 1;
		var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五",
				"星期六");
		var week = arr_week[day]; // 获取中文的星期 
		var time = year + "年" + month + "月" + date + "日 " + week + " " + hour
				+ ":" + minu + ":" + sec; //组合系统时间 
		clock.innerHTML = time; // 显示系统时间 
	}
	window.onload = function() { // 页面加载时调用函数
		window.setInterval("realSysTime(clock)", 1000); // 每1秒运行显示时间的函数
	}
</script>

<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

html, body {
	height: 100%;
}

body {
	font-size: 14px;
	line-height: 24px;
}

#tip {
	position: absolute;
	right: 0px;
	bottom:0px;
	height: 0px;
	width: 180px;
	border: 1px solid #CCCCCC;
	background-color: #eeeeee;
	padding: 1px;
	overflow: hidden;
	display: none;
	font-size: 12px;
	z-index: 10;
}

#tip p {
	padding: 6px;
}

#tip h1, #detail h1 {
	font-size: 14px;
	height: 25px;
	line-height: 25px;
	background-color: #0066CC;
	color: #FFFFFF;
	padding: 0px 3px 0px 3px;
	filter: Alpha(Opacity = 100);
}

#tip h1 a, #detail h1 a {
	float: right;
	text-decoration: none;
	color: #FFFFFF;
}

#shadow {
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: #000000;
	z-index: 11;
	filter: Alpha(Opacity = 70);
	display: none;
	overflow: hidden;
}

#detail {
	width: 500px;
	height: 200px;
	border: 3px double #ccc;
	background-color: #FFFFFF;
	position: absolute;
	z-index: 30;
	display: none;
	left: 30%;
	top: 30%
}
</style>
<script type="text/javascript">
	var handle;
	function start() {
		var obj = document.getElementById("tip");
		if (parseInt(obj.style.height) == 0) {
			obj.style.display = "block";
			handle = setInterval("changeH('up')", 2);
		} else {
			handle = setInterval("changeH('down')", 2)
		}
	}
	function changeH(str) {
		var obj = document.getElementById("tip");
		if (str == "up") {
			if (parseInt(obj.style.height) > 200)
				clearInterval(handle);
			else
				obj.style.height = (parseInt(obj.style.height) + 8).toString()
						+ "px";
		}
		if (str == "down") {
			if (parseInt(obj.style.height) < 8) {
				clearInterval(handle);
				obj.style.display = "none";
			} else
				obj.style.height = (parseInt(obj.style.height) - 8).toString()
						+ "px";
		}
	}
	function showwin() {
		document.getElementsByTagName("html")[0].style.overflow = "hidden";
		start();
		document.getElementById("shadow").style.display = "block";
		document.getElementById("detail").style.display = "block";
	}
	function recover() {
		document.getElementsByTagName("html")[0].style.overflow = "auto";
		document.getElementById("shadow").style.display = "none";
		document.getElementById("detail").style.display = "none";
	}
</script>
</head>

<body style="background: url('picture/o.jpg') repeat;color:#FFF;">
	<table width="647" height="459" border="0" summary="没错，只是首页，没有任何其他的功能">
		<caption>用户首页</caption>
		<tr>
			<td id="clock" />
			<!-- 标签clock，提示运行显示时间的函数 -->

			<td height="28" colspan="0"><div align="right"><a href="新建任务.jsp">新建任务</a>    <a href="查看任务.jsp">查看任务</a>     <a
						href="任务界面.jsp">执行任务</a>
				</div></td>
		</tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
			<td width="285"><form id="form1" name="form1" method="get"
					action="">

					<p>
					  <label for="账号"><img src="picture/Naixu.png" width="190"
							height="190" /><br /> <br /> 账号</label> <label> <input name="id"
							type="text" id="id"
							value=<%=session.getAttribute("id")%> readonly="readonly"></input> <label></label>
					</p>
			  <p>
				<label for="等级">等级</label> <input name="level" type="text"
							id="level" value=<%=LOGIN.c.getLevel()%> readonly="readonly">
				</p>
			  <p>
				<label for="积分">积分</label> <input name="jifeng" type="text"
							id="jifeng" value=<%=LOGIN.c.getLevel()*10%> readonly="readonly" />
			  </p>
					<p>
					<a href="查看资料界面.jsp" target="_blank">查看资料</a></p>
			  <p><a href="修改界面.jsp"
							target="_blank">修改资料</a>
			  </p>
			  <p><a href="公告.jsp">公告</a>   <a href="私信.jsp">私信</a></p>
					<p><a href="充值界面.jsp">充值</a></p>
					<p><a href="消费记录.jsp">消费记录</a></p>
			</form></td>
			<td width="344"><form id="form4" name="form4" method="post" action="">
			  <label for="textarea"></label>
			</form></td>
		</tr>
		<tr>
			<td><form id="form3" name="form3" method="post" action="">
			  <label><a href="登录界面.jsp">退出当前账号</a></label>
			</form></td>
			<td><form id="form2" name="form2" method="post" action="">
					<div align="right"></div>
				</form></td>
		</tr>
	</table>
</body>
</html>
