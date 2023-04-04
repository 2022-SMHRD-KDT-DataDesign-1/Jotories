<%@page import="com.dogdog.model.StoreMemberVO"%>
<%@page import="com.dogdog.model.StoreVO"%>
<%@page import="com.dogdog.model.StoreDAO"%>
<%@page import="com.dogdog.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>똑똑</title>
  <link rel="stylesheet" href="assets/css/common.css">
    <link rel="stylesheet" href="assets/css/review.css">
  
    <link rel="stylesheet" href="assets/css/reservation.css">

    <link rel="stylesheet" href="assets/css/heregood.css">
    <link rel="stylesheet" href="assets/css/MyPage.css">


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



</head>
<body>
<% 
	UserVO resultVO = (UserVO)session.getAttribute("resultVO");
	StoreMemberVO smVO = (StoreMemberVO)session.getAttribute("smVO");
%>


    <!-- Wrap -->
    <div class="wrap show">

        <!-- Header -->
        <header class="recommend_header">

            <section>
                <h1><a class="" href="Main.jsp" title="똑똑">똑똑</a></h1>
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
        <%
        	String[] store_id_list = request.getQueryString().split("=");
        	int store_id = Integer.parseInt(store_id_list[1]);
        	
        	StoreDAO sDAO = new StoreDAO();
        	StoreVO sVO = sDAO.selectOneList(store_id);
        if(smVO == null) {
        %>
                <section class="info" >
                    <p class="name"  ><strong
                               >업소이름</strong><%= sVO.getStore_name() %>
                               
                    <input type="hidden" name="store_idd" value="<%= store_id %>">
                    <input type="hidden" name="store_name" value="<%= sVO.getStore_name() %>">
                    </p>
                    <p    ><strong    >예약타입</strong><%= sVO.getStore_type() %>
                    <input type="hidden" name="store_type" value="<%= sVO.getStore_type() %>">
                    </p>
                    <p    ><strong    >예약시작</strong><%= (String)session.getAttribute("sel_date") %>
                    <input type="hidden" name="member_from" value="<%= (String)session.getAttribute("sel_date") %>">
                    </p>
                    <p    ><strong    >예약종료</strong><%= (String)session.getAttribute("sel_date") %>
                    <input type="hidden" name="member_to" value="<%= (String)session.getAttribute("sel_date") %>">
                    </p>
                </section>
                <section class="total_price_pc"    >

                 
                </section> <!----> <button type="button" class="btn_pay gra_left_right_red" style="border-radius: 4px;">
                    예약하기
                </button>
            </div>

			<form action="dogiedogie.jsp">
            <div class="left" ><!---->
                <div >
                    <section class="info_chkin"     >
                        <h3 style="margin-top:0;"     >
                            예약자 정보
                        </h3> <strong     >예약자 이름</strong>
                        <p class="inp_wrap remove"     >
                        <input type="text"
                                name="member_name" placeholder="체크인시 필요한 정보입니다." maxlength="20"
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
                                        name="user_phone" placeholder="체크인시 필요한 정보입니다."
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
                    <input class="guest_login" type="submit" value="강아지 정보 등록하러 가기 >>" style="display: block; width: 564px; margin-top: 10px; border: 0px; color: white; font-weight: bold; border-radius:5px;">
	                        <a href="#" onclick = "gopopup()"   >
                            
                            <!-- <br     >
                            아가 ~ 가보자 ~
                            <br     >  -->
                            <!-- <span     >등록하러가기</span> -->
                        </a>
                    </div>
                    <% } else { %>
                    <section class="info" >
                    <p class="name"  ><strong
                               >업소이름</strong><%= sVO.getStore_name() %>
                               
                    <input type="hidden" name="store_idd" value="<%= store_id %>">
                    <input type="hidden" name="store_name" value="<%= sVO.getStore_name() %>">
                    </p>
                    <p    ><strong    >예약타입</strong><%= sVO.getStore_type() %>
                    <input type="hidden" name="store_type" value="<%= sVO.getStore_type() %>">
                    </p>
                    <p    ><strong    >예약시작</strong><%= smVO.getMember_from() %>
                    <input type="hidden" name="member_from" value="<%= smVO.getMember_from() %>">
                    </p>
                    <p    ><strong    >예약종료</strong><%= smVO.getMember_to() %>
                    <input type="hidden" name="member_to" value="<%= smVO.getMember_to() %>">
                    </p>
                </section>
                <section class="total_price_pc"    >

                 
                </section> <!----> 
                <input type="submit" class="btn_pay gra_left_right_red" style="border-radius: 4px; color: white; font-weight: bold;" value="예약하기">
                   
            </div>

			<form action="ReservationService.do">
            <div class="left" ><!---->
                <div >
                    <section class="info_chkin"     >
                        <h3 style="margin-top:0;"     >
                            예약자 정보
                        </h3> <strong     >예약자 이름</strong>
                        <p class="inp_wrap remove"     >
                        <input type="text"
                                name="member_name" placeholder="체크인시 필요한 정보입니다." maxlength="20"
                                    value="<%= smVO.getMember_name()%>"></p>
                        <p data-show="name" class="alert_txt" style="visibility: hidden"
                                >
                            한글, 영문, 숫자만 입력 가능. (문자 사이 공백은 1칸만 입력 가능)
                        </p>
                        <div><strong class="mt_09"
                                 >휴대폰 번호</strong> <span class="safety_txt"
                                 >개인 정보 보호를 위해 안심번호로 숙소에 전송됩니다.</span>
                            <div class="phone_confirm guest-phone"  >
                                <div class="inp_wrap input-box"  ><input type="tel"
                                        name="user_phone" placeholder="체크인시 필요한 정보입니다."
                                        maxlength="13" value="<%= smVO.getUser_phone() %>"
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
                    <% } %>
                    <!-- <div class="guest_login" style="display: block; margin-top: 10px;"     > -->
                            <!-- <input class="guest_login" type="submit" value="강아지 정보 등록하러 가기 >>" style="display: block; width: 564px; margin-top: 10px; border: 0px; color: white; font-weight: bold; border-radius:5px;">
	                        <a href="#" onclick = "gopopup()"   >
                            
                            <br     >
                            아가 ~ 가보자 ~
                            <br     > 
                            <span     >등록하러가기</span>
                        </a> -->
                    <!-- </div> -->
                    <!---->
                <!-- </div> --> <!---->














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
    </form>
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
         
        </ul>

       <address><span>(주) 독독컴퍼니</span>
                    주소 : 광주광역시 동구 예술길 31-15, 광주아트센터타워 4층 | 대표이사 :
                    조승재 | 사업자등록번호: 000-111-22222<br>
                    통신판매번호 : 2023-광주동구-01557 | 관광사업자 등록번호:
                    제0406-01호 | 전화번호 : 1557-1577 | 전자우편주소 :
                    help@dogdog.com<br>
                    (주) 독독컴퍼니는 통신판매중개자로서 통신판매의 당사자가
                    아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각
                    판매자에게 있습니다.<br> <span>Copyright GC COMPANY Corp. All rights reserved.</span>
                </address>

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

        </div>


  <div class="modal-wrapper">
    <div class="modal">
      <div class="content" id="zz">
        <a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv5fJHV6t9CkXrhetBbkn-0H-OAmxnFig--Q&usqp=CAU" class="m_header-banner-close"></a>
             <div class="good-job">
            <h1>예약 완료 ! ! ! </h1>
          </div>
          <div class="center_star1">
						<section >
						<br>
							<p>
							<br>
								<h3>예약장소&nbsp&nbsp</h3>	
								<br>						
								앨리스카라반캠프
								<br>
							</p>
							<p>
							<br>
								<h3>강아지이름&nbsp&nbsp</h3>	
								<br>						
								조멍멍
								<br>
							</p>
							
							<p>
							<br>
								<h3>예약자&nbsp&nbsp</h3>	
								<br>						
								승재
								<br>
							</p>				
							
							<p>
							<br>
								<h3>예약일자&nbsp&nbsp</h3>	
								<br>						
								2020
								<br>
							</p>
														<br>
							
						</section>
					



				</div>
        
                <div class="center_star">
        

        <a href="MyPage.jsp">            <button class="btn_sub" type="submit" style="text-align: center;">등록하기 </button>
        </a>
        
        </div>
 








      </div>
    </div>
  </div>

















  




        <script src="assets/js/heregood.js"></script>
        <script src="assets/js/review.js"></script>
        
        <script >
        function gopopup() {
        	
        	   var _width = '570';
        	    var _height = '700';
        	 
        	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
        	    var _left = Math.ceil(( window.screen.width - _width )/2);
        	    var _top = Math.ceil(( window.screen.height - _height )/2); 
            var pop = window.open( 'dogiedogie.jsp', 'popup', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top,'scrollbars=yes','resizable=yes' ); 

            
			
		}
        
        
        
        </script>
</body>
</html>