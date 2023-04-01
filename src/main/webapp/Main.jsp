<%@page import="com.dogdog.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="assets/css/test.css"  type="text/css" />
	<link rel="stylesheet" type="text/css" href="assets/css/common.css">
	<link rel="stylesheet" type="text/css" href="assets/css/heregood.css">


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

   <style>

  
     
          </style>
</head>

<body>

         <!-- Wrap -->
    <div class="wrap show">

        <!-- Header -->
        <header class="recommend_header">

            <section>
                <h1><a class="" href="Main.jsp" title="여기어때">여기어때</a></h1>
                <button type="button" class="btn_menu nav_open ">메뉴</button>
                <ul class="gnb_pc">
                    <li><a href="https://www.goodchoice.kr/user/login?returnUrl=my%2FreserveList">예약내역</a></li>
                    <li class="over">
                        <button type="button"><span>더보기</span></button>
                        <ul class="list_03" style="display: none; opacity: 1;">
                            <li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
                            <li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
                            <!-- <li><a href="https://www.goodchoice.kr/more/project">혁신 프로젝트</a></li> -->
                            <li><a href="https://www.goodchoice.kr/more/faq">자주 묻는 질문</a></li>
                            <li><a href="https://www.goodchoice.kr/more/inquiry">1:1 문의</a></li>
                            <li><a href="https://www.goodchoice.kr/more/terms">약관 및 정책</a></li>
                        </ul>
                    </li>
                    <li><a href="login.html"><span>로그인</span></a></li>
                </ul>

                <!-- Search -->
                <div class="srch_bar">
                    <div class="wrap_inp">
                        <input type="text" id="keyword" placeholder="지역, 숙소명" autocomplete="off">
                        <button type="button" class="btn_srch" style="right: 396px;">검색</button>
                    </div>
                    <button class="btn_cancel" onclick="srch_close()">취소</button>
                </div>
                <!-- //Search -->

            </section>
        </header>

        <!-- Bg Dimm -->
        <div class="bg_dimm" onclick="close_layer();">&nbsp;</div>
        <div class="bg_dimm_prevent">&nbsp;</div>

        <!-- 추천검색어 -->
      

        <!-- Mobile Menu -->

        <!-- //Mobile Menu -->

        <!-- CSS -->


                <!-- Result Top -->

                <!-- //Result Top -->

                <!-- Sub Top -->
                <div class="sub_top_wrap"> <!-- 페이백일때 클래스 추가 early_top -->
                
                </div>




    <div class="outer">
        <div class="inner-list">
          <div class="inner">
            <a href="ex01_board.html"><img class="imgs" src="assets/img/dd.png" alt=""></a>
          </div>
          <div class="inner">
            <a href="ex02_myPage1.html"><img class="imgs" src="assets/img/j_p.png" alt=""></a>
          </div>
          <div class="inner">
            <a href="ex03_myPage2.html"><img class="imgs" src="assets/img/pic.jfif" alt=""></a>
          </div>
        </div>
      </div>
      
      <div class="button-list">
        <div class="button-left"></div>
        <div class="button-right"></div>
      </div>


     <div class="main_link">
        <ul class="main_link_items">
          <li><a href="listPage.jsp" menu-link="1"><span class="ico_01">&nbsp;</span><p>강아지 유치원</p></a></li>
          <li><a href="listPage.jsp" menu-link="2"><span class="ico_02">&nbsp;</span><p>강아지 호텔</p></a></li>
          <li><a href="listPage.jsp" menu-link="3"><span class="ico_03">&nbsp;</span><p>강아지 병원</p></a></li>
          <li><a href="listPage.jsp" menu-link="6"><span class="ico_04">&nbsp;</span><p>강이지 미용실</p></a></li>
        </ul>
      </div>


      <div class="top5_1">
        <h1>유치원 인기순위</h1>
      </div>
 <div id="slideShow">
    <ul class="slides">
      <li ><img src="assets/img/pic.jfif" alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif" alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
    </ul>  
    <p class="controller">
      <!-- &lang: 왼쪽 방향 화살표
      &rang: 오른쪽 방향 화살표 -->
      <span class="prev">&lang;</span>  
      <span class="next">&rang;</span>
    </p>
  </div>
     
     <script src="assets/js/main.js"></script>
                 <script src="assets/js/heregood.js"></script>
     
</body>
</html>