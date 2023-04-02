<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="assets/css/listPage.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 날짜 선택 -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	
	<link rel="stylesheet" type="text/css" href="assets/css/common.css">
		<link rel="stylesheet" type="text/css" href="assets/css/heregood.css">
	
</head>
<body>

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
                    <div class="sub_top bg_kong_1">
                        <h2>펜션</h2>
                        <div class="area">
                            <div class="btn_area align_vertical"><span>경기/인천</span>양평/용문</div>
                            <div class="btn_date"><span class="date_view"><b>3.30 ~
                                        3.31</b></span></div>
                        </div>
                        <span class="keyword"></span>
                    </div>
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





	<!-- 필터 선택 -->
	<div id="floatMenu">
		<form action="">
			<br> 날짜<br>
			<!-- 기간 선택 가능 -->
			<input type="text" name="daterange" value="03/28/2023 - 04/01/2023" /><br>
			<br>
			<hr>
			상세조건<br> <input type="reset" value="초기화" id="reset"> <input
				type="submit" value="적용" id="submit"> <br>
			<br>

			<!-- 선택 -->
			<input style='zoom: 1.3;' type="checkbox" id="possible" name="reser"><span
				style="vertical-align: top;">예약가능</span> <br> <input
				style='zoom: 1.3;' type="checkbox" id="promotion" name="promo"><span
				style="vertical-align: top;">프로모션</span> <br>
			<br>

			<!-- 인원 정하는 곳 -->
			<div class="input-group input-number-group">
				<div class="number_human">인원</div>
				<div class="input-group-button">
					<span class="input-number-decrement">-</span>
				</div>
				<input class="input-number" type="number" name="human" value="1"
					min="1" max="1000">
				<div class="input-group-button">
					<span class="input-number-increment">+</span>
				</div>
			</div>
			<br>

			<!-- 가격 정하는 곳 -->
			가격 <br>
			<br>
			<div class="range">
				<div class="range-slider">
					<span class="range-selected"></span>
				</div>
				<div class="range-input">
					<input type="range" class="min" min="1" max="30" value="1" step="1">
					<input type="range" class="max" min="1" max="30" value="30"
						step="1">
				</div>
				<div class="range-price">
					<div class="left_min">
						<input type="text" name="min" value="1">만원
					</div>
					<div class="right_max">
						<input type="text" name="max" value="30">만원
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- 애견호텔 나열 -->
	<div id="right">
		<div class="hotels">
			<div class="hotels_name">
			    <a href="detailPage.jsp">
				<img src="assets/img/j_p.png"> <span class="up_name">abcd호텔</span>
				<span class="down_price" id="hotel1"><strong>78000</strong>원</span>
				</a>
			</div>
			<div class="hotels_name">
						    <a href="detailPage.jsp">
			
				<img src="assets/img/j_p.png"> <span class="up_name">abcd호텔</span>
				<span class="down_price" id="hotel2"><strong>78000</strong>원</span>
								</a>
				
			</div>
			<div class="hotels_name">
						    <a href="detailPage.jsp">
			
				<img src="assets/img/j_p.png"> <span class="up_name">abcd호텔</span>
				<span class="down_price" id="hotel3"><strong>78000</strong>원</span>
								</a>
				
			</div>
			<div class="hotels_name">
						    <a href="detailPage.jsp">
			
				<img src="assets/img/j_p.png"> <span class="up_name">abcd호텔</span>
				<span class="down_price" id="hotel4"><strong>78000</strong>원</span>
								</a>
				
			</div>
			<div class="hotels_name">
						    <a href="detailPage.jsp">
			
				<img src="assets/img/j_p.png"> <span class="up_name">abcd호텔</span>
				<span class="down_price" id="hotel5"><strong>78000</strong>원</span>
								</a>
				
			</div>
			<div class="hotels_name">
						    <a href="detailPage.jsp">
			
				<img src="assets/img/j_p.png"> <span class="up_name">abcd호텔</span>
				<span class="down_price" id="hotel6"><strong>78000</strong>원</span>
								</a>
				
			</div>
		</div>
	</div>

      <script src="assets/js/listPage.js"></script>
            <script src="assets/js/heregood.js"></script>
      

</body>
</html>