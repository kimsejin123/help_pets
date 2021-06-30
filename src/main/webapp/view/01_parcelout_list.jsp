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

<!-- 상단 컨텐츠부분  -->

<form id="AnimalDogFVo" name="AnimalDogFVo" action="/site/animal/ex/animal/AnimalDogFList.do" method="GET">
<input id="adIdx" name="adIdx" type="hidden" value=""/>
<input id="pageIndex" name="pageIndex" type="hidden" value="1"/>
<input id="searchState" name="searchState" type="hidden" value=""/>
					<div id="parcel_category">
						<ul>
							<li class="active"><a href="javascript:doSearch('');" title="all">전체</a></li>
							<li ><a href="javascript:doSearch('A');" title="announce">공고중</a></li>
							<li ><a href="javascript:doSearch('B');" title="possible">입양가능</a></li>
							<li ><a href="javascript:doSearch('C');" title="confirm">입양진행중</a></li>
							<li ><a href="javascript:doSearch('D');" title="complete">입양완료</a></li>
							<li ><a href="javascript:doSearch('E');" title="delivery">인도</a></li>
							<li ><a href="javascript:doSearch('F');" title="transfer">이관</a></li>
						</ul>
					</div>
					<div id="parcel_animal" class="board_list">
						<ul class="board_animal">
							<li class="delivery">
								<a href="javascript:doAnimalDogFView('AD00000071');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="(당일인도)서울-서초-2021-00079 사진">
										</p>
										<p class="animal_tit">(당일인도)서울-서초-2021-00079</p>
										<p>견종 : 셔틀랜드 쉽독</p>
										<p>성별 : 암컷</p>
										<p>나이 : 3살</p>
										<p>중성화 : O</p>
										<p>입양상태 :
										<span>인도</span>
										</p>
									</a>
								</li>
								
																<li class="delivery">
								
									<a href="javascript:doAnimalDogFView('AD00000070');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="(당일인도)서울-서초-2021-00078 사진">
										</p>
										<p class="animal_tit">(당일인도)서울-서초-2021-00078</p>
										<p>견종 : 푸들</p>
										<p>성별 :
											
											암컷
										</p>
										<p>나이 : 12살</p>
										<p>중성화 : O</p>
										<p>입양상태 :
											
											
											
											
											<span>인도</span>
											
										</p>
									</a>
								</li>

								

								
								
								<li class="confirm">
								
								
								
									<a href="javascript:doAnimalDogFView('AD00000069');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="서울-서초-2021-00067 사진">
										</p>
										<p class="animal_tit">서울-서초-2021-00067</p>
										<p>견종 : 웰시코기 펨브로크</p>
										<p>성별 :
											수컷
											
										</p>
										<p>나이 : 4세</p>
										<p>중성화 : O</p>
										<p>입양상태 :
											
											
											<span>입양진행중</span>
											
											
											
										</p>
									</a>
								</li>

								

								
								
								
								
								<li class="delivery">
								
									<a href="javascript:doAnimalDogFView('AD00000068');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="(당일인도)서울-서초-2021-00058 사진">
										</p>
										<p class="animal_tit">(당일인도)서울-서초-2021-00058</p>
										<p>견종 : 푸들</p>
										<p>성별 :
											수컷
											
										</p>
										<p>나이 : 8살</p>
										<p>중성화 : O</p>
										<p>입양상태 :
											
											
											
											
											<span>인도</span>
											
										</p>
									</a>
								</li>

								

								
								<li class="possible">
								
								
								
								
									<a href="javascript:doAnimalDogFView('AD00000067');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="서울-서초-2021-00057 사진">
										</p>
										<p class="animal_tit">서울-서초-2021-00057</p>
										<p>견종 : 푸들</p>
										<p>성별 :
											수컷
											
										</p>
										<p>나이 : 2살</p>
										<p>중성화 : O</p>
										<p>입양상태 :
											
											<span>입양가능</span>
											
											
											
											
										</p>
									</a>
								</li>

								

								
								
								
								
								<li class="delivery">
								
									<a href="javascript:doAnimalDogFView('AD00000065');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png;height=175" alt="(당일인도)서울 서초 2021-00047 사진">
										</p>
										<p class="animal_tit">(당일인도)서울 서초 2021-00047</p>
										<p>견종 : 포메라니안</p>
										<p>성별 :
											
											암컷
										</p>
										<p>나이 : 2살</p>
										<p>중성화 : 미상</p>
										<p>입양상태 :
											
											
											
											
											<span>인도</span>
											
										</p>
									</a>
								</li>

								

								
								
								
								<li class="complete">
								
								
									<a href="javascript:doAnimalDogFView('AD00000066');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="서울-서초-2021-00048  사진">
										</p>
										<p class="animal_tit">서울-서초-2021-00048 </p>
										<p>견종 : 진도 믹스</p>
										<p>성별 :
											수컷
											
										</p>
										<p>나이 : 3살 추정</p>
										<p>중성화 : X</p>
										<p>입양상태 :
											
											
											
											<span>입양완료</span>
											
											
										</p>
									</a>
								</li>

								

								
								
								
								
								<li class="delivery">
								
									<a href="javascript:doAnimalDogFView('AD00000064');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="(당일인도)서울 서초 2021-00042  사진">
										</p>
										<p class="animal_tit">(당일인도)서울 서초 2021-00042 </p>
										<p>견종 : 시츄</p>
										<p>성별 :
											수컷
											
										</p>
										<p>나이 : 10살</p>
										<p>중성화 : O</p>
										<p>입양상태 :
											
											
											
											
											<span>인도</span>
											
										</p>
									</a>
								</li>

								

								
								
								
								<li class="complete">
								
								
									<a href="javascript:doAnimalDogFView('AD00000063');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="서울-서초-2021-00035 사진">
										</p>
										<p class="animal_tit">서울-서초-2021-00035</p>
										<p>견종 : 믹스</p>
										<p>성별 :
											
											암컷
										</p>
										<p>나이 : 2세</p>
										<p>중성화 : 미상</p>
										<p>입양상태 :
											
											
											
											<span>입양완료</span>
											
											
										</p>
									</a>
								</li>

								

								
								<li class="possible">
								
								
								
								
									<a href="javascript:doAnimalDogFView('AD00000062');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="서울-서초-2021-00034 사진">
										</p>
										<p class="animal_tit">서울-서초-2021-00034</p>
										<p>견종 : 믹스</p>
										<p>성별 :
											
											암컷
										</p>
										<p>나이 : 3살</p>
										<p>중성화 : X</p>
										<p>입양상태 :
											
											<span>입양가능</span>
											
											
											
											
										</p>
									</a>
								</li>

								

								
								
								
								<li class="complete">
								
								
									<a href="javascript:doAnimalDogFView('AD00000061');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="서울-서초-2021-00029 사진">
										</p>
										<p class="animal_tit">서울-서초-2021-00029</p>
										<p>견종 : 비글</p>
										<p>성별 :
											수컷
											
										</p>
										<p>나이 : 1세 추정</p>
										<p>중성화 : O</p>
										<p>입양상태 :
											
											
											
											<span>입양완료</span>
											
											
										</p>
									</a>
								</li>

								

								
								
								
								<li class="complete">
								
								
									<a href="javascript:doAnimalDogFView('AD00000060');">
										<p class="animal_img">
										
										<img src="../images/parcel/dog.png" alt="	서울-서초-2020-00145 사진">
										</p>
										<p class="animal_tit">	서울-서초-2020-00145</p>
										<p>견종 : 푸들</p>
										<p>성별 :
											수컷
											
										</p>
										<p>나이 : 5세 추정</p>
										<p>중성화 : O</p>
										<p>입양상태 :

											<span>입양완료</span>
											
								
										</p>
									</a>
								</li>

							</ul>
<!-- page number -->
							<div class="paging_new mt40">
								<div class="paging">
									<span class="num current">1</span><a href="?pageIndex=2" onclick="doAnimalDogFPag(2);return false;" class="num">2<span>페이지</span></a><a href="?pageIndex=3" onclick="doAnimalDogFPag(3);return false;" class="num">3<span>페이지</span></a><a href="?pageIndex=4" onclick="doAnimalDogFPag(4);return false;" class="num">4<span>페이지</span></a><a href="?pageIndex=5" onclick="doAnimalDogFPag(5);return false;" class="num">5<span>페이지</span></a>

								</div>
							</div>
							<!-- //page number -->
							<div class="search">
								<fieldset>
									<legend>게시글의 제목, 담당부서, 내용으로 검색하세요.</legend>
									<select id="searchCondition" name="searchCondition">
										<option value="1">코드</option>
										<option value="2">견종</option>
										<option value="3">기타정보</option>
									</select>
									<input id="searchKeyword" name="searchKeyword" title="검색어를 입력 하세요." placeholder="검색어를 입력 하세요." type="text" value="" maxlength="30"/>
									<button onclick="doAnimalDogFPag('1'); return false;">검색</button>
								</fieldset>
							</div>
					</div>
</form>



				</section>
			</div>
		</div>
</body>
</html>