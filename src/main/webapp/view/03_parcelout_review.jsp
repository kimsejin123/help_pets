<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기</title>
<link rel="stylesheet" href=" ../view/reset.css">

<style type="text/css">

/*  #footer {
      bottom: 0px;
      left: 0px;
      position: fixed;
   }  
    */
/* 입양안내-입양절차 */
.parcel_tab1 .pc {display:block; overflow:hidden;}
.parcel_tab1 .pc li {margin:0 30px 30px 0; width:280px; float:left; border:1px solid #ddd; border-radius:10px; text-align:center; padding:0 0 18px; position:relative;}
.parcel_tab1 .pc li .numbering {position:absolute; top:0; left:0; background:#94b1ff; width:21px; height:25px; border-radius:15px 0 55px; color:#fff; font-weight:bold; text-align:left; padding:2px 0 0 7px;}
.parcel_tab1 .pc li .numbering_ok {position:absolute; top:0; left:0; background:#eb4934; width:30px; height:30px; border-radius:15px 0 55px; color:#fff; font-weight:bold; text-align:left; padding:6px 0 0 7px;}
.parcel_tab1 .pc li:nth-child(1)::after {content:''; display:inline-block; width:9px; height:15px; background:url('/images/animal/sub/ic_ar.png') no-repeat; position:absolute; top:78px; right:-20px;}
.parcel_tab1 .pc li:nth-child(2)::after {content:''; display:inline-block; width:9px; height:15px; background:url('/images/animal/sub/ic_ar.png') no-repeat; position:absolute; top:78px; right:-20px;}
.parcel_tab1 .pc li:nth-child(3)::after {content:''; display:inline-block; width:15px; height:9px; background:url('/images/animal/sub/ic_ab.png') no-repeat; position:absolute; bottom:-20px;}
.parcel_tab1 .pc li:nth-child(4)::after {content:''; display:inline-block; width:9px; height:15px; background:url('/images/animal/sub/ic_al.png') no-repeat; position:absolute; top:78px; right:-20px;}
.parcel_tab1 .pc li:nth-child(5)::after {content:''; display:inline-block; width:9px; height:15px; background:url('/images/animal/sub/ic_al.png') no-repeat; position:absolute; top:78px; right:-20px;}
.parcel_tab1 .pc li:nth-child(3n) {margin-right:0;}
.parcel_tab1 .pc li dd {font-family:'NanumSquareRound'; font-size:14px; line-height:14px; height:33px; letter-spacing:-0.08em;}
.parcel_tab1 .pc li dd span {color:#0068a3; font-weight:600;}


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

/* pageing style */
.paging_all {margin:30px auto 0;text-align:center;clear:both;position:relative; }
.paging_all img {margin:0 1px; display:inline-block !important;vertical-align:top}
.paging_all > .paging {margin:0 auto;font-size:0;line-height:0;text-align:center}
.paging_all > .paging > .num {margin:0 28px; display:inline-block; vertical-align:top}
.paging_all > .paging > .num > strong,
.paging_all > .paging > .num > a {width:32px; height:32px; padding:0; background-color:#fff; border:1px solid #e3e3e3; font-size:14px; line-height:30px; color:#666; text-decoration:none; display:inline-block; vertical-align:top; box-sizing:border-box; }
.paging_all > .paging > .num > strong,
.paging_all > .paging > .num > a:hover {background:#737373; border-color:#555; color:#fff; }

/* pageing style */
.paging_new {margin:30px auto 0;text-align:center;clear:both;position:relative; }
.paging_new > .paging {margin:0 auto;font-size:0;line-height:0;text-align:center}
.paging_new > .paging > span,
.paging_new > .paging > a.num {margin:0 1px;width:32px; height:32px; padding:0; background-color:#fff; border:1px solid #e3e3e3; font-size:14px; line-height:30px; color:#666; text-decoration:none; display:inline-block; vertical-align:top; box-sizing:border-box; }
.paging_new > .paging > span.current ,
.paging_new > .paging > a:hover {background:#737373; border-color:#555; color:#fff; }
.paging_new > .paging > .first{width:32px; height:32px; vertical-align:top; box-sizing:border-box; display:inline-block; background:url(/images/animal/sub/paging_first.gif) 0 0 no-repeat;margin:0 1px;}
.paging_new > .paging > .prev{width:32px; height:32px; vertical-align:top; box-sizing:border-box; display:inline-block; background:url(/images/animal/sub/paging_prev.gif) 0 0 no-repeat;margin:0 1px;}
.paging_new > .paging > .next{width:32px; height:32px; vertical-align:top; box-sizing:border-box; display:inline-block; background:url(/images/animal/sub/paging_next.gif) 0 0 no-repeat;margin:0 1px;}
.paging_new > .paging > .last{width:32px; height:32px; vertical-align:top; box-sizing:border-box; display:inline-block; background:url(/images/animal/sub/paging_last.gif) 0 0 no-repeat;margin:0 1px;}
.paging_new > .paging > a > span{position:absolute;left:-9999em;top:-9999em;}


</style>

</head>
<body>
<%@ include file="page_header.jsp" %>


<!-- container -->
		<div id="container">
			<section id="leftmenu">
		<h2>입양		
			<span class="sub">PARCEL OUT</span>		
		</h2>
			<nav>
		<ul>
		<li class=""><a href="01_parcelout_list.jsp"" >센터 아이들(입양동물 목록)</a></li>					
			<li class=""><a href="02_parcelout_info.jsp" >입양절차</a></li>
			<li class="select"><a href="03_parcelout_review.jsp"  >입양후기</a></li>
			<li class=""><a href="/site/animal/ex/bbs/List.do?cbIdx=326" >유기동물</a></li>
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

<div class="acenter mgt5">
		<a href="#open" id="openReason" onclick="openReason();return false;">[게시글삭제사유 자세히보기]</a>
		<a href="#close" id="closeReason" style="display:none;" onclick="closeReason();return false;">[게시글삭제사유 닫기]</a>
	</div>
	<div id="delReasonList" class="mgt20" style="display:none;">
		<h4 class="con-title1">서울특별시 서초구 인터넷 홈페이지 설치 및 운영에 관한 조례</h4>
		<div class="con-wrap">
			<p>제6조(홈페이지 게시물 관리) 구청장은 홈페이지의 건전한 운영을 위하여 이용자가 홈페이지에 올린 게시물 중 다음 각 호의 어느 하나에 해당하는 게시물을 삭제할 수 있다. 이 경우 삭제한 이유를 해당 게시판 등에 공개하여야 한다.</p>
			<ul class="con-icon2 mgt10">
				<li>[1호] 1. 국가안전을 저해하거나 보안관련 법규에 위배되는 내용을 포함한 게시물</li>
				<li>[2호] 2. 정치적 목적이 있는 게시물</li>
				<li>[3호] 3. 특정기관ㆍ단체 및 행정기관을 근거 없이 비난하는 게시물</li>
				<li>[4호] 4. 특정인을 비방하거나 명예훼손의 우려가 있는 게시물</li>
				<li>[5호] 5. 영리목적의 상업성 광고 및 저작권을 침해할 수 있는 게시물</li>
				<li>[6호] 6. 욕설ㆍ음란물 등 불건전한 게시물</li>
				<li>[7호] 7. 실명을 원칙으로 하는 경우에 실명을 사용하지 아니하거나 실명이 아닌 것으로 판명된 게시물</li>
				<li>[8호] 8. 같은 사람 또는 같은 사람이라고 인정되는 사람이, 같거나 유사한 내용을 반복적으로 올리는 게시물</li>
				<li>[9호] 9. 그 밖에 공익을 저해하거나 게시판 운영 취지에 맞지 아니하는 게시물</li>
			</ul>
		</div>
	</div>

<form id="BbsContentFVo" name="BbsContentFVo" action="/site/animal/ex/bbs/List.do?cbIdx=326" method="GET">
<input id="pageIndex" name="pageIndex" type="hidden" value="1"/>
<input id="cbIdx" name="cbIdx" type="hidden" value="326"/>
<input type="hidden" id="bcIdx" name="bcIdx" value="0" />
	<div class="board_list">
		<p>Total 9건 1페이지</p>
		
		
		
		
		<table class="general_board">
			<caption class="hidden">분양 후 소식 게시판 목록 : 게시글의 
			
				글번호
			
				, 글제목
			
				, 작성자
			
				, 등록일
			
				, 조회수
			를 보여줍니다.</caption>
			<colgroup>
			
				<col width="10%">
			
				<col width="35%">
			
				<col width="15%">
			
				<col width="15%">
			
				<col width="10%">
			
			</colgroup>
			<thead>
				<tr>
				
					<th scope="col">글번호</th>
				
					<th scope="col">글제목</th>
				
					<th scope="col">작성자</th>
				
					<th scope="col">등록일</th>
				
					<th scope="col">조회수</th>
				
				</tr>
			</thead>
			<tbody>
				
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								9
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=363150" onclick="doBbsContentFView(363150);return false;"title="9번글">
									
									
										퐁당이
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								신혜인
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2021.06.15
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>69</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								8
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=347574" onclick="doBbsContentFView(347574);return false;"title="8번글">
									
									
										늦은 라떼 소식입니다!
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								유성국
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2020.04.03
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>927</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								7
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=343446" onclick="doBbsContentFView(343446);return false;"title="7번글">
									
									
										&#039;까미(루시)&#039; 소식(뒤늦은...)
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								송성민
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2019.12.05
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>714</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								6
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=338862" onclick="doBbsContentFView(338862);return false;"title="6번글">
									
									
										&#039;노엘&#039; 이네 입니다 
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								유진하
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2019.07.28
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>1015</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								5
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=338537" onclick="doBbsContentFView(338537);return false;"title="5번글">
									
									
										귀동이에게..
										
										
										
										
									
									</a>
									
									

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								윤정미
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2019.07.16
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>561</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								4
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=338208" onclick="doBbsContentFView(338208);return false;"title="4번글">
									
									
										금옥(금이야 옥이야) 귀동선생 소식입니다!!!
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								강수경
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2019.07.07
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>771</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								3
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=338192" onclick="doBbsContentFView(338192);return false;"title="3번글">
									
									
										세.나.개. [가슴으로 낳은 우리의 악동 &#039;조이&#039;]
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								윤정미
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2019.07.06
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>782</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								2
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=335729" onclick="doBbsContentFView(335729);return false;"title="2번글">
									
									
										세.나.개. [천사의 이름으로 우리에게 온 &#039;조이&#039;]
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								윤정미
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2019.05.07
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>806</td>
						
					
					
				
				<tr >
					
						
						
						
						
						
						
					
						
							<td>
								
								1
							</td>
						
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
							
							
							
								<td class="title">
									
									
									
									
									<a href="/site/animal/ex/bbs/View.do?cbIdx=326&bcidx=335651" onclick="doBbsContentFView(335651);return false;"title="1번글">
									
									
										[입양후기] 우리동네 대장 밥풀이♥
										
										
										<span class="comment_num">[1]</span>
										
									
									</a>
									
									<span class="file">&nbsp;</span>

									
									
								</td>
							
						
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
							<td>
								
								황새연
							</td>
						
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
							<td>
								
								
								2019.05.05
							</td>
						
						
						
						
						
						
						
					
					
						
						
						
						
						
						
					
						
						
						
						
						
						
						
						
						
						
							<td>915</td>
						
					
					
				
				
			</tbody>
		</table>
		
		

		<!-- page number -->
		<div class="paging_new mt40">
			<div class="paging">
				<span class="num current">1</span>

			</div>
		</div>
		<!-- //page number -->
		
	
		<div class="btnList" style="border-top-width:0px;padding:0;">
			<a href="javascript:doBbsContentFForm();">글쓰기</a>
		</div>
	
		<div class="search">
			<fieldset>
				<legend>게시글의 제목, 담당부서, 내용으로 검색하세요.</legend>
				<select id="searchCondition" name="searchCondition" title="조건선택">
				
					<option value="subCont">글제목</option>
				
					<option value="nameCont">작성자</option>
				
					<option value="clobCont">글내용</option>
				
				</select>
				<input id="searchKeyword" name="searchKeyword" title="검색어입력" placeholder="검색어를 입력 하세요." type="text" value="" maxlength="30"/>
				<button onclick="doBbsContentFPag('1');return false;">검색</button>
			</fieldset>
		</div>
		
	</div><!-- //board -->
</form>



				</section>
			</div>
		</div>
<%@ include file="footer.jsp" %>
</body>
</html>