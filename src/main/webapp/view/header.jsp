<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	@font-face {
		font-family: 'NanumBarunGothic';
 		font-style: normal;
 		font-weight: 400;
 		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
 		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
	}
	* {
    	font-family: 'NanumBarunGothic', sans-serif !important;
	}
	#menu1 {
		position: relative;
		height: 60px;
		margin-top: 30px;
		z-index: 4;
	}
	.main {
		width: 1000px; height: 100%;
		margin: 0 auto;
	}
	.main>li {
		float: left;
		width: 25%;
		line-height: 60px;
		text-align: center;
		position: relative;	
	}
	
	.main>li:hover .sub {
		left: 0;
	}
	.main>li a {
		display: block;
		color: gray;
		background: white;
		text-decoration: none;
	}
	.main>li a:hover {
		color: black;
		font-weight: bold;
		border-top: 2px solid gold;
		background-color: rgba(220,220,220,0.2);
	}
	.sub {
		position: absolute;
		top: 60px;
		left: -9999px;
		width: 100%;
	}
	.sub>li {
		height: 40px;
		line-height: 40px;
	}
	.sub>li a {
		margin: 0px;
		color: gray;
		background: white;
		text-decoration: none;
		font-size: 13px;
	}
	.sub>li a:hover {
		color: black;
		background: #FAFAD2;
		border: none;
	}
	ul, li {
		list-style: none;
		margin: 0px; padding: 0px;
	}

	#logo {
		display: block;
		margin: 0 auto;
		width: 400px; height: 150px;
	}
	#login_go>a { text-decoration: none; color: black; }
	#login_go>a:visited { color: black; font-weight: bolder; }
	#login_go {
		display: block;
		width: 150px; height: 30px;
		line-height: 30px;
		text-align: center;
		margin-right: 100px;
		margin-top: 10px;
		background-color: #FFCD28;
		border: 2px solid #FFB914;
		border-radius: 2em;
		float: right;
		font-size: 12px;
	}
</style> 
</head>
<body>
	<div id="login_go">
		<!-- ????????? ??????????????? ????????? ??????????????? -->
		<a href="login.jsp">?????????</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;<a href="join.jsp">????????????</a>
	</div>
	<div id="header">
		
		<div id="logo" style="text-align: center;">
			<a href="main.jsp"><img alt="logo" src="../icon_images/logo_1.PNG"></a>
		</div>
		
		<div id="menu1">
			<ul class="main">
				<li><a href="#">???????????????</a>
					<ul class="sub">
						<li><a href="intro.jsp">?????????</a></li>
						<li><a href="intro_location.jsp">????????????</a></li>
					</ul>
				</li>
				<li><a href="#">????????????</a>
					<ul class="sub">
						<li><a href="ani_list">???????????? ??????</a></li>
						<li><a href="ani_howto">?????? ??????</a></li>
						<li><a href="ani_center">?????? ??????</a></li>
						<li><a href="ani_review">?????? ??????</a></li>
						<li><a href="ani_register">?????? ??????</a></li>
						<li><a href="ani_list2">???????????? ??????</a></li>
					</ul>
				</li>
				<li><a href="#">????????????</a>
					<ul class="sub">
						<li><a href="vol_info">???????????? ??????</a></li>
						<li><a href="vol_apply">???????????? ??????</a></li>
						<li><a href="vol_review">???????????? ??????</a></li>
					</ul>
				</li>
				<li><a href="#">????????????</a>
					<ul class="sub">
						<li ><a href="comm_notice">????????????</a></li>
						<li><a href="comm_gallery">??? ??? ???</a></li>
						<li><a href="comm_FAQ">F A Q</a></li>
						<li><a href="comm_shop">????????????</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>