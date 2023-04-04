<%@page import="com.dogdog.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="assets/js/jquery-3.6.3.min.js"></script>

<link rel="stylesheet" href="assets/css/MyPage_d.css">
<link rel="stylesheet" href="assets/css/MyPage.css">
<link rel="stylesheet" href="assets/css/edit.css">




</head>

<body class="pc">
	<% UserVO resultVO = (UserVO)session.getAttribute("resultVO"); %>
	<form action="UpdateService.do">
	<div class="wrap show">
		<header>
			<section>
				<h1>
					<a href="Main.jsp" title="독독">독독</a>
				</h1>
				<button type="button" class="btn_menu nav_open">메뉴</button>
				<ul class="gnb_pc">
					<li><a href="MyPage.jsp" 
						class="nuxt-link-exact-active nuxt-link-active"> 예약내역 </a></li>
					<li class="over"><button type="button">
							<span>더보기</span>
						</button>
						<ul class="list_03">
							<li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
							<li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
							<li><a href="https://www.goodchoice.kr/more/project">1:1
									문의</a></li>
							<li><a href="https://www.goodchoice.kr/more/inquiry">약관
									및 정책</a></li>
						</ul></li>

					<% String updateLogout = "";
                    updateLogout = resultVO != null ? "<li class='over pic'><a href='MyPage.jsp'><img src='"+ resultVO.getUser_profile()+"' alt='"+resultVO.getUser_nick()+"'></a>"+
                            "<ul class='list_04' style='display:none'>" +
                                "<li><b>"+ resultVO.getUser_nick()+"</b></li>"+     //로그인된 닉네임임
                                "<li><a href='editontent.jsp'>내정보</a></li>" +
                                "<li><a href='MyPage.jsp'>예약내역<!-- span>0건</span --></a></li>" +
                                "<li><button type='button' class='pop_logout_open'><a href='LogoutService.do'>로그아웃</a></button></li></ul></li>" : "<li><a href='login.html'><span>로그인</span></a></li>";%>
                                <%= updateLogout %>
				</ul>
				<div class="srch_bar">
					<div class="wrap_inp">
						<input id="keyword" type="text" placeholder="지역, 숙소명"
							autocomplete="off">
						<button type="button" class="btn_srch" style="right: 396px;">검색</button>
					</div>
					<button onclick="srch_close()" class="btn_cancel">취소</button>
				</div>
			</section>
		</header>
		<div onclick="close_layer();" class="bg_dimm">&nbsp;</div>
		<div class="bg_dimm_prevent">&nbsp;</div>
		<div class="recommend_srch">
			<div class="scroll_srch">
				<div class="scroller">
					<div class="default" style="display: block">
						<strong>추천
							검색어</strong>
						<ul></ul>
					</div>
					<div class="chain" style="display: none;">
						<ul></ul>
					</div>
				</div>
				<div class="add_spin">
					<div class="spinner" style="display: none;">
						<span></span>
					</div>
				</div>
			</div>
		</div>
		<div class="mobile_menu_wrap">
			<div class="gnb_opacity">
				<button class="btn_close">닫기</button>
			</div>
			<div class="menu_wrap">
				<div class="menu">
					<div class="top">
						<div class="member">
							<div class="mem">
								<span class="pic"
									style="background: url('https://image.goodchoice.kr/profile/ico/ico_21.png') 50% 50% no-repeat;"></span>
								<p class="info">관리자(닉네임)</p>
							</div>

						</div>
					</div>
					<div class="scroll_nav">
						<div class="scroller">
							<ul>
								<li><a
									href="http://localhost:8080/DogDog/Main.jsp#none">홈</a></li>
								<li class="depth_2"><button type="button"
										class="has_ul">
										<span>시설
											유형</span>
									</button>
									<ul>
										<li><a
											href="https://www.goodchoice.kr/product/home/1">강아지
												유치원</a></li>
										<li><a
											href="https://www.goodchoice.kr/product/search/2">강아지
												호텔</a></li>
										<li><a
											href="https://www.goodchoice.kr/product/search/3">강아지
												병원</a></li>
										<li><a
											href="https://www.goodchoice.kr/product/search/6">강아지
												미용실</a></li>

									</ul></li>
								<li><a href="https://www.goodchoice.kr/product/srp">내주변</a></li>
							</ul>
							<ul>
								<li><a href="MyPage.jsp">예약
										내역</a></li>
								<li><a href="editcontent.jsp">내
										정보 관리</a></li>
							</ul>
							<ul>
								<li class="depth_2"><button type="button"
										class="has_ul">
										<span>더보기</span>
									</button>
									<ul>
										<li><a href="#">공지사항</a></li>
										<li><a href="#">이벤트</a></li>
										<li><a href="#">고객문의</a></li>
										<li><a href="#">알림설정</a></li>
										</a></li>
							</ul>
							</li>
							</ul>
							<div class="center">
								<p>독독 고객센터</p>
								<p>
									<a href="tel:1670-6250">1670-6250</a>
								</p>
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
		<div>
			<div id="content" class="sub_wrap my_wrap">
				<p class="sub_title">예약 내역</p>
				<div>
					<nav>
						<ul>
							<li><a href="MyPage.jsp"> 예약 내역 </a></li>

							<li><a href="editcontent.jsp"
								class="nuxt-link-exact-active nuxt-link-active active">내 정보
									관리</a></li>
							<li><a href="#" class=""> 알림 </a></li>
						</ul>
					</nav>
				</div>
				<div class="align_rt">
					<div style="display: block">
						<h3>내정보 수정</h3>
						
						<div class="nick_cor">
							<div class="pw_input__title">
								<b>닉네임</b> <span class="title__uinfo"><%= resultVO.getUser_nick()%></span>
							</div>
							<!-- 수정버튼 -->
							<button id="btns-wrap__edit-btn" type="button"
								style="display: block;">수정</button>
							<div id="clicks" style="display: none">
								<!-- 클릭 시ㅣ 나오는 input -->
								<input type="text" name="user_nick" placeholder="닉네임을 입력하는 공간입니다." class="teext"><br>
							</div>
						</div>

						<!-- 예약자 이름 -->
						<div class="reser_name">
							<div class="pw_input__title">
								<b>이메일 주소</b><span class="title__uinfo"><%= resultVO.getUser_email() %></span>
							</div>
							<!-- 수정버튼 -->
							<button id="btns-wrap__edit-btn1" type="button"
								style="display: block;">수정</button>
							<div id="clicks1" style="display: none">
								<!-- 클릭 시 나오는 input -->
								<input type="text" placeholder="이메일 주소를 입력하는 공간입니다." name="user_email"
									class="teext"><br>
							</div>
						</div>

						<!-- 연락처 -->
						<div class="phone_num">
							<div class="pw_input__title">
								<b>연락처</b> <span class="title__uinfo"><%= resultVO.getUser_phone() %></span>
							</div>
							<!-- 수정버튼 -->
							<button id="btns-wrap__edit-btn2" type="button"
								style="display: block;">수정</button>
							<div id="clicks2" style="display: none">
								<!-- 클릭 시 나오는 input -->
								<input type="tel" class="form-control" name="user_phone"
									id="telInput" required pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
									maxlength="13" placeholder="예) 010-1234-5678" /><br>
									<!-- <input type="text" name="user_phone" id="cellPhone" placeholder="핸드폰번호 입력" maxlength="13" /><br> -->
								<!-- <input type="text" name="user_phone" id="cellPhone" required pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" maxlength="13" placeholder="예) 010-1234-5678" maxlength="13" /><br> -->
							</div>
						</div>

						<!-- 전체 버튼 -->
						<div id="allB">
							<input class="btns-wrap__submit-btn" type="submit" value="수정완료">
							<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		</form>
		<footer>
			<div class="align">
				<ul class="link">
					<li><a href="#" target="_blank">회사소개</a><span>|</span></li>
					<li><a href="#" data-default="term">이용약관</a><span>|</span></li>
					<li><a href="#" data-default="privacy">개인정보처리방침</a><span>|</span></li>
					<li><button type="button"
							onclick="pop_licence();return false;">사업자 정보확인</button>
						<span>|</span></li>
					<li><a href="#" target="_blank">여기어때 마케팅센터</a><span>|</span></li>
					<li><a href="#" target="_blank">액티비티 호스트센터</a><span>|</span></li>
					<li><a href="#" target="_blank">HOTEL 여기어때</a><span>|</span></li>
					<li><a href="#">콘텐츠산업진흥법에의한 표시</a></li>
				</ul>
				<p>
					<b>고객센터 1670-6250</b> 오전 9시 - 오후 8시
				</p>
				<address>
					<span>(주) 독독컴퍼니</span> 주소 : 광주광역시 동구 봉은사로 479, 479타워 11층 | 대표이사 :
					조승재 | 사업자등록번호: 742-86-00224<br> 통신판매번호 : 2017-서울강남-01779 |
					관광사업자 등록번호: 제1026-24호 | 전화번호 : 1670-6250 | 전자우편주소 :
					help@goodchoice.kr<br> (주) 독독컴퍼니는 통신판매중개자로서 통신판매의 당사자가 아니며,
					상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.<br> <span>Copyright
						GC COMPANY Corp. All rights reserved.</span>
				</address>

			</div>
		</footer>
	</div>
	<button onclick="moveTop();" class="btn_go_top">상단으로</button>




	<script src="assets/js/MyPage.js"></script>
	<script src="assets/js/service/common.js"></script>



</body>
</html>