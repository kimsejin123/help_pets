<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
	#logo {
		display: block;
		margin: 0 auto;
		width: 400px; height: 150px;
	}
	#find_form {
		text-align: center;
		margin-top: 100px;
	}
	input[type=text],input[type=password] {
		width: 300px;
		padding: 12px;
	}
	input[type=submit] {
		width: 300px;
		padding: 13px;
		background-color: #FFCD28;
		border: 1px solid #FFB914;
	} 
	#sub {
		font-size: 13px;
	}
	a{
		text-decoration: none;
	}
	a:visited{
		color: black;
	}
	body {
		background-color: rgb(240,240,240);
	}
</style>
</head>
<body>
	<div id="logo" style="text-align: center;">
		<a href="main.jsp"><img alt="logo" src="../icon_images/logo.png"></a>
	</div>
	
	<div>
		<form id="find_form" action="" method="post">
			<!-- h3 추가(샘) -->
			<h3 style="text-align: center;">아이디 찾기</h3>
			<div><input type="text" name="email" placeholder="이메일을 입력해주세요."></div><br>
			<input type="submit" value="아이디 찾기" >
		</form><br><br><br><br><br>
		<hr align="center" style="width: 50%;">
		<form id="find_form" action="" method="post">
			<!-- h3 추가(샘) -->
			<h3 style="text-align: center;">비밀번호 찾기</h3>
			<div><input type="text" name="id" placeholder="아이디를 입력해주세요."></div><br>
			<div><input type="password" name="pw" placeholder="비밀번호를 입력해주세요."></div><br>
			<input type="submit" value="비밀번호 찾기" >
		</form>
	</div>	
</body>
</html>