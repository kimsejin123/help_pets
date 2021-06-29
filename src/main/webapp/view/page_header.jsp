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
	/* 홈|로그인|회원가입 // 로고 */
	#login_go>a { text-decoration: none; color: #6e6e6e; }
	#login_go>a:visited { color: #6e6e6e;  }
	#login_go>a:hover { color: #FFBC9B; }
	#login_go {
		display: block;
		margin-right: 50px;
		margin-top: 10px;
		float: right;
		font-size: 14px;
	}
</style>
<style type="text/css">
	/* 헤드메뉴 */
	#menu1 {
		position: relative;
		height: 60px;
		text-align: center;
	/* 	z-index: 4; */
	}
	.main {
		width: 1200px; height: 100%;
		margin: 0 auto;
	}
	.main>li {
		float: left;
		width: 20%;
		height: auto;
	/* 	line-height: 60px; */
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
</style>
<style type="text/css">

</style>
</head>
<body>
	<div id="header">
	  	<div id="login_go">
			<a href="login.jsp">로그인</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;<a href="join.jsp">회원가입</a>
		</div>
		<div id="logo_img">
		</div>
		<div id="menu1">
			<ul class="main">
				<li><img id="logo" alt="" src="../icon_images/logo_small.PNG">
				<li style="line-height: 60px;"><a href="intro.jsp">보호소소개</a>
					<ul class="sub">
						<li><a href="intro">소개말</a></li>
						<li><a href="intro">오시는길</a></li>
					</ul>
				</li>
				<li style="line-height: 60px;"><a href="adopt.jsp">입양안내</a>
					<ul class="sub">
						<li><a href="adopt_list">입양동물 목록</a></li>
						<li><a href="adopt_howto">입양 방법</a></li>
						<li><a href="adopt_center">입양 센터</a></li>
						<li><a href="adopt_review">입양 후기</a></li>
						<li><a href="adopt_register">입양 등록</a></li>
						<li><a href="ani_list2">유기동물 목록</a></li>
					</ul>
				</li>
				<li style="line-height: 60px;"><a href="volunteer.jsp">봉사활동</a>
					<ul class="sub">
						<li><a href="vol_info">봉사활동 안내</a></li>
						<li><a href="vol_apply">봉사활동 신청</a></li>
						<li><a href="vol_review">봉사활동 후기</a></li>
					</ul>
				</li>
				<li style="line-height: 60px;"><a href="community.jsp">커뮤니티</a>
					<ul class="sub">
						<li ><a href="comm_notice">공지사항</a></li>
						<li><a href="comm_gallery">갤 러 리</a></li>
						<li><a href="comm_FAQ">F A Q</a></li>
						<li><a href="comm_shop">물품나눔</a></li>
					</ul>
				</li>
			</ul>
		</div>
	<hr id="hr">
	</div>

</body>

</html>