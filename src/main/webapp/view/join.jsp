<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
	#join_form {
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
	p{
		color: red;
	}
	#id_dup{
		display: none;
	}
	#id_error{
		display: none;
	}
	#pw_error{
		display: none;
	}
	#pw_not_same{
		display: none;
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
		<form id="join_form" action="" method="post">
			<div>
				<label for="email">*이메일</label><br><br>
				<input type="text" name="email" placeholder="이메일을 입력해주세요">
			</div><br>
			<div>
				<label for="id" text-align="left">*아이디</label><br><br>
				<input type="text" name="id" placeholder="사용하실 아이디를 입력해주세요">
				<!-- display:none 은 여백을 남기지 않고 숨겨지지만, visibility:hidden의 경우에는 여백을 남긴 채 숨겨지게 된다. -->
				<p id="id_dup">이미 사용중인 아이디입니다</p>
				<p id="id_error">양식에 맞게 아이디를 작성해주세요</p>
			</div><br>
			<div>
				<label for="pw">*비밀번호</label><br><br>
				<input type="password" name="pw" placeholder="사용하실 비밀번호를 입력해주세요">
				<p id="pw_error">양식에 맞게 비밀번호를 작성해주세요</p>
			</div><br>
			<div>
				<label for="pw_re">*비밀번호 재확인</label><br><br>
				<input type="password" name="pw_re" placeholder="위에 입력하신 것과 동일한 비밀번호를 입력해주세요">
				<p id="pw_not_same">위에 입력하신 비밀번호와 일치하지 않습니다</p>
			</div><br>
			<div>
				<label for="address">주소</label><br><br>
				<input type="text" name="address" placeholder="주소를 입력해주세요">
			</div><br>
			<div>
				<label for="name">이름</label><br><br>
				<input type="text" name="name" placeholder="이름을 입력해주세요">
			</div><br><br><br><br><br><br>
			<input type="submit" value="회원가입" >
		</form>
	</div>
</body>
</html>