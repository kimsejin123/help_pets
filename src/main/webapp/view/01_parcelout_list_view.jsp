<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>센터 아이들(입양동물 목록)</title>
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

/* 분양-보호중인동물 */
#parcel_category {display:table; width:100%;}
#parcel_category ul {overflow:hidden; display:table-row;}
#parcel_category li {background:#efefef; display:table-cell; width:14.28%; text-align:center; vertical-align:middle;}
#parcel_category li a {display:block; margin:10px; color:#777; font-size:14px;}
#parcel_category li.active, #parcel_category li:hover {background:#4e88c7; color:#fff;}
#parcel_category li.active a, #parcel_category li:hover a {font-weight:600; color:#fff;}
.board_animal {padding:10px 0; border-top:2px solid #4e88c7; border-bottom:1px solid #ccc; overflow:hidden;}
.board_animal > li {width:23%; float:left; position:relative; margin:1%;}
.board_animal > li a {display:block; padding:4%; border:1px solid #ccc; background:#edf6ff;}
.board_animal > li p { display:block; text-align:left; }
.board_animal > li p span {font-weight:600;}
.board_animal > li.confirm p span {font-weight:600; color:#ff0000;}
.board_animal > li p.animal_img { height:175px; overflow:hidden; }
.board_animal > li p.animal_img img { width:100%; min-height:173px; }
.board_animal > li p.animal_tit { padding:10px 5px 3px; font-size:14px; font-weight:600; color:#222; overflow:hidden; white-space:nowrap; text-overflow:ellipsis; text-align:center;}
.board_animal > li a:hover:after { display:block; content:''; position:absolute; left:0px; top:0px; width:100%; height:100%; background:rgba(78,136,199,.2); }
.board_animal > li a:hover { border-color:#fff; text-decoration:none; }

.board_view .title span {font-size:20px; color:#333; font-weight:600;}
.board_view table.animalInfo {width:100%; margin:20px 0;}
.board_view table.animalInfo th {background:#fffde2; padding:10px; text-align:center; width:15%; border:1px solid #e4e4e4;}
.board_view table.animalInfo td {padding:10px; text-align:left; width:30%; border:1px solid #e4e4e4;}
.board_view table.animalInfo td p {background:#ffad00; color:#fff; display:inline-block; padding:3px 5px; font-weight:600;}

/* pageing style */
.paging_all {margin:30px auto 0;text-align:center;clear:both;position:relative; }
.paging_all img {margin:0 1px; display:inline-block !important;vertical-align:top}
.paging_all > .paging {margin:0 auto;font-size:0;line-height:0;text-align:center}
.paging_all > .paging > .num {margin:0 28px; display:inline-block; vertical-align:top}
.paging_all > .paging > .num > strong,
.paging_all > .paging > .num > a {width:32px; height:32px; padding:0; background-color:#fff; border:1px solid #e3e3e3; font-size:14px; line-height:30px; color:#666; text-decoration:none; display:inline-block; vertical-align:top; box-sizing:border-box; }
.paging_all > .paging > .num > strong,
.paging_all > .paging > .num > a:hover {background:#737373; border-color:#555; color:#fff; }

/* search */
.search {margin-top:30px; text-align:center;}
.search select {padding:3px; height:36px; vertical-align:middle; width:100px;}
.search input[type=text] {min-width:200px;}
.search button {width: 50px; height: 36px; display: inline-block; vertical-align: bottom; cursor: pointer; background: #2c68b0; border: 0; color: #fff; border-radius:5px;}

</style>
</head>

<body>
<%@ include file="page_header.jsp" %>
<%@ include file="footer.jsp" %>
	<!-- container -->
		<div id="container">
			<section id="leftmenu">
		<h2>입양안내		
			<span class="sub">PARCEL OUT</span>		
		</h2>
			<nav>
		<ul>
		<li class="select"><a href="/site/animal/02/10201010000002019040305.jsp" >입양동물 목록</a></li>					
			<li class=""><a href="/site/animal/02/10201010000002019040305.jsp" >입양절차</a></li>
			<li class=""><a href="/site/animal/ex/animal/AnimalDogFList.do" >입양후기</a></li>
			<li class=""><a href="/site/animal/ex/bbs/List.do?cbIdx=326" >유기동물</a></li>
		</ul>

		<h3>
			</section>
			<div id="sub_contents">
			<section id="sub_title" class="titlebg2">
		
		<h3>입양동물 목록</h3>
			</section>
			<section class="con_detail">

<form id="AnimalDogFVo" name="AnimalDogFVo" action="/site/animal/ex/animal/AnimalDogFView.do?adIdx=AD00000070&amp;pageIndex=1&amp;searchState=&amp;searchCondition=1&amp;searchKeyword=" method="GET">
<input id="pageIndex" name="pageIndex" type="hidden" value="1"/>
<input id="adIdx" name="adIdx" type="hidden" value="AD00000070"/>
<input id="searchState" name="searchState" type="hidden" value=""/>
<input id="searchCondition" name="searchCondition" type="hidden" value="1"/>
<input id="searchKeyword" name="searchKeyword" type="hidden" value=""/>
					<div class="board_view">
						<p class="title">(당일인도)서울-서초-2021-00078</p>
						<div class="con">

							
							
							<p style="text-align:center;margin-top:10px;"><img src="../images/dog2.jpg" alt="21-00078.jpg" style="max-width:600px;width:100%" alt="(당일인도)서울-서초-2021-00078 사진 1"/> </p>
							

							<table class="animalInfo">
								<caption>보호중인 동물의 견종, 성별, 중성화, 나이, 입양상태, 발견장소, 공고기간, 몸무게, 기타정보 안내입니다.</caption>
								<tbody>
									<tr>
										<th scope="col">입양상태</th>
										<td>
											
											
											
											
											<p>인도</p>
											
										</td>
										<th scope="col">공고기간</th>
										<td>2021-06-11 ~ 2021-07-10</td>
									</tr>
									<tr>
										<th scope="col">견종</th>
										<td>푸들</td>
										<th scope="col">발견장소</th>
										<td>서울 서초구 우면동 6-9</td>
									</tr>
									<tr>
										<th scope="col">성별</th>
										<td>
											
											암컷
										</td>
										<th scope="col">나이</th>
										<td>12살</td>
									</tr>
									<tr>
										<th scope="col">몸무게</th>
										<td>2.5kg</td>
										<th scope="col">중성화</th>
										<td>O</td>
									</tr>
									<tr>
										<th scope="col">기타정보</th>
										<td colspan="3" style="white-space:pre-wrap;">사람 좋아함, 얌전함 

*동물등록칩 확인, 당일인도 완료</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="btnList">
						<a href="javascript:doAnimalDogFList();">목록</a>
					</div>
</form>



				</section>
			</div>
		</div>


				</section>
			</div>
		</div>
</body>
</html>