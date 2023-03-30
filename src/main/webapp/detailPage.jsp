<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/detailPage.css">
<link rel="stylesheet" href="assets/css/carousel.css">
<link rel="stylesheet"  href="assets/css/reservation.css">

	<link rel="stylesheet" type="text/css" href="assets/css/common.css">
	<link rel="stylesheet" type="text/css" href="assets/css/heregood.css">



</head>
<body >
          <!-- Google Tag Manager (noscript) -->


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
                <!-- //Sub Top -->

                <!-- Datepicker -->


                <!-- Content  -->
                    <!-- Area -->

                    <!-- //Area -->

                    <!-- Filter -->
                 
                    <!-- //Filter -->

                    <!-- List -->
             
            <!-- //Content  -->
    


      

        </div>

                    <div class="aaa">
        

                    </div>

        

                     </div> 
                 
                     <div id="screen">
                        <div class="images">
                            <div class="container">
                                <img id="mainImg" src="assets/img/쿼카1.png" alt="">


                             
                            </div>
                            <div id="slideShow">
                                <ul class="slides">
                                    <li><img class="slideImg current-img" src="assets/img/쿼카1.png" alt=""></li>
                                    <li><img class="slideImg" src="assets/img/쿼카2.jpg" alt=""></li>
                                    <li><img class="slideImg" src="assets/img/쿼카3.jpg" alt=""></li>
                                    <li><img class="slideImg" src="assets/img/쿼카4.jpg" alt=""></li>
                                    <li><img class="slideImg" src="assets/img/쿼카5.png" alt=""></li>
                                    <li><img class="slideImg" src="assets/img/쿼카6.jpg" alt=""></li>
                                    <li><img class="slideImg" src="assets/img/쿼카7.jpg" alt=""></li>
                                </ul>
                                <p class="controller">
                                    <span class="prev">&lang;</span>  
                                    <span class="next">&rang;</span>
                                </p>
                            </div>
                        </div>

                        <div id="title">
                            <h2 class="storeName store">브라더 하우스</h3>
                            <p class="storeAddr store">서울특별시 마포구 연남동 228-29 101호</p>
                
                            <div class="ownerComment">
                                <p><strong>사장님 한마디</strong></p>
                                <span class="commentContent">여행을 아주 좋아하고 사람 사귀는 것을 좋아하여 게스트 하우스까지 운영을 하게 된 주인장입니다</span>
                            </div>
                        </div>
                
     
                
                        <div class="menuTab">
                
                            <ul class="tabs">
                              <li class="tab-link current" data-tab="tab-1">tab1 <hr class="tab-line current-line"></li>
                              <li class="tab-link" data-tab="tab-2">tab2 <hr class="tab-line"></li>
                              <li class="tab-link" data-tab="tab-3">tab3 <hr class="tab-line"></li>
                            </ul>
                            
                            <hr id="mid-line">
                          
                            <div id="tab-1" class="tab-content current">tab content1</div>
                            <div id="tab-2" class="tab-content">tab content2</div>
                            <div id="tab-3" class="tab-content">tab content3</div>
                          
                          </div>
                
                
                
                    </div>


                     <!-- 끝이긴함  -->


                  
                
                  



    <script type="text/javascript" src="assets/js/detailPage.js"></script>
    <script type="text/javascript" src="assets/js/heregood.js"></script>



    

          
</body>
</html>