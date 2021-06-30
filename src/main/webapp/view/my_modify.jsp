<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구해줘펫즈: 마이페이지</title>
<style type="text/css">
	/* 전체적용 css */
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
</style>
<style type="text/css">
	/* 사이드메뉴 */
	#footer {
		bottom: 0px;
		left: 0px;
		position: fixed;
	}
	#container {
		width: 1200px; height: 700px;
		margin: 50px auto;
	/* 	border: 1px solid black; */
		display: block;
	}
	#leftmenu {
		width: 200px; 
		background-color: white;
		list-style-type: none;
		margin: 0; padding: 0;
		border: 1px solid #969696;
		float: left;
	}
	#leftmenu li {
		border-bottom: 1px solid #969696;
	}
	#leftmenu li:last-child {
		border-bottom: none;
	}
	#leftmenu a {
		display: block;
		height: 20px;
		line-height: 20px;
		color: gray;
		padding: 15px;
		text-decoration: none;
	}
	#leftmenu a:hover {	color: #d2d2d2; background-color: rgb(248,248,248); }
	#leftmenu a.current {	/* 현재 메뉴 위치 표시 */
		background: #d2d2d2;
		color: black;
		font-weight: bold;
	}
	#leftmenu a:hover:not(.current) {	
		color: gray;
		background-color: rgb(248,248,248);
	}
	#leftmenu a:visited { color: gray; }
	#page_subject {
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		background-color: #FFCD28;
		height: 100px;
		line-height: 100px;
	}
	#sub_contents { 
		float: right;
		width: 900px; 
		background:#ffffff; 
 		-webkit-box-sizing:border-box; 
		-moz-box-sizing:border-box; 
		box-sizing:border-box; 
	/* 	border: 1px solid black; */
	}
	#sub_contents #sub_title { 
		position:relative; 
	}
	#hr1 {
		width: 920px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
		float: right;
	}
</style>
</head>
<body>
<%@ include file="page_header.jsp" %>

	<div id="container">
			
		<ul id="leftmenu">
			<li id="page_subject">마이페이지</li>
			<li><a href="my_modify.jsp">회원정보 수정</a></li>					
			<li><a href="my_adopt.jsp">입양 진행 현황</a></li>
			<li><a href="my_volunteer.jsp" >봉사 신청 현황</a></li>
			<li><a href="my_board.jsp" >나의 글 확인</a></li>
		</ul>

		
		<div id="sub_contents">
			<section id="sub_title">
			<h3>회원정보 수정</h3>	
			</section>
		</div>
		
		<hr id="hr1">
		
		<div>
		
		</div>
	</div>
	
	
	
<%@ include file="footer.jsp" %>
</body>
</html>