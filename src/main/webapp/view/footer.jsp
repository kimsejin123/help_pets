<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#footer { /* 바닥에 고정 */
		width: 100%; height: 90px;
		/* position: fixed; */
		bottom: 0px;
		left: 0px;
	}
	#foot_list {
		height: 40px; 
		font-size: 13px;
		background: #A9A9A9;
	}
	#foot_list2 {
		background: #A9A9A9;
	}
	.list {
		width: 600px; height: 100%;
		margin: 0 auto;
	}
	.list>li {
		float: left;
		width: 33%;
		line-height: 40px;
		text-align: center;
		position: relative;	
		background: #A9A9A9;
	}
	.list>li a {
		display: block;
		color: white;
		text-decoration: none;
	}
	ul, li {
		list-style: none;
		margin: 0px; padding: 0px;
	}
	#foot_text {
		width: 600px; height: 100%;
		text-align: center;
		font-size: 13px;
		background: #A9A9A9;
		margin: 0 auto;
		color: white;
		padding: 10px 0px;
	}
</style>
</head>
<body>
	<div id="footer">
		<div id="foot_list">
			<ul class="list">
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보취급방침</a></li>
				<li><a href="#">FAQ</a></li>
			</ul>
		</div>
		<div id="foot_list2">
			<div id="foot_text">
				주소 : 서울 마포구 양화로 127 &nbsp;|&nbsp; 전화번호 : 02-000-0000 <br>
				Copyright ⓒ 2021. ICT인재개발원 3조. All right reserved.
			</div>
		</div>
	</div>
</body>
</html>