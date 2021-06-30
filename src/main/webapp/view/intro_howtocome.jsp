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
		border: 1px solid black;
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
	#map {
		margin-top: 50px;
		float: right;
	}
</style>
</head>
<body>
<%@ include file="page_header.jsp" %>

	<div id="container">
			
		<ul id="leftmenu">
			<li id="page_subject">보호소 소개</li>
			<li><a href="intro.jsp">소개말</a></li>					
			<li><a href="intro_howtocome.jsp">오시는 길</a></li>
		</ul>

		
		<div id="sub_contents">
			<section id="sub_title">
			<h3>보호소 오시는 길</h3>	
			</section>
		</div>
		
		<hr id="hr1">
		
		<div id="map">
		<!-- * 카카오맵 - 지도퍼가기 -->
		<!-- 1. 지도 노드 -->
		<div id="daumRoughmapContainer1625050336433" class="root_daum_roughmap root_daum_roughmap_landing"></div>
		
		<!--
			2. 설치 스크립트
			* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
		-->
		<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
		
		<!-- 3. 실행 스크립트 -->
		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1625050336433",
				"key" : "26fx4",
				"mapWidth" : "640",
				"mapHeight" : "360"
			}).render();
		</script>
		</div>
		
	</div>
	
	
	
<%@ include file="footer.jsp" %>
</body>

</html>