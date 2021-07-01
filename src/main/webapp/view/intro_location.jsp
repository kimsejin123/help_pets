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
/* 	#footer {
		bottom: 0px;
		left: 0px;
		position: fixed;
	} */
	#container {
		width: 1200px; height: 700px;
		margin: 100px auto;
	/* 	border: 1px solid black; 위치확인용 */
	}
	#leftmenu {   
		width: 200px; 
		background-color: white;
		list-style-type: none;
		margin: 0; padding: 0;
		border: 1px solid #b4b4b4;
		float: left;
	}
	#leftmenu li { border-bottom: 1px solid #b4b4b4; }
	#leftmenu li:last-child { border-bottom: none; }
	#leftmenu a {
		display: block;
		height: 20px;
		line-height: 20px;
		color: gray;
		padding: 15px;
		text-decoration: none;
	}
	#leftmenu a:hover {	color: gray; background-color: rgb(248,248,248); }
	#leftmenu a:visited { color: gray; }
	#page_subject {
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		background-color: #FFCD28;
		height: 100px;
		line-height: 100px;
	}
</style>
<style type="text/css">
	#sub_contents { 
		float: right;
		width: 900px; 
		background:#ffffff; 
	}
	#hr1 {
		width: 920px;
		height: 1px;
		border: 0px;
		background-color: #c8c8c8;
		float: right;
	}
	#howtocome {
		float: left;
		width: 640px;
		margin-top: 20px;
		margin-left: 80px;
		font-size: 14px;
	}
	.icon {
		float: left;
		vertical-align: middle;
	}
	#map {
		margin-top: 50px;
		margin-right: 180px;
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
			<li><a href="intro_location.jsp">오시는 길</a></li>
		</ul>

		
		<div id="sub_contents">
			<section id="sub_title">
				<h3>보호소 오시는 길</h3>	
			</section>
			<hr id="hr1">
			
			<div id="map">
		<!-- 	* 카카오맵 - 지도퍼가기
			1. 지도 노드 -->
			<div id="daumRoughmapContainer1625050336433" class="root_daum_roughmap root_daum_roughmap_landing"></div>
			
		<!-- 		2. 설치 스크립트
				* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다. -->
			
			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
			
		<!-- 	3. 실행 스크립트 -->
			<script charset="UTF-8">
				new daum.roughmap.Lander({
					"timestamp" : "1625050336433",
					"key" : "26fx4",
					"mapWidth" : "640",
					"mapHeight" : "360"
				}).render();
			</script>
			</div>
			
			
			<div id="howtocome">
				<p>
					<img class="icon" alt="위치" src="../icon_images/location_30.png">
					&nbsp;&nbsp;서울 마포구 양화로 127 첨단빌딩 7층 (KDB산업은행 건물)
				</p> 
				<hr style="height: 1px; border: 0px; background-color: white;">
				<p>
					<img class="icon" alt="지하철" src="../icon_images/metro_30.png"> 
					&nbsp;&nbsp;지하철 2호선 | 공항철도| 경의중앙 홍대입구역 1번출구 도보 7분
				</p> 
				<hr style="height: 1px; border: 0px; background-color: white;">
				<p>
					<img class="icon" alt="버스" src="../icon_images/bus_30.png">
					&nbsp;&nbsp;730, 271, 602, 603, 604, 5712, 5714, 6712, 6716, 7612, 912 번 버스 승차<br>
					&nbsp;&nbsp;서교동 정류장에서 하차
				</p> 
			</div>
			
		
		</div>
		
<!-- 		
		<div id="howtocome">
			<img class="icon" alt="위치" src="../icon_images/location_30.png">
				<p>서울 마포구 양화로 127 첨단빌딩 7층 (KDB산업은행 건물)</p> 
			<img class="icon" alt="지하철" src="../icon_images/metro_30.png"> 
				<p>지하철 2호선 | 공항철도| 경의중앙 홍대입구역 1번출구 도보 7분</p> 
			<img class="icon" alt="버스" src="../icon_images/bus_30.png">
				<p>730, 271, 602, 603, 604, 5712, 5714, 6712, 6716, 7612, 912 번 버스 승차<br>
					서교동 정류장에서 하차
				</p> 
		</div> -->
		
		
		
		
	<!-- 	
		
		<div id="map">
		* 카카오맵 - 지도퍼가기
		1. 지도 노드
		<div id="daumRoughmapContainer1625050336433" class="root_daum_roughmap root_daum_roughmap_landing"></div>
		
		
			2. 설치 스크립트
			* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
		
		<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
		
		3. 실행 스크립트
		<script charset="UTF-8">
			new daum.roughmap.Lander({
				"timestamp" : "1625050336433",
				"key" : "26fx4",
				"mapWidth" : "640",
				"mapHeight" : "360"
			}).render();
		</script>
		</div>
	-->	
	</div>
	 
<%@ include file="footer.jsp" %>
</body>

</html>