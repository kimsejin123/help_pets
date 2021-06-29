<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구해줘펫즈</title>
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
   hr {
      width: 1200px;
      height: 1px;
      border: 0px;
      background-color: #c8c8c8;
   }
</style>
<style type="text/css">
	.main_slide_pic {
    	overflow: hidden; 
   }
   .slider{
	    width: 1200px;
	    height: 700px;
	    position: relative;
	    margin: 0 auto;
	    overflow: hidden; /* 현재 슬라이드 오른쪽에 위치한 나머지 슬라이드 들이 보이지 않도록 가림 */
	}
	.slider input[type=radio]{
	    display: none;
	}
	ul.imgs{
	    padding: 0;
	    margin: 0;
	    list-style: none;    
	}
	ul.imgs li{
	    position: absolute;
	    left: 0;
	    transition-delay: 1s; /* 새 슬라이드가 이동해 오는 동안 이전 슬라이드 이미지가 배경이 보이도록 지연 */
	
	    padding: 0;
	    margin: 0;
	}
	.bullets{
	    position: absolute;
	    left: 50%;
	    transform: translateX(-50%);
	    bottom: 20px;
	    z-index: 2;
	}
	.bullets label{
	    display: inline-block;
	    border-radius: 50%;
	    background-color: rgba(0,0,0,0.55);
	    width: 20px;
	    height: 20px;
	    cursor: pointer;
	}
	/* 현재 선택된 불릿 배경 흰색으로 구분 표시 */
	.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
	    background-color: #fff;
	}
	.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
	    background-color: #fff;
	}
	.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
	    background-color: #fff;
	}
	.slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
	    background-color: #fff;
	}
	
	.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.main_slide_pic {
		margin: 50px 0px;
	}
</style>
<style type="text/css">
	/* 보호소 소개 */
   .main_intro {
      width: 1200px; height: 700px;
      margin: 50px auto;
     /*  border: 1px solid black; */
      background-color: #FFFAFA;
   }
   #main_intro_text {
      width: 45%;
      float: left;
      font-size: 17px;
      margin-left: 5%;
      margin-top: 200px;
   }
   #main_intro_pic {
      width: 45%;
      float: left;
      margin-top: 120px;
      margin-right: 5%;
   }
</style>
<style type="text/css">	
	/* 봉사 후기 */
   .main_vol {
      width: 1200px; height: 700px;
      margin: 50px auto;
      border: 1px solid black;
      background-color: #FFFAFA;
   }
</style>
<style type="text/css">	
	/* 보호중인 동물 */
   .main_animal {
      width: 1200px; height: 700px;
      margin: 50px auto;
      border: 1px solid black;
      background-color: #FFFAFA;
   }
</style>
	
</head>
<body>
   <%@ include file="header.jsp" %>
      
   <div class="main_slide_pic">
      <div class="slider">
      	<input type="radio" name="slide" id="slide1" checked>
   		<input type="radio" name="slide" id="slide2">
    	<input type="radio" name="slide" id="slide3">
    	<input type="radio" name="slide" id="slide4">
    	<ul id="imgholder" class="imgs">
	        <li><img src="../main_images/cat_dog_1200_700.jpg"></li>
	        <li><img src="../main_images/dog_1200_700.jpg"></li>
	        <li><img src="../main_images/kittens_1200_700.jpg"></li>
	        <li><img src="../main_images/pets_1200_700.jpg"></li>
	    </ul>
	    <div class="bullets">
	        <label for="slide1">&nbsp;</label>
	        <label for="slide2">&nbsp;</label>
	        <label for="slide3">&nbsp;</label>
	        <label for="slide4">&nbsp;</label>
	    </div>
      </div>
   </div>
   
   <hr>
   <div class="main_intro">
      <h2 style="text-align: center; padding-top: 50px;">보호소 소개</h2>
      <div id="main_intro_text">
         저희 입양센터에서는 유기동물을 보호하고, <br>
         새로운 가족을 만날 수 있도록 도움을 드리고 있습니다.<br><br>
         동물과 공존하는 행복한 세상!<br>
         여러분의 관심과 사랑이 함께하면 현실이 됩니다.<br><br>
         유기동물을 돕는 방법에는 입양, 자원봉사 등이 있습니다.<br>
         입양센터 홈페이지에 있는 센터 아이들을 입양하실 수도 있고,<br>
         '자원봉사 신청'을 통해 희망하는 일자에 봉사활동을 하실 수 있습니다.
      </div>
      
      <div id="main_intro_pic">
         <img alt="센터소개이미지" src="../main_images/baby_500_317.png">
      </div>
   </div>
   
   <hr>
   <div class="main_vol">
      <h2 style="text-align: center; padding-top: 50px;">봉사후기</h2>
      <div id="main_vol_content">
       
      </div>

   </div>
   
   <hr>
   <div class="main_animal">
      <h2 style="text-align: center; padding-top: 50px;">보호중인 동물</h2>
      <div id="main_animal_content">
       
      </div>

   </div>
   
   <%@ include file="footer.jsp" %>
</body>
</html>