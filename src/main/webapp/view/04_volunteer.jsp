<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>봉사활동 안내</title>
<link rel="stylesheet" href=" ../view/reset.css">

<style type="text/css">

 #footer {
      bottom: 0px;
      left: 0px;
      position: fixed;
   }  

/* 메뉴 타이틀 */
#container #leftmenu h2 span.sub { display:block; margin-top:10px; color:#777777; font-size:14px; font-weight:300; line-height:14px; letter-spacing:-0.5px; }
#container #leftmenu h2 a { position:absolute; z-index:4; top:0; left:0; width:100%; height:50px; text-indent:-9999px; }
#container #leftmenu.long h2 { padding-top:38px; height:122px; line-height:32px; }
#container #leftmenu.long h2 span.long_b { display:block; }
#container #leftmenu ul li {border-left:1px solid #dddddd; border-right:1px solid #dddddd;}
#container #leftmenu ul li:last-child {border-bottom:1px solid #dddddd;}
#container #leftmenu ul li a { display:block; padding:12px 20px; color:#444444; border-top:1px solid #dddddd; font-size:16px; }
#container #leftmenu ul li:first-child a { border:0px; }
#container #leftmenu ul li a:hover, #container #leftmenu ul li.select a { color:#000; background:url('../images/lmenu_arrow.png') no-repeat right 17px center; font-weight:600; }

#container #sub_contents { float:right; width:910px; background:#ffffff; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box;}
#container #sub_contents #sub_title { position:relative; border-bottom:1px solid #dddddd;}
#container #sub_contents .titlebg1 {background:url('../images/common/sub1top_img.png') right bottom no-repeat;}
#container #sub_contents .titlebg2 {background:url('../images/common/sub2top_img.png') right bottom no-repeat;}
#container #sub_contents .titlebg3 {background:url('../images/common/sub3top_img.png') right bottom no-repeat;}
#container #sub_contents .titlebg4 {background:url('../images/common/sub4top_img.png') right bottom no-repeat;}
#container #sub_contents #sub_title ol { overflow:hidden;}
#container #sub_contents #sub_title ol li { position:relative; float:left; padding:0 15px 0 12px; color:#777777; font-size:14px; line-height:14px; }
#container #sub_contents #sub_title ol li.home { padding-left:0px; width:14px; height:12px; background:url('../images/ic_home.gif') no-repeat left center; text-indent:-9999px; }
#container #sub_contents #sub_title ol li:after { position:absolute; z-index:1; top:0; right:0px; display:block; content:''; width:5px; height:14px; background:url('../images/location_arrow.gif') no-repeat right center; }
#container #sub_contents #sub_title ol li:last-child:after { display:none; }
#container #sub_contents #sub_title h3 { padding:35px 0; font-size:35px; font-weight:600; line-height:35px; font-family:'NanumSquareRound';}

/* sub */
#container {overflow:hidden; padding:40px 0; width:1200px; margin:0 auto; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box;}
#container #leftmenu { float:left; width:225px; background:#ffffff; }
#container #leftmenu h2 { position:relative; padding-top:35px; height:87px; color:#000; background:#ffc000; font-size:28px; text-align:center; font-weight:400; line-height:28px; }

/* 센터소개-둘러보기 */
.con_detail .tap_menu {display:table; width:909px; border-collapse:collapse; margin-bottom:34px;}
.con_detail .tap_menu ul {display:table-row;}
.con_detail .tap_menu li {display:table-cell; width:33%; text-align:center;  vertical-align:middle; border:1px solid #ddd; position:relative;}
.con_detail .tap_menu li span {position:absolute; bottom:-15px; left:47%; margin-left:-5px;}
.con_detail .tap_menu li a {display:block; padding:14px; font-size:16px; color:#555;}
.con_detail .tap_menu li.tap_on {background:#0068a3; border:1px solid #0068a3;}

/*.con_detail .tap_menu li.tap_on::after {content:''; display:block; width:28px; height:28px; background:url('/images/animal/sub/tabon.png') no-repeat}*/
.con_detail .tap_menu li.tap_on a {color:#fff; font-weight:600;}\

/* board_list */
#container #sub_contents .con_detail {margin-top:20px;}
#container #sub_contents .con_detail .board_list table {border-top:2px solid #4e88c7;}
#container #sub_contents .con_detail .board_list table th {padding:10px; text-align:center; font-size:14px; font-weight:600; letter-spacing:-0.09em; background:#edf6ff; border-bottom:1px solid #ccc;}
#container #sub_contents .con_detail .board_list table td {padding:11px 15px; text-align:center; border-bottom:1px solid #ccc; line-height:24px; color:#555;}
#container #sub_contents .con_detail .board_list table td:nth-child(2) {text-align:left;}
#container #sub_contents .con_detail .board_list table td.bnotice {background:#fafafa;}
#container #sub_contents .con_detail .board_list table td .file {margin-left:5px; width:13px; height:13px; background:url('/images/animal/sub/ic_file.gif') no-repeat; text-indent:-9999px; display:inline-block; vertical-align:middle;}
#container #sub_contents .con_detail .board_list table td .comment_num {color:#ef5797; margin-left:5px;}

/* 자원봉사-안내 */
.volunteer_con .volunteer_img {margin-bottom:20px;}
.volunteer_con .volunteer_img img {border-radius:10px;}
.volunteer_con ul {margin-bottom:20px;}
.volunteer_con > ul li{padding:10px 0; font-size:14px; font-family:'NanumSquareRound';}
.volunteer_con ul li span.head{font-size:15px; font-weight:600; margin-bottom:5px; background:#0068a3; color:#ffffff; border-radius:20px; padding:5px 9px; margin-right:15px;}
.volunteer_con ul li span.head1{padding:5px 26px;}
.volunteer_con ul li span.head2{padding:5px 16px;}
.volunteer_con ul li span.point_text2{font-size:15px; font-weight:600; color:#0068a3;}
.volunteer_con h4 {font-size:20px;margin-bottom:10px; font-weight:500; font-family:'NanumSquareRound'; background:url('/images/animal/sub/bul_foot.png') left center no-repeat; padding-left:40px; line-height:40px; font-weight:600;}
.volunteer_con .list_dot {border-top:1px dashed #ddd; padding-top:20px;}
.volunteer_con .list_dot ul {margin-left:40px;}
.volunteer_con .list_dot li { margin-left:20px; padding:0; font-size:15px; margin-bottom:7px;  font-weight:600; list-style:disc;}
.volunteer_con .list_dot li:last-child { margin-bottom:0px; }
/* .volunteer_con ul.list_dot li span.icon4 {background:url(/images/animal/sub/sub3_icon5.gif) no-repeat;} */

</style>
</head>
<body>
<%@ include file="page_header.jsp" %>
<%@ include file="footer.jsp" %>

<!-- container -->
		<div id="container">
			<section id="leftmenu">
		<h2>입양		
			<span class="sub">PARCEL OUT</span>		
		</h2>
			<nav>
		<ul>
		<li class="select"><a href="01_parcelout_list.jsp"" >봉사활동 안내</a></li>					
			<li class=""><a href="02_parcelout_info.jsp" >봉사활동 신청</a></li>
			<li class=""><a href="02_parcelout_info.jsp" >봉사활동 후기</a></li>
		</ul>
			</section>
			<div id="sub_contents">
			
		<section id="sub_title" class="titlebg2">

		<h3>
		입양절차
		</h3>
			</section>
			<section class="con_detail">
			
<!-- 상단 컨텐츠부분  -->
<div class="volunteer_con">
		<div class="volunteer_img"><img class="img_responsive" src="../images/volunteer.jpg"></div>
		<ul class="list_top">
			<li><span class="head head1">대상자</span><span class="point_text2">20세 이상 </span>성인</li>
			<li><span class="head head2">봉사 시간</span><span class="point_text2">13시 ~ 16시</span></li>
			<li><span class="head head2">봉사 인원</span><span class="point_text2">평일 하루에 2명 </span></li>
			<li><span class="head">일반 봉사자</span><span class="point_text2">견장 및 놀이터 청소, 입소견 산책, 놀아주기</span></li>
			<li><span class="head">미용 봉사자</span><span class="point_text2">애견샤워, 기본관리 및 미용</span>(미용봉사는 하루에 한 분이며, 시간과 요일은 아이들 상태에 따라 달라질 수 있음)</li>
		</ul>
		<div class="list_dot">
			<h4>참고해 주세요!</h4>
			<ul>	
				<li>정기봉사자를 우선으로 배치하고 있습니다.</li>
				<li>접수는 로그인 후 가능합니다.</li>
				<li>안전에 관한 문제로 청소년은 받지 않습니다.</li>
				<li>반려동물과 동반은 불가합니다.</li>
				<li>취소는 3일 전에 해주세요.</li>
				<li>늦는 경우 미리 연락하여 주세요.(무단지각, 무단불참 시 자격 이탈)</li>
			</ul>
		</div>
	</div>

<br>
<br>
<br>
		</section>
		</div>
	</div>

</div>
</body>
</html>