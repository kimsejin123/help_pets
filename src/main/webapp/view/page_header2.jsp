<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구해줘펫즈: 페이지헤더</title>
<style type="text/css">
	/* 공통 */
	@font-face {
		font-family: 'NanumBarunGothic';
 		font-style: normal;
 		font-weight: 400;
 		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
 		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
	}
	* {	font-family: 'NanumBarunGothic', sans-serif !important; }
	#hr {
		width: 1200px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
	}
</style>
<style type="text/css">
	#login>a { text-decoration: none; color: black; }
	#login>a:visited { color: black; font-weight: bolder; }
	#login {
		background-color: pink;
		/* display: inline-block; */
		width: 1200px; height: 30px;
		line-height: 30px;
		margin: 0 auto;
		font-size: 12px;
		text-align: right;
	}
</style>
<style type="text/css">
	#menu_wrap {
		width: 1200px;
		margin: 0 auto;
	}
	.main>li {
		display: inline-block;
		float: left;
		width: 20%;
		height: auto;
		line-height: normal;
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
		list-style: none;
		margin: 0px; padding: 0px;
	}
	.sub>li a {
		margin: 0px;
		background: white;
		font-size: 13px;
	}
	.sub>li a:hover {
		color: black;
		background: #FAFAD2;
		border: none;
	}
	#logo>a {
		background-color: white;
		border: none;
	}
</style>
</head>
<body>
	<div id="login">
		<a href="login.jsp">로그인</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;<a href="join.jsp">회원가입</a>
	</div>
	<div id="header">
		<div id="menu_wrap">
			<ul class="main">
				<li id="logo"><a href="main.jsp"><img id="logo" alt="" src="../icon_images/logo_small.PNG"></a>
				<li style="line-height: 60px;"><a href="intro.jsp">보호소소개</a>
					<ul class="sub">
						<li><a href="intro">소개말</a></li>
						<li><a href="intro">오시는길</a></li>
					</ul>
				</li>
				<li style="line-height: 60px;"><a href="#">입양안내</a>
					<ul class="sub">
						<li><a href="ani_list.jsp">입양동물 목록</a></li>
						<li><a href="ani_howto.jsp">입양 방법</a></li>
						<li><a href="ani_center.jsp">입양 센터</a></li>
						<li><a href="ani_review.jsp">입양 후기</a></li>
						<li><a href="ani_register.jsp">입양 등록</a></li>
						<li><a href="ani_list2.jsp">유기동물 목록</a></li>
					</ul>
				</li>
				<li style="line-height: 60px;"><a href="#">봉사활동</a>
					<ul class="sub">
						<li><a href="vol_info.jsp">봉사활동 안내</a></li>
						<li><a href="vol_apply.jsp">봉사활동 신청</a></li>
						<li><a href="vol_review.jsp">봉사활동 후기</a></li>
					</ul>
				</li>
				<li style="line-height: 60px;"><a href="#">커뮤니티</a>
					<ul class="sub">
						<li ><a href="comm_notice.jsp">공지사항</a></li>
						<li><a href="comm_gallery.jsp">갤 러 리</a></li>
						<li><a href="comm_FAQ.jsp">F A Q</a></li>
						<li><a href="comm_shop.jsp">물품나눔</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>