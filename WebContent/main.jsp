<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<script language="javascript">
	var xmlHttp;
	window.onload = function() {
		doStart();
	}
	function createXMLHttpRequest() {
		if (window.ActiveXObjec) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		} else if (window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();
		}
	}
	function doStart() {
		createXMLHttpRequest();
		var url = "dyupdate?task=reset";
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}
	function startCallBack() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				setTimeout("pollserver()", 5000);
				refreshTime();
			} else {
				alert(xmlHttp.status);
			}
		}
	}
	function pollserver() {
		createXMLHttpRequest();
		var url = "dyupdate?task=foo";
		xmlHttp.open("GET", url, true);
		xmlHttp.onreadystatechange = pollcallback;
		xmlHttp.send(null);
	}

	function pollcallback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var message = xmlHttp.responseXML
						.getElementByTagName("message")[0].firstChild.data;
				if (message != done) {
					var new_row = createRow(message);
					var table = document.getElementByTagName("dyuodatearea");
					var table_body = table.getElementByTagName("tbody").item[0];
					var first_row = table_body.getElementByTagName("tbody").item[1];
					table_body.insertBefore(new_row, first_row);
					setTimeOut("pollserver", 5000);
					refreshTime();
				} else
					doStart();
			} else
				alert(xmlHttp.status);
		}
	}
	function createRow(message) {
		var row = document.createElement("tr");
		var cell = document.createElement("td");
		var cell_data = document.createTextNode(message);
		cell.apendChild(cell_data);
		row.appendChild(cell);
		return row;
	}

	function refreshTime() {
		var time_span = document.getElementById("time");
		var time_val = time_span.innerHTML;
		var int_val = parseInt(time_val);
		var new_int_val = int_val - 1;
		if (new_int_val > -1) {
			setTimeout("refreshTime()", 5000);
			time_span.innerHTML = new_int_val;
		} else
			time_span.innerHTML = 5;
	}
</script>
</head>
<body
	style="background: url('picture/bgc.png') repeat; font-size: 15px;">
	<h1>这是一个很好的教学</h1>
	这个页面将自动刷新
	<input type="button" value="加载" id="go" onclick="doStart();" />
	(注意加载过程中不要点击加载按钮！)
	<p>
		页面将在<span id="time"></span>秒后刷新
	</p>
	<table id="dyupdatearea" align="left" border="0">
		<tbody>
			<tr id="row0">
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
