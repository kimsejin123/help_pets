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
	#footer {
		bottom: 0px;
		left: 0px;
		position: fixed;
	}
	#side_nav {
		width: 1200px; height: 700px;
		margin: 50px auto;
		border: 1px solid black;
	}
	table, th, td {
		border: 1px solid #c8c8c8;
		border-collapse: collapse;
	}
	table {
		width: 200px;
		height: 300px;
	}
	th {
		background-color: #FFCD28;
	}
</style>
</head>
<body>
<%@ include file="page_header.jsp" %>

	<div id="side_nav">
		<table id="nav">
			<th style="height: 40%">마이페이지</th>
			<tr> <td style="height: 15%">회원정보 수정</td> </tr>
			<tr> <td style="height: 15%">입양 진행 현황</td> </tr>
			<tr> <td style="height: 15%">봉사 신청 현황</td> </tr>
			<tr> <td style="height: 15%">나의 글 확인</td> </tr>
		</table>
	</div>
	
<%@ include file="footer.jsp" %>
</body>
</html>