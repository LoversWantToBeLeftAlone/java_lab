<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>message!</title>
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
<body onload="document.getElementById('tip').style.height='0px'">
	<div id="shadow"></div>
	<div id="detail"></div>
	<div id="tip">
		<h1>
			<a href="javascript:void(0)" onclick="start()">×</a>message tips
		</h1>
		<p>
			<a href="javascript:void(0)" onclick="showwin()">show details</a>
		</p>
	</div>
	<p>
		<a href="#" onclick="start()">click for unchecked messages</a><br>
		<br>
		<br>
		<br>
</body>
</html>

