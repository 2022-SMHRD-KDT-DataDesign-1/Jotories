<%@page import="java.time.LocalDate"%>
<%@page import="com.dogdog.model.StoreVO"%>
<%@page import="com.dogdog.model.StoreDAO"%>
<%@page import="com.dogdog.model.StoreMemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dogdog.model.StoreMemberDAO"%>
<%@page import="com.dogdog.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>똑똑</title>
<script src="assets/js/jquery-3.6.3.min.js"></script>

<link rel="stylesheet" href="assets/css/MyPage.css">
<link rel="stylesheet" href="assets/css/MyPage_d.css">
<link rel="stylesheet" href="assets/css/review.css">

</head>

<body class="pc">
<% 
	UserVO resultVO = (UserVO)session.getAttribute("resultVO");
	StoreMemberDAO smDAO = new StoreMemberDAO();
	ArrayList<StoreMemberVO> resultListSM = smDAO.selectReservation(resultVO.getUser_id());
%>
    <div class="wrap show">
        <header>
            <section>
                <h1><a href="Main.jsp" title="여기어때">여기어때</a></h1> <button
                    type="button" class="btn_menu nav_open">메뉴</button>
                <ul class="gnb_pc">
                    <li><a href="MyPage.jsp" class="nuxt-link-exact-active nuxt-link-active"> 예약내역
                        </a></li>
                    <li class="over"><button type="button"><span>더보기</span></button>
                        <ul class="list_03">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">1:1 문의</a></li>
                            <li><a href="#">약관 및 정책</a></li>
                        </ul>
                    </li>
                    <% String updateLogout = "";
                    updateLogout = resultVO != null ? "<li class='over pic'><a href='MyPage.jsp'><img src='"+ resultVO.getUser_profile()+"' alt='"+resultVO.getUser_nick()+"'></a>"+
                            "<ul class='list_04' style='display:none'>" +
                                "<li><b>"+ resultVO.getUser_nick()+"</b></li>"+     //로그인된 닉네임임
                                "<li><a href='MyPage.jsp'>내정보</a></li>" +
                                "<li><a href='ReserveList.jsp'>예약내역<!-- span>0건</span --></a></li>" +
                                "<li><button type='button' class='pop_logout_open'><a href='LogoutService.do'>로그아웃</a></button></li></ul></li>" : "<li><a href='login.html'><span>로그인</span></a></li>";%>
                                <%= updateLogout %>
                </ul>
                <div class="srch_bar">
                    <div class="wrap_inp"><input id="keyword" type="text" placeholder="지역, 숙소명" autocomplete="off">
                        <button type="button" class="btn_srch" style="right: 396px;">검색</button></div> <button
                        onclick="srch_close()" class="btn_cancel">취소</button>
                </div>
            </section>
        </header>
        <div onclick="close_layer();" class="bg_dimm">&nbsp;</div>
        <div class="bg_dimm_prevent">&nbsp;</div>
        <div class="recommend_srch">
            <div class="scroll_srch">
                <div class="scroller">
                    <div class="default" style="display: block"><strong>추천 검색어</strong>
                        <ul></ul>
                    </div>
                    <div class="chain" style="display: none;">
                        <ul></ul>
                    </div>
                </div>
                <div class="add_spin">
                    <div class="spinner" style="display: none;"><span></span></div>
                </div>
            </div>
        </div>
        <div class="mobile_menu_wrap">
            <div class="gnb_opacity"><button class="btn_close">닫기</button></div>
            <div class="menu_wrap">
                <div class="menu">
                    <div class="top">
                        <div class="member">
                            <div class="mem"><span class="pic"
                                    style="background:url('https://image.goodchoice.kr/profile/ico/ico_21.png') 50% 50% no-repeat;"></span>
                                <p class="info">
                                    관리자(닉네임)
                                </p>
                            </div>

                        </div>
                    </div>
                    <div class="scroll_nav">
                        <div class="scroller">
                            <ul>
                                <li><a href="http://localhost:8080/DogDog/Main.jsp#none">홈</a></li>
                                <li class="depth_2"><button type="button" class="has_ul"><span>시설 유형</span></button>
                                    <ul>
                                        <li><a href="https://www.goodchoice.kr/product/home/1">강아지 유치원</a></li>
                                        <li><a href="https://www.goodchoice.kr/product/search/2">강아지 호텔</a></li>
                                        <li><a href="https://www.goodchoice.kr/product/search/3">강아지 병원</a></li>
                                        <li><a href="https://www.goodchoice.kr/product/search/6">강아지 미용실</a></li>

                                    </ul>
                                </li>
                                <li><a href="https://www.goodchoice.kr/product/srp">내주변</a></li>
                            </ul>
                            <ul>
                                <li><a href="Mypage.jsp">예약 내역</a></li>
                                <li><a href="editcontent.html">내 정보 관리</a></li>
                            </ul>
                            <ul>
                                <li class="depth_2"><button type="button" class="has_ul"><span>더보기</span></button>
                                    <ul>
                                        <li><a href="#">공지사항</a></li>
                                        <li><a href="#">이벤트</a></li>
                                        <li><a href="#">고객문의</a></li>
                                        <li><a href="#">알림설정</a></li>
                                        </a>
                                </li>
                            </ul>
                            </li>
                            </ul>
                            <div class="center">
                                <p>독독 고객센터</p>
                                <p><a href="tel:1670-6250">1670-6250</a></p>
                                <p>오전 9시 - 오후 8시</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sub_top_wrap">
            <div class="sub_top bg_kong_2">
                <h2>내정보</h2>
            </div>
        </div>
        <div id="content" class="sub_wrap my_wrap">
            <p class="sub_title">예약 내역</p>
            <div>
                <nav>
                    <ul>
                        <li><a href="MyPage.jsp"
                                class="nuxt-link-exact-active nuxt-link-active active">
                                예약 내역
                            </a></li>

                        <li><a href="editcontent.jsp">내 정보 관리</a></li>
                        <li><a href="#" class="">
                                알림
                            </a></li>
                    </ul>
                </nav>
            </div>
            <from action="StoreReviewService.do">
            <div class="align_rt">
            <% 
            StoreDAO sDAO = new StoreDAO();
            if(resultListSM != null) { 
            	for(StoreMemberVO smVO:resultListSM) {
            		StoreVO sVO = sDAO.selectOneList(smVO.getStore_id());
            %>
            <input type="hidden" name="store_id" value="<%= smVO.getStore_id()%>">
                <!-- 예약 내역이 존재할 경우 이 부분을 jsp 이용해서 -->
                <div class="list_none1" style="display: block">
                    숙소 예약내역<br>
                    <div>
                        <img src="assets/img/쿼카1.png" class="reser_img">

                        <span class="img_name"><a href="">[<%= sVO.getStore_type() %>]<%= sVO.getStore_name()%></a></span>
                        <br>
                        <div class="check_in">
                            <span>예약날짜</span><br>
                            <p style="margin-top: 5px; font-size: 18px; font-weight: 600;"><%= smVO.getMember_from() %></p>
                            
                        </div>
                        <div class="reser_but">
                            <button class="but1"><a href="reservePage.jsp" class="aaa"><strong>다시 예약</strong></a></button>
                            <button class="but1 trigger"><strong>리뷰 쓰기</strong></button>
						</div>

						<!-- Button -->

  
  <!-- Modal -->

                    </div>
                </div>
			<%} } else { %>
                <div class="list_none" style="display: block">
                    예약 내역이 없습니다.
                    <b>여러가지 종류의 예약 가능한<br>반려견 서비스들을 지금 만나세요!</b>
                    <p><a href="http://localhost:8080/DogDog/Main.jsp#none" class="btn_red">다양한 반려견 서비스 보러가기</a></p>
                </div>
                <% } %>
            </div>
        </div>
        <footer>
            <div class="align">
                <ul class="link">
                    <li><a href="#" target="_blank">회사소개</a><span>|</span>
                    </li>
                    <li><a href="#" data-default="term">이용약관</a><span>|</span></li>
                    <li><a href="#" data-default="privacy">개인정보처리방침</a><span>|</span></li>
                    <li><button type="button" onclick="pop_licence();return false;">
                            사업자 정보확인</button><span>|</span></li>
  
                    <li><a href="#" target="_blank">DogDod
                            독독</a><span>|</span></li>
                    <li><a href="#">콘텐츠산업진흥법에의한 표시</a></li>
                </ul>
                <p><b>고객센터 xxxx-xxxx</b>
                    오전 9시 - 오후 8시
                </p>
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
    </div>

      <div class="modal-wrapper">
    <div class="modal">
      <div class="content" id="zz">
        <a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv5fJHV6t9CkXrhetBbkn-0H-OAmxnFig--Q&usqp=CAU" class="m_header-banner-close"></a>

          <div class="good-job">
            <h2>리뷰 작성하기</h2>
          </div>
          <div class="center_star">
            <div class="star-rating space-x-4 mx-auto" text-aling = "center">
                <input type="radio" id="5-stars" name="review_rate" value="5" v-model="ratings"/>
                <label for="5-stars" class="star pr-4">★</label>
                <input type="radio" id="4-stars" name="review_rate" value="4" v-model="ratings"/>
                <label for="4-stars" class="star">★</label>
                <input type="radio" id="3-stars" name="review_rate" value="3" v-model="ratings"/>
                <label for="3-stars" class="star">★</label>
                <input type="radio" id="2-stars" name="review_rate" value="2" v-model="ratings"/>
                <label for="2-stars" class="star">★</label>
                <input type="radio" id="1-star" name="review_rate" value="1" v-model="ratings" />
                <label for="1-star" class="star">★</label>
            </div>
            <input type="hidden" name="review_date" value=<%=LocalDate.now().toString() %>>


        

        </div>
        <div class="center_star">
            <textarea cols="56" rows="7" placeholder="리뷰를 입력해주세요" name="review_content"></textarea>

        </div>
             
        <div class="center_star">
    
                     <input class="btn_sub" type="submit"> <h3>등록하기</h3> </input>
        
        </div>
	</form>







      </div>
    </div>
  </div>
    <button onclick="moveTop();" class="btn_go_top">상단으로</button>
    
    <script type="text/javascript" src="assets/js/service/common.js"></script>
    <script type="text/javascript" src="assets/js/review.js"></script>





</body>
</html>