<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양절차</title>
<link rel="stylesheet" href=" ../view/reset.css">

<style type="text/css">

 #footer {
      bottom: 0px;
      left: 0px;
      position: fixed;
   }  

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
		<li class=""><a href="/site/animal/02/10201010000002019040305.jsp" >센터 아이들(입양동물 목록)</a></li>					
			<li class=""><a href="/site/animal/02/10201010000002019040305.jsp" >입양절차</a></li>
			<li class="select"><a href="/site/animal/ex/animal/AnimalDogFList.do" >입양후기</a></li>
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
			
<div class="tap_menu">
						<ul>
							<li class="tap_on"><a href="/site/animal/02/10201010000002019040305.jsp">입양절차</a><span><img src="../images/parcel/tabon.png"></span></li>
							<li><a href="/site/animal/02/10201020000002019040305.jsp">입양시 주의사항</a></li>
						</ul>
					</div>
					
					<div class="parcel_tab1">
					
					<!-- 	<h4>분양절차 안내</h4> -->
						<ul class="pc">
							<li>
								<span class="numbering">1</span>
								<dl>
									<dt><img alt="이미지1" src="../images/parcel/parcel_tab1_img1.png"></dt>
									<dd>구해줘펫즈<span>홈페이지에서<br>입양 가능한 입소견들을 확인</span>합니다.</dd>
								</dl>
							</li>
							<li>
								<span class="numbering">2</span>
								<dl>
									<dt><img alt="이미지2" src="../images/parcel/parcel_tab1_img2.png"></dt>
									<dd>센터에 방문하셔서 설문지 작성 후<br><span>상담을 진행</span>합니다.</dd>
								</dl>
							</li>
							<li>
								<span class="numbering">3</span>
								<dl>
									<dt><img alt="이미지3" src="../images/parcel/parcel_tab1_img3.png"></dt>
									<dd>입양하고 싶은 입소견이 있을 경우<br><span>최소 3회 이상 방문하여 입양의사를 표현</span>합니다.</dd>
								</dl>
							</li>
							<li>
								<span class="numbering_ok">ok</span>
								<dl>
									<dt><img alt="이미지4" src="../images/parcel/parcel_tab1_img6.png"></dt>
									<dd>동물 등록 후 입양을 진행하며<br><span>입양 후 교육 2회</span>를 수료합니다.</dd>
								</dl>
							</li>
							<li>
								<span class="numbering">5</span>
								<dl>
									<dt><img alt="이미지5" src="../images/parcel/parcel_tab1_img5.png"></dt>
									<dd><span>입양 전 교육 2회</span>수료 후<br> 입양서류를 <span>작성</span>합니다.</dd>
								</dl>
							</li>
							<li>
								<span class="numbering">4</span>
								<dl>
									<dt><img alt="이미지6" src="../images/parcel/parcel_tab1_img4.png"></dt>
									<dd>회의를 거쳐 입양자로 확정된 분은<br><span>개별적으로 연락</span>을 드리게 됩니다.</dd>
								</dl>
							</li>
						</ul>
					</div>
</body>
</html>