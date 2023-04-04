<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.dogdog.model.StoreVO"%>
<%@page import="com.dogdog.model.StoreDAO"%>
<%@page import="com.dogdog.model.StoreBoardVO"%>
<%@page import="com.dogdog.model.StoreBoardDAO"%>
<%@page import="com.dogdog.model.UserVO"%>
<%@page import="com.dogdog.model.UserDAO"%>
<%@page import="com.dogdog.model.StoreReviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dogdog.model.StoreReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>똑똑</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/detailPage2.css">
<link rel="stylesheet"  href="assets/css/d_jq.css">
<link rel="stylesheet"  href="assets/css/d_pro.css">
<link rel="stylesheet" href="assets/css/ico.css">
<link rel="stylesheet"  href="assets/css/swi.css">
	

</head>
<body >
     <% 
     UserVO resultVO = (UserVO)session.getAttribute("resultVO"); 
     String[] store_id_list = request.getQueryString().split("=");
     int store_id = Integer.parseInt(store_id_list[1]) ;
     %>
    <div class="wrap show">

        <!-- Header -->
        <header>

            <section>
                <h1><a href="Main.jsp" title="DogDog">DogDog</a></h1>
                <button type="button" class="btn_menu nav_open ">메뉴</button>
                <ul class="gnb_pc">
                    <li><a href="MyPage.jsp" class="nuxt-link-exact-active nuxt-link-active">예약내역</a></li>
                    <li class="over">
                        <button type="button"><span>더보기</span></button>
                        <ul class="list_03">
                            <li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
                            <li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
                            <!-- <li><a href="https://www.goodchoice.kr/more/project">혁신 프로젝트</a></li> -->
                            <li><a href="https://www.goodchoice.kr/more/faq">자주 묻는 질문</a></li>
                            <li><a href="https://www.goodchoice.kr/more/inquiry">1:1 문의</a></li>
                            <li><a href="https://www.goodchoice.kr/more/terms">약관 및 정책</a></li>
                        </ul>
                    </li>
                    <% String updateLogout = "";
                    updateLogout = resultVO != null ? "<li class='over pic'><a href='MyPage.jsp'><img src='"+ resultVO.getUser_profile()+"' alt='"+resultVO.getUser_nick()+"'></a>"+
                            "<ul class='list_04' style='display:none'>" +
                                "<li><b>"+ resultVO.getUser_nick()+"</b></li>"+     //로그인된 닉네임임
                                "<li><a href='editcontent.jsp'>내정보</a></li>" +
                                "<li><a href='MyPage.jsp'>예약내역<!-- span>0건</span --></a></li>" +
                                "<li><button type='button' class='pop_logout_open'><a href='LogoutService.do'>로그아웃</a></button></li></ul></li>" : "<li><a href='login.html'><span>로그인</span></a></li>";%>
                                <%= updateLogout %>
                </ul>

                <!-- Search -->
          
                <!-- //Search -->

            </section>
        </header>

        <!-- Bg Dimm -->
        <div class="bg_dimm" onclick="close_layer();">&nbsp;</div>
        <div class="bg_dimm_prevent">&nbsp;</div>

        <!-- 추천검색어 -->
        <div class="recommend_srch">
            <div class="scroll_srch">
                <div class="scroller">
                    <div class="default" style="display:block">
                        <strong>추천 검색어</strong>
                        <ul></ul>
                    </div>
                    <!-- 연관검색어 -->
                    <div class="chain" style="display: none;">
                        <ul></ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div class="gnb_opacity"><button class="btn_close">닫기</button></div>
        <div class="menu_wrap">

            <div class="menu">
                <div class="top">
                    <!-- 비회원 -->
                    <div class="guest">
                        <div class="btn_join">
                            로그인 후 예약하시면<br>할인 쿠폰과 추가 혜택을 받을 수 있어요.<br>
                            <a href="https://www.goodchoice.kr/user/login"><span>로그인</span></a>
                        </div>
                        <div class="bot">
                            <!-- 스크립트 링크 -->
                            <a href="https://www.goodchoice.kr/user/login">
                                <p>-<br><span>포인트</span></p>
                            </a>
                            <a href="https://www.goodchoice.kr/user/login">
                                <p>-<br><span>쿠폰함</span></p>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- Iscroll -->
                <div class="scroll_nav">
                    <div class="scroller">
                        <ul>
                            <li><a href="https://www.goodchoice.kr/">홈</a></li>
                            <li class="depth_2">
                                <button type="button" class="has_ul"><span>숙소유형</span></button>
                                <ul>
                                    <li><a href="https://www.goodchoice.kr/product/home/1">모텔</a></li>
                                    <li><a href="https://www.goodchoice.kr/product/search/2">호텔·리조트</a></li>
                                    <li><a href="https://www.goodchoice.kr/product/search/3">펜션</a></li>
                                    <li><a href="https://www.goodchoice.kr/product/search/6">게스트하우스</a></li>
                                    <li><a href="https://www.goodchoice.kr/product/search/5">캠핑·글램핑</a></li>
                                    <li><a href="https://www.goodchoice.kr/product/search/7">한옥 </a></li>
                                </ul>
                            </li>
                            <li><a href="https://www.goodchoice.kr/product/srp">내주변</a></li>
                        </ul>
                        <ul>
                            <li><a href="https://www.goodchoice.kr/user/login?returnUrl=my%2FreserveList">예약 내역</a></li>
                        </ul>
                        <ul>
                            <li class="depth_2"><button type="button" class="has_ul"><span>더보기</span></button>
                                <ul>
                                    <li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
                                    <li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
                                    <li><a href="https://www.goodchoice.kr/more/faq">고객문의</a></li>
                                    <li><a href="https://www.goodchoice.kr/my/notiSetting">알림설정</a></li>
                                    <li>
                                        <a href="https://q.egiftcard.kr/couponstatus/" target="_blank">
                                            똑똑 상품권 잔액 조회
                                        </a>
                                    </li>
                                    <li><a href="https://www.goodchoice.kr/more/terms">약관 및 정책</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="center">
                            <p>똑똑 고객행복센터</p>
                            <p><a href="tel:1670-6250">1670-6250</a></p>
                            <p>오전 9시 - 새벽 3시</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //Mobile Menu -->

        <!-- CSS -->
        <link rel="stylesheet" href="/css/owl.carousel.css">
        <link rel="stylesheet" href="/css/swiper.css?rand=1680214465">
        <link rel="stylesheet" href="/css/theme_icon.css?rand=1680214465">
        <link rel="stylesheet" href="/css/jquery-ui.css?rand=1680214465">
        <link rel="stylesheet" href="/css/product.css?rand=1680214465">


        <!-- Content  -->
        <div id="content" class="detail "> <!-- 비제휴점 inert_room 클래스 추가 -->

            <!-- Top -->
            <div class="top">

                <!-- Left -->
                <div class="left">


				<% 
					StoreBoardDAO sbDAO = new StoreBoardDAO(); 
					StoreBoardVO sbVO = sbDAO.selectBoard(store_id);
					String[] storeboard_content = sbVO.getStoreboard_content().split(",");
					/* System.out.println(storeboard_content.length); */
					int[] translate3d = {0, -490, -980, -1470, -1960
										  , -2450, -2940, -3430, -3920, -4410};
					int cnt = 0;
				%>
                    <!-- Gallery (PC) -->
                    <div class="gallery_pc">
                        <!-- Image Size : 490 x 348 -->
                        <!-- Swiper -->
                        <div class="swiper-container gallery-top swiper-container-horizontal swiper-container-fade">
                            <ul class="swiper-wrapper" style="transition-duration: 0ms;">
                           	<% for(String sbc:storeboard_content) { %>
                           	<li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="16"
                                    style="width: 490px; transform: translate3d(<%= translate3d %>px, 0px, 0px); opacity: 1; transition-duration: 0ms;">
                                    <img src="<%= sbc %>" data-src="<%= sbc %>"
                                        alt="<%= sbVO.getStore_name() %>" class="swiper-lazy"></li>
                           	<% cnt++ ;} cnt=0; %>
                                
                                <!-- <li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="17"
                                    style="width: 490px; transform: translate3d(-490px, 0px, 0px); opacity: 1; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/11/01/10/lHYFaEX15oGL.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 부대시설" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="18"
                                    style="width: 490px; transform: translate3d(-980px, 0px, 0px); opacity: 1; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/gn6UCDGhmjJS.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 전경" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
                                    data-swiper-slide-index="19"
                                    style="width: 490px; transform: translate3d(-1470px, 0px, 0px); opacity: 1; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/3oOBWQu6Pfme.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 전경" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-active" data-swiper-slide-index="0"
                                    style="width: 490px; transform: translate3d(-1960px, 0px, 0px); opacity: 1; transition-duration: 0ms;">
                                    <img alt="포천 베어힐 카라반 펜션 | 대표이미지" class="swiper-lazy swiper-lazy-loaded"
                                        src="//image.goodchoice.kr/resize_490x348/affiliate/2022/10/31/17/dT3AnfU7hEor.jpg">
                                </li>
                                <li class="swiper-slide swiper-slide-next" data-swiper-slide-index="1"
                                    style="width: 490px; transform: translate3d(-2450px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/rOHiKEYtS9Qj.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반201호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="2"
                                    style="width: 490px; transform: translate3d(-2940px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/z1uDQd7psxeX.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반202호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="3"
                                    style="width: 490px; transform: translate3d(-3430px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/QHxjoWTdve4z.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반202호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="4"
                                    style="width: 490px; transform: translate3d(-3920px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/unvRbZiyNA8r.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 102호(단체룸)" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="5"
                                    style="width: 490px; transform: translate3d(-4410px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/JhlekWCg3M8m.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 102호(단체룸)" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="6"
                                    style="width: 490px; transform: translate3d(-4900px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/x70ZsOF5PYzg.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반204호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="7"
                                    style="width: 490px; transform: translate3d(-5390px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/2MKpQUFchNlL.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반204호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="8"
                                    style="width: 490px; transform: translate3d(-5880px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/lE2MLhm7A1Y9.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 103호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="9"
                                    style="width: 490px; transform: translate3d(-6370px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/fRJMpubUl1PK.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 103호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="10"
                                    style="width: 490px; transform: translate3d(-6860px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/aseZgwfW6ir1.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반203호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="11"
                                    style="width: 490px; transform: translate3d(-7350px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/cQlfksu4e9M5.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 104호(단체룸)" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="12"
                                    style="width: 490px; transform: translate3d(-7840px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/Ukm7tboqMYlD.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 104호(단체룸)" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="13"
                                    style="width: 490px; transform: translate3d(-8330px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/MH3Kl4zyZc9F.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 101호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="14"
                                    style="width: 490px; transform: translate3d(-8820px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/3EZgeOjHLDQn.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 101호" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="15"
                                    style="width: 490px; transform: translate3d(-9310px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/08/10/18/6bCcnxYI1TN4.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 전경" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="16"
                                    style="width: 490px; transform: translate3d(-9800px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/08/10/18/iNtJR52IfFwv.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 부대시설" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="17"
                                    style="width: 490px; transform: translate3d(-10290px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/11/01/10/lHYFaEX15oGL.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 부대시설" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="18"
                                    style="width: 490px; transform: translate3d(-10780px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/gn6UCDGhmjJS.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 전경" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="19"
                                    style="width: 490px; transform: translate3d(-11270px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/3oOBWQu6Pfme.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 전경" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
                                    data-swiper-slide-index="0"
                                    style="width: 490px; transform: translate3d(-11760px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img alt="포천 베어힐 카라반 펜션 | 대표이미지" class="swiper-lazy swiper-lazy-loaded"
                                        src="//image.goodchoice.kr/resize_490x348/affiliate/2022/10/31/17/dT3AnfU7hEor.jpg">
                                </li>
                                <li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
                                    data-swiper-slide-index="1"
                                    style="width: 490px; transform: translate3d(-12250px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/rOHiKEYtS9Qj.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반201호" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="2"
                                    style="width: 490px; transform: translate3d(-12740px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/z1uDQd7psxeX.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반202호" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3"
                                    style="width: 490px; transform: translate3d(-13230px, 0px, 0px); opacity: 0; transition-duration: 0ms;">
                                    <img data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/QHxjoWTdve4z.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 카라반202호" class="swiper-lazy"></li> -->
                            </ul>
                        </div>
                        <div class="swiper-container gallery-thumbs swiper-container-horizontal">
                            <ul class="swiper-wrapper"
                                style="transform: translate3d(-460px, 0px, 0px); transition-duration: 0ms;">
                                <% for(String sbc:storeboard_content) { %>
                           	<li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="<%= cnt %>"
                                    style="width: 115px;"><img
                                        src="<%= sbc %>" data-src="<%= sbc %>
                                        alt="포천 베어힐 카라반 펜션 | 부대시설" class="swiper-lazy"></li>
                           	<% cnt++ ;} cnt=0; %>
                                
                                <!-- <li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="17"
                                    style="width: 115px;"><img
                                        data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/11/01/10/lHYFaEX15oGL.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 부대시설" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="18"
                                    style="width: 115px;"><img
                                        data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/gn6UCDGhmjJS.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 전경" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
                                    data-swiper-slide-index="19" style="width: 115px;"><img
                                        data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/3oOBWQu6Pfme.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 전경" class="swiper-lazy"></li>
                                <li class="swiper-slide swiper-slide-active" data-swiper-slide-index="0"
                                    style="width: 115px;"><img alt="포천 베어힐 카라반 펜션 | 대표이미지"
                                        class="swiper-lazy swiper-lazy-loaded"
                                        src="//image.goodchoice.kr/resize_490x348/affiliate/2022/10/31/17/dT3AnfU7hEor.jpg">
                                </li>
                                <li class="swiper-slide swiper-slide-next" data-swiper-slide-index="1"
                                    style="width: 115px;"><img alt="포천 베어힐 카라반 펜션 | 카라반201호"
                                        class="swiper-lazy swiper-lazy-loaded"
                                        src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/rOHiKEYtS9Qj.jpg">
                                </li>
                                <li class="swiper-slide" data-swiper-slide-index="2" style="width: 115px;"><img
                                        alt="포천 베어힐 카라반 펜션 | 카라반202호" class="swiper-lazy swiper-lazy-loaded"
                                        src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/z1uDQd7psxeX.jpg">
                                </li>
                                <li class="swiper-slide" data-swiper-slide-index="3" style="width: 115px;"><img
                                        alt="포천 베어힐 카라반 펜션 | 카라반202호" class="swiper-lazy swiper-lazy-loaded"
                                        src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/QHxjoWTdve4z.jpg">
                                </li>
                                <li class="swiper-slide" data-swiper-slide-index="4" style="width: 115px;"><img
                                        data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/unvRbZiyNA8r.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 102호(단체룸)" class="swiper-lazy"></li>
                                <li class="swiper-slide" data-swiper-slide-index="5" style="width: 115px;"><img
                                        data-src="//image.goodchoice.kr/resize_490x348/affiliate/2022/06/21/10/JhlekWCg3M8m.jpg"
                                        alt="포천 베어힐 카라반 펜션 | 102호(단체룸)" class="swiper-lazy"></li> -->

                            </ul>
                        </div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>


                    </div>

                    <!-- 비제휴점 사진 -->
                    <div class="inert_pic">
                        <img src="//image.goodchoice.kr/resize_490x348/adimg_new/detail_none.png" alt="">
                    </div>

                </div>
                <!-- //Left -->

                <!-- Datepicker -->
                <input type="text" class="product_date" style="display: none;"><button type="button"
                    class="comiseo-daterangepicker-triggerbutton ui-button ui-corner-all ui-widget comiseo-daterangepicker-bottom comiseo-daterangepicker-vfit"
                    id="drp_autogen0">03.31 - 04.01<span class="ui-button-icon-space"> </span><span
                        class="ui-button-icon ui-icon ui-icon-triangle-1-s"></span></button>

                <!-- Right -->
                <div class="right">
					
                    <!-- Info -->
                    <div class="info">
                        <p class="badge">
                        </p>


                        <h2><%= sbVO.getStore_name() %></h2>
						<% 
						StoreDAO sDAO = new StoreDAO();
						StoreVO store_info = sDAO.selectOneList(store_id);
						%>
                        <p class="address"><%= store_info.getStore_addr() %></p>

                    </div>



                    <!-- 업체 이벤트 -->



                    <!-- 장님 한마디 & 추천이유 -->
                    <div class="comment" style="margin-bottom: 160px;">
                        <strong>사장님 한마디</strong>
                        <button>더보기</button>
                        <div><%= sbVO.getStoreboard_comment() %></div>
                    </div>
                    <div id="reservationBtn" style="border-radius:5px; background-color:#eb1b47; font-size: 1rem; font-weight: bold; color: white; margin-left:1rem; padding:1.1rem; cursor:pointer;"OnClick="location.href ='reservePage.jsp'">예약하기</div>
                    
                </div>
                <!-- //Right -->

            </div>
            <!-- //Top -->

            <!-- Tab Menu -->
            <div class="tab">
                <button onclick="init_map('37.819163520545', '127.26470774528');"><span>업소 정보</span></button>
                <button class="tab_review"><span>리뷰</span></button>
            </div>

            <form id="product_filter_form" method="get" action="https://www.goodchoice.kr/product/detail"
                data-sel_date="2023-03-31" data-sel_date2="2023-04-01">


                <input id="sel_date" type="hidden" name="sel_date" value="2023-03-31">

                <input id="sel_date2" type="hidden" name="sel_date2" value="2023-04-01">

                <input id="ano" type="hidden" name="ano" value="71089">

                <input id="adcno" type="hidden" name="adcno" value="3">

                <!-- 객실안내/예약 -->

                <!-- //객실안내/예약 -->
            </form>

            <!-- 예약 경고 -->


            <!-- 숙소정보 -->
            <article class="detail_info">
                <!-- 기본 정보 -->
                <button type="button" id="default_info_tab" class="category on"><span>기본 정보</span></button>
                <section class="default_info" style="display: block;">

                    <!-- 사장님 한마디 & 추천이유 -->
                    <div class="comment_mobile">
                        <h3>사장님 한마디</h3>
                        <%= sbVO.getStoreboard_comment() %>
                    </div>


                    <!-- <h3>주변정보</h3>
                    <ul>
                        <li>베어스타운 차량 9분</li>
                        <li>수원산정상전망대 차량 12분</li>
                        <li>가평수목원 차량 22분</li>
                    </ul> -->

                    <h3>기본 정보</h3>
                    <ul>
                        <li>입실 : 14:00 | 퇴실 : 11:00</li>
                        <li>22시 이후 입실 시 사전문의 (필수)</li>
                        <li>체크인/체크아웃 시 카페에서 직접 키 수령 및 반납</li>
                        <li>무료 Wi-Fi</li>
                        <li>주차 가능</li>
                    </ul>

                    <h3>객실 정보</h3>
                    <ul>
                        <li>개인계정 필요</li>
                    </ul>

                    <h3>추가 정보</h3>
                    <ul>
                        <li><b>현장 결제</b></li>
                    </ul>

                    <!-- <h3>펜션 서비스</h3>
                    <ul>
                        <li><b>시설 이용문의 및 비용 별도 펜션문의</b></li>
                        <li>카페 : 09:00~21:00 / 아메리카노, 카페라떼, 과일주스, 와인, 맥주, 천연발효빵, 유기농 통밀빵, 유기농 호미빵 등 (펜션 상황에 따라 변동될 수 있음)
                        </li>
                        <li>야외 수영장 (하절기 운영) : 2개 / 10:00~19:00 / 수영복, 반팔 반바지 착용 / 어린이는 반드시 보호자 동반 시 이용 가능 / 천연 계곡물 사용 /
                            투숙객 외의 방문객 수영장 이용 시 이용 비용 청구 (유료)</li>
                        <li>레스토랑 : 09:00~21:00 (레스토랑에서 식사 시 커피 주문 시 50% 할인)</li>
                        <li>세미나실 : 사전 예약 시 협의 / 2시간 기준 120,000원 (현장결제) / 빔프로젝트, 스크린 구비 / 펜션 예약 시 사전 예약 필수</li>
                        <li>동물 먹이관람 : 오전 07:00~08:00, 오후 15:00~16:00 / 반달가슴곰 6마리, 흰사슴 2마리, 사슴 5마리 / 먹이주는 시간에만 관람 가능</li>
                        <li>전기차 충전기 설치</li>
                    </ul>

                    <h3>바비큐 시설</h3>
                    <ul>
                        <li>셀프 바비큐 세트 : 숯 2봉지+그릴+부탄가스+토치+목장갑 25,000원 (고기 미포함) / 숯 1봉지 추가 5,000원</li>
                        <li>이용시간 : 입실 후~22:00</li>
                        <li>셀프 바비큐 세트 구매 후 개별 테라스 이용</li>
                        <li><b>현장 결제</b></li>
                    </ul> -->

                    <h3>취소 및 환불 규정</h3>
                    <ul>
                        <li>숙박일 기준 10일 전 : 100% 환불</li>
                        <li>숙박일 기준 9일 전 : 90% 환불</li>
                        <li>숙박일 기준 8일 전 : 80% 환불</li>
                        <li>숙박일 기준 7일 전 : 70% 환불</li>
                        <li>숙박일 기준 6일 전 : 60% 환불</li>
                        <li>숙박일 기준 5일 전 : 50% 환불</li>
                        <li>숙박일 기준 4일 전 : 40% 환불</li>
                        <li>숙박일 기준 3일 전 : 30% 환불</li>
                        <li>숙박일 기준 2일 전 : 20% 환불</li>
                        <li>숙박일 기준 1일 전 : 10% 환불</li>
                        <li>숙박일 기준 당일 및 NO-SHOW : 환불불가</li>
                        <li>취소 및 환불시 수수료가 발생할 수 있습니다</li>
                    </ul>

                    <h3>확인사항 및 기타</h3>
                    <ul>
                        <li><b>
                                <font color="#CA0101">당일예약, 당일이용 (21시 이후 입실)을 원하는 경우 꼭 업체에 이용가능여부 문의 후 예약바랍니다</font>
                            </b></li>
                        <li>최대 인원 초과시 입실이 불가 합니다 (방문객 불가)</li>
                        <!-- <li>객실 내 육류, 튀김류, 생선류 조리를 할 수 없습니다</li>
                        <li>전 객실 애완동물 출입이 불가합니다</li>
                        <li>보호자 없는 미성년자 숙박이용 적발 시 강제 퇴실 및 취소 환불 절대 불가합니다</li> -->
                        <li>해당 이미지는 실제와 상이 할 수 있습니다</li>
                        <li>이용시설의 분실 및 훼손의 책임은 이용자에게 있으니 주의부탁드립니다</li>
                        <!-- <li>객실 내에서는 화재위험물질 (화약, 폭죽 등)은 사용 하실 수 없습니다 (화재로 인한 책임은 이용자에게 있습니다)</li>
                        <li>쓰레기는 지정된 장소에 분리하여 주시기 바랍니다</li> -->
                        <li>위의 정보는 업소의 사정에 따라 변경될 수 있습니다</li>
                        <li>성수기 기간동안 일부 객실의 경우 요금변동이 있을 수 있습니다</li>
                        <li>수영장 운영은 날씨 또는 업소 상황에 따라 변동 될 수 있습니다</li>
                    </ul>
                    <div class="map" id="google_maps"></div>
                </section>

                <!-- 편의시설 및 서비스 -->
                <button type="button" class="category"><span>편의시설 및 서비스</span></button>
                <section class="service" style="display: none;">
                    <ul class="theme_wrap">
                        <li class="theme_60">와이파이</li>
                        <!-- <li class="theme_143">전기밥솥</li>
                        <li class="theme_148">BBQ</li> -->
                        <li class="theme_151">카페</li>
                        <li class="theme_221">주차장</li>
                        <!-- <li class="theme_223">TV</li>
                        <li class="theme_227">에어컨</li>
                        <li class="theme_228">냉장고</li>
                        <li class="theme_229">객실샤워실</li> -->
                        <li class="theme_231">드라이기</li>
                    </ul>
                </section>

                <!-- 판매자 정보 -->
                <button type="button" class="category"><span>판매자 정보</span></button>
                <section class="seller_info" style="display: none;">
                    <h3>상호</h3>
                    <ul>
                        <li><%= store_info.getStore_name() %></li>
                    </ul>
                    <h3>대표자명</h3>
                    <ul>
                        <li><%= store_info.getStore_owner() %></li>
                    </ul>
                    <h3>주소</h3>
                    <ul>
                        <li><%= store_info.getStore_addr() %></li>
                    </ul>
                    <h3>전화번호</h3>
                    <ul>
                        <li><%= store_info.getStore_tel() %></li>
                    </ul>
                    <!-- <h3>사업자번호</h3>
                    <ul>
                        <li>367-88-00819</li>
                    </ul> -->
                </section>
            </article>
            <!-- //숙소정보 -->

            <style>
                .pop_review .iscroll_cp {
                    overflow-y: scroll !important;
                }

                .review .score_top p span.review_link {
                    width: auto;
                    color: rgba(0, 0, 0);
                    cursor: pointer;
                }

                .terms_02 {
                    padding: 28px 16px 30px 16px;
                    text-align: left;
                }

                .terms_02 h3 {
                    margin-bottom: 12px;
                    font-size: 15px;
                    line-height: normal;
                    color: rgba(0, 0, 0, 0.87);
                }

                .terms_02 li,
                .terms_02 p {
                    margin-bottom: 6px;
                    font-size: 15px;
                    line-height: 24px;
                    color: rgba(0, 0, 0, 80);
                }

                .terms_02 p~h3 {
                    margin-top: 32px;
                }

                .terms_02 p+ul {
                    margin-top: 8px;
                }

                .terms_02 .txt ul li {
                    padding: 0;
                    border-top: none;
                }
            </style>
            <!-- 리뷰 -->
            <% 
            StoreReviewDAO srDAO = new StoreReviewDAO();
            UserDAO uDAO = new UserDAO();
            double storeRate = srDAO.selectStoreReviewRate(store_id);
            String storeRateS = String.format("%.2f", storeRate);
            ArrayList<StoreReviewVO> resultList = srDAO.selectStoreReview(store_id);
            String rateComment = "";
            %>
            <article id="review" class="review">
                <div class="score_top"><strong><%= rateComment = storeRate >= 4.0 ? "최고예요!" : "좋아요!" %></strong>
                    <div class="score_wrap">
                        <div class="star-ratings">
							<div 
						    class="star-ratings-fill space-x-2 text-lg" style="width: <%= storeRate * 20 %>%"
							>
								<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
							</div>
							<div class="star-ratings-base space-x-2 text-lg" style="color: gray;">
								<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
							</div>
						</div>
                        <div class="num" style=" padding-top:0.7rem; color:black;"><%= storeRateS %></div>
                    </div>
                    <p>
                        전체 리뷰 <b><%= srDAO.countStoreReview(store_id)%></b> <span>|</span>
                        <!-- 제휴점 답변 <b>3</b> <span>|</span> --> <span class="review_link">운영정책 &gt;</span></p>
                </div>
                <ul>
                <% for(StoreReviewVO srVO : resultList) { 
                	double rate = srVO.getReview_rate();
                	String nick = uDAO.selectNick(srVO.getUser_id());
                	String comment = "";
                	
                	if(rate == 5.0) {
                		comment += "여기만한 곳은 어디에도 없을 거예요.";
                	} else if(rate >= 4.0) {
                		comment += "추천해요.";
                	} else if(rate >= 2.5) {
                		comment += "보통이에요.";
                	} else {
                		comment += "추천하지 않을래요.";
                	}
                	
            		String stars = "";
            		String restStars = "";
            		
            		for(double i = 0; i < rate; i++) {
            			stars += "★";
            		}
            		for(double i = 0; i < 5 - rate; i++) {
                   		restStars += "★";
                    }
                %>
                	<li>
                        <div class="guest">
                            <p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_22.png" alt="<%= nick%>"></p> <!-- <span
                                class="best_review">베스트 리뷰</span> --> 
                                <strong><%= comment %> </strong>
                            <div class="score_wrap_sm">
                                <span class='star'><%= stars %><span>★★★★★</span></span><span class='star_rest'><%= restStars %>
                                <%-- <span class='top5_rate'><%= rate %></span> --%>
                                <div class="num"><%= rate %></div>
                            </div>
                            <div class="name"><!-- <b>104호(단체룸) 객실 이용 · </b> --><%= nick%>
                            </div>
                            <div class="txt"><%= srVO.getReview_content()%></div> <!----> <span
                                class="date"><%= srVO.getReview_date() %></span>
                        </div>
                    </li>
                <% } %>
                    
                </ul>
                <div id="pagination">
                    <div class="paging"><!----><!----></div>
                </div>
                <div class="layer pop_full pop_review">
                    <div class="fix_title">
                        리뷰 운영정책
                        <button onclick="close_layer();">닫기</button>
                    </div>
                    <div class="iscroll_cp">
                        <div class="scroller">
                            <div class="terms_02">
                                <div class="txt">
                                    <h3>1. 리얼리뷰 란?</h3>
                                    <p>여기어때는 고객님에게 신뢰성 높은 양질의 리뷰를 제공하기 위해 예약 결제를 통해 실제로 숙소를 이용한 회원만 리뷰를 남길 수 있으며, 작성된
                                        리뷰에는 '리얼리뷰'인증 마크가 표기됩니다. </p>
                                    <h3>2. 베스트리뷰 란?</h3>
                                    <p>베스트 리뷰는 리뷰 내용, 글자 수, 등록된 사진, 작성일 등을 종합적으로 고려해 여기어때 또는 판매자가 추천한 리뷰입니다.</p>
                                    <h3>3. 리얼리뷰 작성</h3>
                                    <p>숙소에 체크인하면, 리뷰를 작성할 수 있습니다.</p>
                                    <ul>
                                        <li>모텔 : 체크인 시간~체크아웃 14일 이내</li>
                                        <li>모텔 외 : 체크인 시간~체크아웃 30일 이내</li>
                                    </ul>
                                    <h3>4. 삭제 정책</h3>
                                    <p>여기어때는 고객님이 작성하신 긍정/부정적인 모든 리뷰를 있는 그대로 게시하는 것을 기본 운영방침으로 삼고 있습니다.</p>
                                    <p>정보통신망 이용촉진 및 정보보호 등에 관한 법률 제44조 2항(정보 삭제 요청 등)에 의거하여 아래의 정책에 위배되는 게시물의 경우 삭제조치가
                                        진행됩니다.</p>
                                    <ul>
                                        <li>1) 욕설 및 비속어, 음란성</li>
                                        <li>2) 스팸, 광고, 도배성</li>
                                        <li>3) 방문한 숙소와 전혀 관계없는 내용</li>
                                        <li>4) 리모델링, 사업주 변경의 경우</li>
                                        <li>5) 타업체를 거론한 게시물</li>
                                        <li>6) 예약을 취소한 게시물</li>
                                        <li>7) 권리침해신고</li>
                                    </ul>
                                    <h3>5. 처리 절차 및 참고내용</h3>
                                    <ul>
                                        <li>1) 삭제 처리는 1차 실무자를 거쳐 최종 책임자의 확인하에 처리되고 있습니다.</li>
                                        <li>2) 삭제된 리뷰는 평점에 포함되지 않으며 적립된 포인트가 차감됩니다.<br>(리모델링, 사업주 변경의 경우는 포인트 미차감)</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <!-- //리뷰 -->

        </div>
        <!-- //Content  -->

        <!-- #1 팝업 - 멤버쉽 혜택 pop_mem(); -->
        <div class="layer pop_full pop_mem">
            <div class="fix_title">
                ★ ! ! 예약 주의사항 ! ! ★
                <button onclick="close_layer();">닫기</button>
            </div>
            <div class="iscroll_cp">
                <div class="scroller">

                    <article class="promotion-padding"> <!-- 호텔 > 이벤트 영역만 카드형식으로 스타일 추가 -->

                        <strong>
                            <span class="title_number">
                                이것만큼은 꼭 지켜주세요
                                <span class="title">

                                </span>
                                <span class="icon-img_number_1"></span>
                            </span>
                            <p></p>
                        </strong>
                    </article>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer>
            <div class="align">

                <p><b>고객행복센터 9915-6486</b><span>오전 9시 - 새벽 3시</span></p>
                <address>
                    <span>(주) 승재승재</span>
                    주소 : 광주광역시 북구 낭만대로 18, 18타워 18층 | 대표이사 : 조승재 | 사업자등록번호: 742-86-00224 | 전자우편주소 :
                    help@goodchoice.kr<br>
                    통신판매번호 : 2017-서울강남-01779 | 관광사업자 등록번호: 제1026-24호 | 전화번호 : 1670-6250 | 호스팅서비스제공자의 상호 표시:
                    (주)조토리즈컴퍼니<br>
                    <span class="order">(주) 승재승재는 통신판매중개자로서 통신판매의 당사자가 아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게
                        있습니다.</span><br>
                    Copyright GC COMPANY Corp. All rights reserved.
                </address>



            </div>

        </footer>

    </div>

    <!-- 상단으로 -->
    <button class="btn_go_top" onclick="moveTop();">상단으로</button>

    <!-- //Wrap -->

    <!-- Script -->
    <!-- Library -->



    <script type="text/javascript" src="https://www.goodchoice.kr/js/service/datepick.js?rand=1680214466"></script>
    <script type="text/javascript"
        src="https://www.goodchoice.kr/js/service/product.detail.js?rand=1680214466"></script>
    <script type="text/javascript" src="https://www.goodchoice.kr/js/service/product.async.js?rand=1680214466"></script>





    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
    
    
    
<script src="assets/js/detailPage.js"></script>
<script src="assets/js/detailPage2.js"></script>
<script src="assets/js/detailPage3.js"></script>




          
</body>
</html>