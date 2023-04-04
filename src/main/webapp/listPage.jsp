<%@page import="com.dogdog.model.StoreReviewDAO"%>
<%@page import="com.dogdog.model.StoreReviewVO"%>
<%@page import="com.dogdog.model.UserVO"%>
<%@page import="com.dogdog.model.StoreDAO"%>
<%@page import="com.dogdog.model.StoreVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="assets/js/jquery-3.6.3.min.js"></script>
<link rel="stylesheet" href="assets/css/listPage.css">
<link rel="stylesheet" href="assets/css/l_o.css">
<link rel="stylesheet" href="assets/css/l_p.css">
<link rel="stylesheet" href="assets/css/l_j.css">
</head>
<body class="pc">
	<% UserVO resultVO = (UserVO)session.getAttribute("resultVO"); %>
	<%
		StoreDAO sDAO = new StoreDAO();
		StoreReviewDAO srDAO = new StoreReviewDAO();
		ArrayList<StoreVO> resultList = (ArrayList<StoreVO>)session.getAttribute("resultStoreList");
	%>

	<div class="wrap show">

		<header class="recommend_header">

			<section>
				<h1>
					<a class="" href="Main.jsp" title="여기어때">여기어때</a>
				</h1>
				<button type="button" class="btn_menu nav_open ">메뉴</button>
				<button type="button" class="btn_srch srch_open "
					style="right: 396px;">검색</button>
				<ul class="gnb_pc">
					<li><a href="MyPage.jsp" class="nuxt-link-exact-active nuxt-link-active">예약내역</a></li>
					<li class="over">
						<button type="button">
							<span>더보기</span>
						</button>
						<ul class="list_03">
							<li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
							<li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
							<li><a href="https://www.goodchoice.kr/more/project">혁신
									프로젝트</a></li>
							<li><a href="https://www.goodchoice.kr/more/faq">자주 묻는
									질문</a></li>
							<li><a href="https://www.goodchoice.kr/more/inquiry">1:1
									문의</a></li>
							<li><a href="https://www.goodchoice.kr/more/terms">약관 및
									정책</a></li>
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
						<input type="text" id="keyword" placeholder="지역, 숙소명"
							autocomplete="off">
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
		<div class="recommend_srch">
			<div class="scroll_srch">
				<div class="scroller">
					<div class="default" style="display: block">
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
		<div class="gnb_opacity">
			<button class="btn_close">닫기</button>
		</div>
		<div class="menu_wrap">

			<div class="menu">
				<div class="top">
					<!-- 회원 -->
					<div class="member">
						<div class="mem">
							<span class="pic"
								style="background: url('https://image.goodchoice.kr/profile/ico/ico_21.png') 50% 50% no-repeat;"></span>
							<p class="info">아테네시멘트</p>
						</div>
						<div class="bot">
							<a href="https://www.goodchoice.kr/my/points">
								<p>
									0P<br>
									<span>포인트</span>
								</p>
							</a> <a href="https://www.goodchoice.kr/my/coupon">
								<p>
									0장<br>
									<span>쿠폰함</span>
								</p>
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
								<button type="button" class="has_ul">
									<span>숙소유형</span>
								</button>
								<ul>
									<li><a href="https://www.goodchoice.kr/product/home/1">모텔</a></li>
									<li><a href="https://www.goodchoice.kr/product/search/2">호텔·리조트</a></li>
									<li><a href="https://www.goodchoice.kr/product/search/3">펜션</a></li>
									<li><a href="https://www.goodchoice.kr/product/search/6">게스트하우스</a></li>
									<li><a href="https://www.goodchoice.kr/product/search/5">캠핑·글램핑</a></li>
									<li><a href="https://www.goodchoice.kr/product/search/7">한옥
									</a></li>
								</ul>
							</li>
							<li><a href="https://www.goodchoice.kr/product/srp">내주변</a></li>
						</ul>
						<ul>
							<li><a href="https://www.goodchoice.kr/my/reserveList">예약
									내역</a></li>
							<li><a href="https://www.goodchoice.kr/my/mypage">내 정보
									관리</a></li>
						</ul>
						<ul>
							<li class="depth_2"><button type="button" class="has_ul">
									<span>더보기</span>
								</button>
								<ul>
									<li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
									<li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
									<!-- <li><a href="https://www.goodchoice.kr/more/project">혁신 프로젝트</a></li> -->
									<li><a href="https://www.goodchoice.kr/more/faq">고객문의</a></li>
									<li><a href="https://www.goodchoice.kr/my/notiSetting">알림설정</a></li>
									<li><a href="https://q.egiftcard.kr/couponstatus/"
										target="_blank"> 여기어때 상품권 잔액 조회 </a></li>
									<li><a href="https://www.goodchoice.kr/more/terms">약관
											및 정책</a></li>
								</ul></li>
						</ul>
						<div class="center">
							<p>여기어때 고객행복센터</p>
							<p>
								<a href="tel:1670-6250">1670-6250</a>
							</p>
							<p>오전 9시 - 새벽 3시</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<form id="product_filter_form" method="get" action="aa.html">
			<input type="hidden" name="sort" id="sort" value="HIT"> <input
				type="hidden" name="sel_date" id="sel_date" value="2023-04-03">
			<input type="hidden" name="sel_date2" id="sel_date2"
				value="2023-04-04">
			<div class="listpage">

				<!-- Result Top -->
				<div class="fix_srch">
					<div class="srch_bar" style="display: none;">
						<div class="wrap_inp">
							<input type="text" placeholder="지역, 숙소명">
						</div>
						<button class="btn_cancel" onclick="srch_close()">취소</button>
					</div>
				</div>
				<!-- //Result Top -->

				<!-- Sub Top -->
				<div class="sub_top_wrap">
					<!-- 페이백일때 클래스 추가 early_top -->
					<div class="sub_top bg_kong_1">
						<h2>강아지<%= resultList.get(0).getStore_type() %></h2>
						<span class="keyword"></span>
					</div>
				</div>
				<!-- //Sub Top -->

				<!-- Datepicker -->
				<input type="text" class="product_date" style="display: none;">
				<button type="button"
					class="comiseo-daterangepicker-triggerbutton ui-button ui-corner-all ui-widget comiseo-daterangepicker-bottom comiseo-daterangepicker-vfit"
					id="drp_autogen0">
					04.01 - 04.02<span class="ui-button-icon-space"> </span><span
						class="ui-button-icon ui-icon ui-icon-triangle-1-s"></span>
				</button>

				<!-- Content  -->
				<div id="content" class="sub_wrap">
					<!-- Area -->
					<div class="area_pop" style="display: none;">
						<div class="fix_title">
							지역 선택
							<button type="button" onclick="area_close();">닫기</button>
						</div>

						<!-- 지역필터 (리조트/캠핑/한옥 클래스추가 area_etc)-->


					</div>
					<!-- //Area -->

					<!-- Filter -->
					<div class="filter_wrap" style="display: none;">
						<div class="fix_title">
							상세조건
							<button type="button" onclick="filter_close();">닫기</button>
						</div>

						<section class="date_wrap">
							<h3>날짜</h3>
							<div class="btn_date">
								<span class="date_view"><b>4.3 ~ 4.4</b><em>&nbsp;·&nbsp;1박</em></span>
							</div>
						</section>

						<div class="btn_wrap">
							<button type="button">초기화</button>
							<button type="submit">적용</button>
						</div>



					</div>
					<!-- //Filter -->

					<!-- List -->
					<div class="list_wrap">
						<div class="top_sort">

							<!-- Mobile-->
							<div class="mobile">
								<button type="button" class="" onclick="filter_open();">상세조건</button>
								<button type="button" onclick="sort_open();" class="mob_sort">추천
									순</button>
								<button type="button" onclick="pop_map_m();">지도</button>
							</div>

							<!-- PC-->
							<div class="pc">
								<div class="btn_wrap width_4">
									<button type="button" data-sort="HIT" class="on">
										<span>추천 순</span>
									</button>
									<button type="button" data-sort="DISTANCE" class="">
										<span>거리 순</span>
									</button>
									<button type="button" data-sort="LOWPRICE" class=""></button>
									<button type="button" data-sort="HIGHPRICE" class=""></button>
								</div>
								<button type="button" class="btn_map" onclick="pop_map_pc();">지도</button>
							</div>
						</div>
						<div id="poduct_list_area">
							<!-- 마포구 -->
							<div class="title"></div>
							<%
							for(StoreVO sVO:resultList){
								double rate = srDAO.selectStoreReviewRate(sVO.getStore_id());
								String rateS = String.format("%.1f", rate);
								String recommend = "";
								if(rate >= 4.0) {
									recommend += "추천해요!";
								} else if(rate >= 3.0) {
									recommend += "평범해요.";
								} else if(rate >= 2.5) {
									recommend += "괜찮아요.";
								} else {
									recommend += "추천하지 않아요.";
								}
							%>
								<li class="list_4 adcno6"><a
								href="DetailPageService.do?store=<%=sVO.getStore_id()%>"
								data-ano="48278" data-adcno="6" data-alat="37.549788234578"
								data-alng="126.92179271704" data-distance="271.307"
								data-affiliate="1">
									<p class="pic">
										<img class="lazy"
											data-original="<%= sVO.getStore_pic()%>"
											src="<%= sVO.getStore_pic()%>"
											alt="<%= sVO.getStore_name()%>" style="display: inline;">
									</p>
									<div class="stage">
										<div class="name">

											<strong> <%= sVO.getStore_name()%> </strong>
											<p class="score">
												<span><em><%= rateS %></em>&nbsp;<%= recommend%></span><!-- &nbsp;(223) -->
											</p>
											<p><%= sVO.getStore_addr() %></p>
										</div>
										<!-- <div class="price">
											<div class="map_html">
												<p>
													<b>79,000원</b>
												</p>
											</div>
											<p>
												<b style="color: rgba(0, 0, 0, 1);">79,000원</b>
											</p> 
										</div> -->
									</div>
							</a></li>
							<% }%>
							<!-- <li class="list_4 adcno6"><a
								href="detailPage.jsp"
								data-ano="60048" data-adcno="6" data-alat="37.550347070392"
								data-alng="126.90983856239" data-distance="271.37"
								data-affiliate="1">
									<p class="pic">
										<img class="lazy"
											data-original="//image.goodchoice.kr/resize_1000X500x0/adimg_new/60048/0/3c0c4df1d62d99086520febf3603d6e6.jpg"
											src="//image.goodchoice.kr/resize_1000X500x0/adimg_new/60048/0/3c0c4df1d62d99086520febf3603d6e6.jpg"
											alt="합정 스티치스 게스트하우스" style="display: inline;">
									</p>
									<div class="stage">
										<div class="name">

											<strong> 합정 스티치스 게스트하우스 </strong>
											<p class="score">
												<span><em>9.3</em>&nbsp;추천해요</span>&nbsp;(45)
											</p>
											<p>마포구 | 합정역 도보 11분</p>
										</div>
										<div class="price">
											<div class="map_html">
												<p>
													<b>99,000원</b>
												</p>
											</div>
											<p>
												<b style="color: rgba(0, 0, 0, 1);">99,000원</b>
											</p>
										</div>
									</div>
							</a></li>
							<li class="list_4 adcno6"><a
								href="detailPage.jsp"
								data-ano="11329" data-adcno="6" data-alat="37.554205228972"
								data-alng="126.91581253568" data-distance="271.798"
								data-affiliate="1">
									<p class="pic">
										<img class="lazy"
											data-original="//image.goodchoice.kr/resize_1000X500x0/adimg_new/11329/0/0e9c5150784a70fafd6a52d63d9a39da.jpg"
											src="//image.goodchoice.kr/resize_1000X500x0/adimg_new/11329/0/0e9c5150784a70fafd6a52d63d9a39da.jpg"
											alt="홍대 롬바드 게스트하우스" style="display: inline;">
									</p>
									<div class="stage">
										<div class="name">

											<strong> 홍대 롬바드 게스트하우스 </strong>
											<p class="score">
												<span><em>9.2</em>&nbsp;추천해요</span>&nbsp;(234)
											</p>
											<p>마포구 | 합정역 도보 5분</p>
										</div>
										<div class="price">
											<div class="map_html">
												<p>
													<b>28,900원</b>
												</p>
											</div>
											<p>
												<b style="color: rgba(0, 0, 0, 1);">28,900원</b>
											</p>
										</div>
									</div>
							</a></li>
							<li class="list_4 adcno6"><a
								href="detailPage.jsp"
								data-ano="11570" data-adcno="6" data-alat="37.560800604731"
								data-alng="126.90668586181" data-distance="272.534"
								data-affiliate="1">
									<p class="pic">
										<img class="lazy"
											data-original="//image.goodchoice.kr/resize_1000X500x0/adimg_new/11570/0/ebfbb589bc63903e62068c9fc32f991c.JPG"
											src="//image.goodchoice.kr/resize_1000X500x0/adimg_new/11570/0/ebfbb589bc63903e62068c9fc32f991c.JPG"
											alt="서울 인 게스트하우스 월드컵점" style="display: inline;">
									</p>
									<div class="stage">
										<div class="name">

											<strong> 서울 인 게스트하우스 월드컵점 </strong>
											<p class="score">
												<span><em>9.3</em>&nbsp;추천해요</span>&nbsp;(30)
											</p>
											<p>마포구 | 마포구청역 도보 5분</p>
										</div>
										<div class="price">
											<div class="map_html">
												<p>
													<b>35,000원</b>
												</p>
											</div>
											<p>
												<b style="color: rgba(0, 0, 0, 1);">35,000원</b>
											</p>
										</div>
									</div>
							</a></li>
							<li class="list_4 adcno6"><a
								href="detailPage.jsp"
								data-ano="46074" data-adcno="6" data-alat="37.561357268933"
								data-alng="126.92606140564" data-distance="272.594"
								data-affiliate="1">
									<p class="pic">
										<img class="lazy"
											data-original="//image.goodchoice.kr/resize_1000X500x0/adimg_new/46074/0/4c1c30ba7046e08a713f7662a554c3b3.jpg"
											src="//image.goodchoice.kr/resize_1000X500x0/adimg_new/46074/0/4c1c30ba7046e08a713f7662a554c3b3.jpg"
											alt="홍대 아티스트 레지던스 인 연트럴파크" style="display: inline;">
									</p>
									<div class="stage">
										<div class="name">

											<strong> 홍대 아티스트 레지던스 인 연트럴파크 </strong>
											<p class="score">
												<span><em>6.4</em>&nbsp;좋아요</span>&nbsp;(19)
											</p>
											<p>마포구</p>
										</div>
										<div class="price">
											<div class="map_html">
												<p>
													<b>130,000원</b>
												</p>
											</div>
											<p>
												<b style="color: rgba(0, 0, 0, 1);">130,000원</b>
											</p>
										</div>
									</div>
							</a></li> -->

						</div>

					</div>
					<!-- //List -->

				</div>

			</div>
			<!-- //Content  -->
		</form>

		<!-- #1 내 위치 재설정-->
		<div class="layer pop_relocation">
			<div class="title">
				내 위치 재설정
				<button type="button" onclick="close_layer()">닫기</button>
			</div>
			<div class="vertical_align">
				<div>
					<b>현재 위치 재검색 또는<span>지도로 위치설정이 가능합니다.</span></b>
					<p onclick="geoFindMe(true,true,false); return false;">
						<span class="bg_01">현재 위치 재검색</span>
					</p>
					<br>
					<p onclick="select_map(); return false;">
						<span class="bg_02">지도로 위치 설정</span>
					</p>
				</div>
			</div>
		</div>

		<!-- #2 지도 -->
		<div class="layer pop_map">
			<button class="pc_btn_close" type="button" onclick="close_layer()">닫기</button>
			<div class="title">
				<span>위치설정</span>
				<button type="button" onclick="close_layer()">닫기</button>
			</div>
			<div class="address">서울특별시 중구 세종대로</div>
			<div class="inner_map">지도</div>
			<div class="btn_set">
				<button class="gra_left_right_red">설정 완료</button>
			</div>
		</div>

		<!-- #3 거리순/추천순 팝업 -->
		<div class="layer pop_sort box_shadow">
			<ul>
				<li><button type="button" data-sort="HIT" class="active">추천
						순</button></li>
				<li><button type="button" data-sort="DISTANCE" class="">거리
						순</button></li>
				<li><button type="button" data-sort="LOWPRICE" class="">낮은
						가격 순</button></li>
				<li><button type="button" data-sort="HIGHPRICE" class="">높은
						가격 순</button></li>
			</ul>
			<button type="button" onclick="close_layer();">취소</button>
		</div>

		<!-- #4 지도 - 모바일 숙소 소개 -->
		<div class="layer pop_m_room" style="display: none;">
			<ul class="owl-carousel"></ul>
		</div>

	</div>

	<!-- Footer -->
	<footer>
		<div class="align">
			<ul class="link">
				<li><a href="http://www.withinnovation.co.kr/" target="_blank">회사소개</a><span>|</span></li>
				<li><a href="https://www.goodchoice.kr/more/terms"
					data-default="term">이용약관</a><span>|</span></li>
				<li><a href="https://www.goodchoice.kr/more/terms/privacy"
					data-default="privacy">개인정보처리방침</a><span>|</span></li>
				<li><a href="https://www.goodchoice.kr/more/terms/consumer"
					data-default="consumer">소비자 분쟁해결 기준</a><span>|</span></li>
				<li><button type="button" onclick="pop_licence();return false;">사업자
						정보확인</button>
					<span>|</span></li>
				<li><a href="//ad.goodchoice.kr/" target="_blank">여기어때
						마케팅센터</a><span>|</span></li>
				<li><a href="//host.goodchoice.kr/" target="_blank">액티비티
						호스트센터</a><span>|</span></li>
				<li><a href="//hotel.goodchoice.kr/" target="_blank">HOTEL
						여기어때</a><span>|</span></li>
				<li><a href="https://www.goodchoice.kr/more/contentsInfo">콘텐츠산업진흥법에의한
						표시</a></li>
			</ul>
			<p>
				<b>고객행복센터 1670-6250</b><span>오전 9시 - 새벽 3시</span>
			</p>
			<address>
				<span>(주) 여기어때컴퍼니</span> 주소 : 서울특별시 강남구 봉은사로 479, 479타워 11층 | 대표이사 :
				정명훈 | 사업자등록번호: 742-86-00224 | 전자우편주소 : help@goodchoice.kr<br>
				통신판매번호 : 2017-서울강남-01779 | 관광사업자 등록번호: 제1026-24호 | 전화번호 : 1670-6250
				| 호스팅서비스제공자의 상호 표시: (주)여기어때컴퍼니<br> <span class="order">(주)
					여기어때컴퍼니는 통신판매중개자로서 통신판매의 당사자가 아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각
					판매자에게 있습니다.</span><br> Copyright GC COMPANY Corp. All rights
				reserved.
			</address>

			<div class="ico">
				<a href="//www.facebook.com/goodchoiceofficial" target="_black"
					class="icon-icn_login_facebook"><span>여기어때 페이스북</span></a> <a
					href="//blog.gccompany.co.kr" target="_black" class="icon-ic_blog"><span>여기어때
						블로그</span></a> <a href="//post.naver.com/my.nhn?memberNo=25599212"
					target="_black" class="icon-ic_naverpost"><span>네이버포스트</span></a>
			</div>

		</div>

	</footer>



	<!-- 상단으로 -->
	<button class="btn_go_top" onclick="moveTop();" style="display: none;">상단으로</button>

	<!-- //Wrap -->

	<!-- Script -->
	<!-- Library -->
	<script type="text/javascript" src="assets/js/lib/j_cookie.js"></script>
	<script type="text/javascript" src="assets/js/lib/j_lazy.js"></script>
	<script type="text/javascript" src="assets/js/lib/iscroll.js"></script>

	<!-- Service -->
	<script type="text/javascript" src="assets/js/service/common.js"></script>

	<!-- Module -->

	<!-- Page Script -->
	<script type="text/javascript" src="assets/js/lib/jqeury_min.js"></script>

	<script type="text/javascript" src="assets/js/lib/j_t_t.js"></script>

	<script type="text/javascript" src="assets/js/lib/j_comi.js"></script>

	<script type="text/javascript" src="assets/js/lib/swiper.js"></script>

	<script type="text/javascript" src="assets/js/lib/owl.min.js"></script>

	<script type="text/javascript" src="assets/js/lib/moment.js"></script>


	<script type="text/javascript" src="assets/js/service/datepick.js"></script>

	<script type="text/javascript" src="assets/js/lib/vue.js"></script>


	<script type="text/javascript" src="assets/js/service/product1.js"></script>
	<script type="text/javascript" src="assets/js/service/product2.js"></script>
	<script type="text/javascript" src="assets/js/service/product3.js"></script>

	<!-- Body Spinner -->
	<div class="spinner show" style="display: none;">
		<span></span>
	</div>

	<div style="display: none;">


		<script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-77719807-2', 'auto');
            ga('send', 'pageview');
        </script>

		<!-- Daum  중요 용도가 아니라면 주석처리 여부 결정 문제 없을시 삭제
        <script type="text/javascript">
            var roosevelt_params = {
                retargeting_id:'iaYgM3OBV.Uv.QOMJv.bqg00',
                tag_label:'BTecd8srQJ2G5hhOmZIanw'
            };
        </script>
        <script type="text/javascript" src="//adimg.daumcdn.net/rt/roosevelt.js" async></script -->

		<!-- Google Code for &#50668;&#44592;&#50612;&#46412;_&#50937; Conversion Page -->

		<script type="text/javascript"
			src="//www.googleadservices.com/pagead/conversion.js"></script>

		<noscript>
			<div style="display: inline;">
				<img height="1" width="1" style="border-style: none;" alt=""
					src="//www.googleadservices.com/pagead/conversion/964418007/?label=6YMHCM_i81wQ17PvywM&amp;guid=ON&amp;script=0" />
			</div>
		</noscript>


		<!-- Global site tag (gtag.js) - Google AdWords: 802163829 -->
		<script>
            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }
            gtag('js', new Date());

            gtag('config', 'AW-802163829');

            // Event snippet for WEB_다운로드_버튼 conversion page In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button.

            $(function () {
                $('.appdown_link').on('click', function () {
                    gtag('event', 'conversion', {
                        'send_to': 'AW-802163829/jxc6CN22x4MBEPWYwP4C'
                    });
                });
            });
        </script>

		<!-- 채널제출 -->
		<span itemscope="" itemtype="http://schema.org/Organization">
			<link itemprop="url" href="https://www.goodchoice.kr"> <a
			itemprop="sameAs" href="https://www.facebook.com/goodchoiceofficial"></a>
			<a itemprop="sameAs"
			href="https://play.google.com/store/apps/details?id=kr.goodchoice.abouthere"></a>
			<a itemprop="sameAs"
			href="https://itunes.apple.com/kr/app/id884043462"></a> <a
			itemprop="sameAs" href="https://post.naver.com/withinnovation"></a> <a
			itemprop="sameAs"
			href="https://www.youtube.com/channel/UCLI1HOVJdhWdVl9pT__g2Zw"></a>
		</span>
	</div>
	<script>
        let sessionUno = sessionStorage.getItem("uno");
        if (sessionUno) {
            if (sessionUno != "7473549") {
                sessionStorage.setItem("uno", "7473549");
            }
        } else {
            sessionStorage.setItem("uno", "7473549");
        }
    </script>


	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
	</div>
	<div class="ui-front comiseo-daterangepicker-mask"
		style="display: none;"></div>
	<div
		class="comiseo-daterangepicker comiseo-daterangepicker-right ui-widget ui-widget-content ui-corner-all ui-front"
		style="left: 456px; top: 0px; display: none;">
		<div class="comiseo-daterangepicker-main ui-widget-content">
			<div class="comiseo-daterangepicker-presets">
				<ul id="ui-id-1" role="menu" tabindex="0"
					class="ui-menu ui-widget ui-widget-content">
					<li class="ui-menu-item">
						<div id="ui-id-2" tabindex="-1" role="menuitem"
							class="ui-menu-item-wrapper">Today</div>
					</li>
					<li class="ui-menu-item">
						<div id="ui-id-3" tabindex="-1" role="menuitem"
							class="ui-menu-item-wrapper">Yesterday</div>
					</li>
					<li class="ui-menu-item">
						<div id="ui-id-4" tabindex="-1" role="menuitem"
							class="ui-menu-item-wrapper">Last 7 Days</div>
					</li>
					<li class="ui-menu-item">
						<div id="ui-id-5" tabindex="-1" role="menuitem"
							class="ui-menu-item-wrapper">Last Week (Mo-Su)</div>
					</li>
					<li class="ui-menu-item">
						<div id="ui-id-6" tabindex="-1" role="menuitem"
							class="ui-menu-item-wrapper">Month to Date</div>
					</li>
					<li class="ui-menu-item">
						<div id="ui-id-7" tabindex="-1" role="menuitem"
							class="ui-menu-item-wrapper">Previous Month</div>
					</li>
					<li class="ui-menu-item">
						<div id="ui-id-8" tabindex="-1" role="menuitem"
							class="ui-menu-item-wrapper">Year to Date</div>
					</li>
				</ul>
			</div>
			<div
				class="comiseo-daterangepicker-calendar ui-widget-content hasDatepicker"
				id="dp1680485576064">
				<div
					class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
					style="display: block;">
					<div
						class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
						<a class="ui-datepicker-prev ui-corner-all ui-state-disabled"
							title="Prev"><span class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a
							class="ui-datepicker-next ui-corner-all" data-handler="next"
							data-event="click" title="Next"><span
							class="ui-icon ui-icon-circle-triangle-e">Next</span></a>
						<div class="ui-datepicker-title">
							&nbsp;<span class="ui-datepicker-year">2023년&nbsp;</span><span
								class="ui-datepicker-month">4월</span>
						</div>
					</div>
					<table class="ui-datepicker-calendar">
						<thead>
							<tr>
								<th scope="col" class="ui-datepicker-week-end"><span
									title="일">일</span></th>
								<th scope="col"><span title="월">월</span></th>
								<th scope="col"><span title="화">화</span></th>
								<th scope="col"><span title="수">수</span></th>
								<th scope="col"><span title="목">목</span></th>
								<th scope="col"><span title="금">금</span></th>
								<th scope="col" class="ui-datepicker-week-end"><span
									title="토">토</span></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td
									class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ui-state-highlight ">
									<span class="ui-state-default">1</span>
								</td>
							</tr>
							<tr>
								<td
									class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled ui-state-highlight ">
									<span class="ui-state-default">2</span>
								</td>
								<td
									class=" ui-datepicker-days-cell-over   ui-datepicker-current-day ui-datepicker-today"
									data-handler="selectDay" data-event="click" data-month="3"
									data-year="2023"><a
									class="ui-state-default ui-state-highlight ui-state-active ui-state-hover"
									href="#">3</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">4</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">5</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">6</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">7</a></td>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">8</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">9</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">10</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">11</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">12</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">13</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">14</a></td>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">15</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">16</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">17</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">18</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">19</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">20</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">21</a></td>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">22</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">23</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">24</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">25</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">26</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">27</a></td>
								<td class="  " data-handler="selectDay" data-event="click"
									data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">28</a></td>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">29</a></td>
							</tr>
							<tr>
								<td class=" ui-datepicker-week-end  " data-handler="selectDay"
									data-event="click" data-month="3" data-year="2023"><a
									class="ui-state-default" href="#">30</a></td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
								<td
									class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">
									&nbsp;</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="ui-helper-clearfix">
			<div class="comiseo-daterangepicker-buttonpanel">
				<button type="button"
					class="ui-priority-primary ui-button ui-corner-all ui-widget">선택
					완료</button>
				<button type="button"
					class="ui-priority-secondary ui-button ui-corner-all ui-widget">Clear</button>
				<button type="button"
					class="ui-priority-secondary ui-button ui-corner-all ui-widget">Cancel</button>
			</div>
		</div>
	</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_datepicker" style="display: none;">
		<strong class="title">일정 선택</strong>
	</div>
	<div class="bg_datepicker" style="display: none;">
		<strong class="title">일정 선택</strong>
	</div>
	<div class="bg_datepicker" style="display: none;">
		<strong class="title">일정 선택</strong>
	</div>
	<div class="bg_datepicker" style="display: none;">
		<strong class="title">일정 선택</strong>
	</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
	<div class="bg_opacity_trans" style="display: none;">&nbsp;</div>
</body>

</html>