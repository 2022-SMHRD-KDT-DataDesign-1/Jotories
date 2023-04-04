<%@page import="com.dogdog.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="assets/css/common.css">
    <link rel="stylesheet" href="assets/css/reservation.css">

    <link rel="stylesheet" href="assets/css/heregood.css">


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



</head>
<body>
<% UserVO resultVO = (UserVO)session.getAttribute("resultVO"); %>


    <!-- Wrap -->
    <div class="wrap show">

        <!-- Header -->
        <header class="recommend_header">

            <section>
                <h1><a class="" href="Main.jsp" title="여기어때">여기어때</a></h1>
                <button type="button" class="btn_menu nav_open ">메뉴</button>
                <ul class="gnb_pc">
                    <li><a href="MyPage.jsp" class="nuxt-link-exact-active nuxt-link-active">예약내역</a></li>
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
                    <% String updateLogout = "";
                    updateLogout = resultVO != null ? "<li class='over pic'><a href='MyPage.jsp'><img src='"+ resultVO.getUser_profile()+"' alt='"+resultVO.getUser_nick()+"'></a>"+
                            "<ul class='list_04' style='display:none'>" +
                                "<li><b>"+ resultVO.getUser_nick()+"</b></li>"+     //로그인된 닉네임임
                                "<li><a href='editontent.jsp'>내정보</a></li>" +
                                "<li><a href='MyPage.jsp'>예약내역<!-- span>0건</span --></a></li>" +
                                "<li><button type='button' class='pop_logout_open'><a href='LogoutService.do'>로그아웃</a></button></li></ul></li>" : "<li><a href='login.html'><span>로그인</span></a></li>";%>
                                <%= updateLogout %>
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
        

    <div id="content">
        <div class="reserve" >
            <div class="right"  >
                <section class="info" >
                    <p class="name"  ><strong
                               >업소이름</strong>앨리스카라반캠프
                    </p>
                    <p    ><strong    >예약타입/기간</strong>고양아 멍멍해라 /
                        2023-03-29
                    </p>
                    <p    ><strong    >예약시작</strong>03.29  15:00
                    </p>
                    <p    ><strong    >예약종료</strong>03.30  11:00
                    </p>
                </section>
                <section class="total_price_pc"    >

                 
                </section> <!----> <button type="button" class="btn_pay gra_left_right_red"
                       >
                    예약하기
                </button>
            </div>


            <div class="left" ><!---->
                <div >
                    <section class="info_chkin"     >
                        <h3 style="margin-top:0;"     >
                            예약자 정보
                        </h3> <strong     >예약자 이름</strong>
                        <p class="inp_wrap remove"     ><input type="text"
                                name="userName" placeholder="체크인시 필요한 정보입니다." maxlength="20"
                                    ></p>
                        <p data-show="name" class="alert_txt" style="visibility: hidden"
                                >
                            한글, 영문, 숫자만 입력 가능. (문자 사이 공백은 1칸만 입력 가능)
                        </p>
                        <div><strong class="mt_09"
                                 >휴대폰 번호</strong> <span class="safety_txt"
                                 >개인 정보 보호를 위해 안심번호로 숙소에 전송됩니다.</span>
                            <div class="phone_confirm guest-phone"  >
                                <div class="inp_wrap input-box"  ><input type="tel"
                                        name="userPhone" placeholder="체크인시 필요한 정보입니다."
                                        maxlength="13" value=""
                                        class="input validation-required-input"  >
                                    <!----></div> 
                                <p data-show="tel" class="alert_txt error-message" 
                                     >휴대폰 번호를 확인해 주세요.</p>
                                <div id="verificationCode" style="display: none; height: 48px"
                                     >
                                    <strong class="mt_09"  >인증
                                        번호</strong>
                                    <section  >
                                        <div class="input-box"  >
                                            <input id="digit"
                                                type="tel" name="userPhone" minlength="4"
                                                maxlength="4" value=""
                                                class="input validation-required-input"
                                                 >
                                            </div> 
                                                <button type="button"
                                            class="btn_ok btn_confirm phone-auth-btn"
                                             >
                                            확인
                                        </button>
                                    </section>
                                </div>
                            </div>
                        </div> <!---->
                    </section>
                    <div class="guest_login" style="display: block"     >
                        <a href="#" onclick = "gopopup()"   >
                            우리 아이 정보를 등록하러 가보자잇 - !
                            <br     >
                            아가 ~ 가보자 ~
                            <br     > 
                            <span     >등록하러가기</span>
                        </a>
                    </div>
                    <!---->
                </div> <!---->














        <div   class="business_pop">
            <div   class="list">
                <h4  >숙박서비스 제공업체 리스트</h4> <button  
                    onclick="list_close();" class="btn_close">닫기</button>
                <div  >
                    <ul   id="ajax_ad_list"></ul>
                    <div   id="pagination"></div>
                </div>
            </div>
        </div>
    </div> <!----> <!---->
</div>
<footer  >
    <div class="align">
        <ul class="link">
            <li><a href="https://www.gccompany.co.kr/" target="_blank">회사소개</a><span>|</span></li>
            <li><a href="https://www.goodchoice.kr/more/terms"
                    data-default="term">이용약관</a><span>|</span></li>
            <li><a href="https://www.goodchoice.kr/more/terms/privacy"
                    data-default="privacy">개인정보처리방침</a><span>|</span></li>
            <li><button type="button" onclick="pop_licence();return false;">
                    사업자 정보확인</button><span>|</span></li>
            <li><a href="https://ad.goodchoice.kr/" target="_blank">여기어때 마케팅센터</a><span>|</span>
            </li>
            <li><a href="https://host.goodchoice.kr/" target="_blank">액티비티 호스트센터</a><span>|</span>
            </li>
            <li><a href="https://hotel.goodchoice.kr/" target="_blank">HOTEL 여기어때</a><span>|</span>
            </li>
            <li><a href="https://www.goodchoice.kr/more/contentsInfo">콘텐츠산업진흥법에의한 표시</a></li>
        </ul>
        <p><b>고객행복센터 1670-6250</b>
            오전 9시 - 새벽 3시
        </p>
        <address><span>(주) 여기어때컴퍼니</span>
            주소 : 서울특별시 강남구 봉은사로 479, 479타워 11층 | 대표이사 :
            정명훈 | 사업자등록번호: 742-86-00224<br>
            통신판매번호 : 2017-서울강남-01779 | 관광사업자 등록번호:
            제1026-24호 | 전화번호 : 1670-6250 | 전자우편주소 :
            help@goodchoice.kr<br>
            (주) 여기어때컴퍼니는 통신판매중개자로서 통신판매의 당사자가
            아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각
            판매자에게 있습니다.<br> <span>Copyright GC COMPANY Corp. All rights reserved.</span></address>

    </div>
</footer>
</div> <button onclick="moveTop();" class="btn_go_top"  
style="display: none;">상단으로</button>
<div style="display: none"  ><span itemscope="itemscope"
    itemtype="http://schema.org/Organization"  >
    <link itemprop="url" href="https://www.goodchoice.kr"  > <a itemprop="sameAs"
        href="https://www.facebook.com/goodchoiceofficial"  ></a> <a
        itemprop="sameAs"
        href="https://play.google.com/store/apps/details?id=kr.goodchoice.abouthere"
         ></a> <a itemprop="sameAs"
        href="https://itunes.apple.com/kr/app/id884043462"  ></a> <a
        itemprop="sameAs" href="https://post.naver.com/withinnovation"  ></a> <a
        itemprop="sameAs" href="https://www.youtube.com/channel/UCLI1HOVJdhWdVl9pT__g2Zw"
         ></a>
</span></div>





  




        <script src="assets/js/heregood.js"></script>
        
        <script >
        function gopopup() {
        	
        	   var _width = '570';
        	    var _height = '700';
        	 
        	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
        	    var _left = Math.ceil(( window.screen.width - _width )/2);
        	    var _top = Math.ceil(( window.screen.height - _height )/2); 
            var pop = window.open( 'dogiedogie.html', 'popup', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top,'scrollbars=yes','resizable=yes' ); 

            
			
		}
        
        
        
        </script>
</body>
</html>