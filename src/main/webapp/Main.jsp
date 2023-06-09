<%@page import="com.dogdog.model.StoreVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dogdog.model.StoreDAO"%>
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
<title>똑똑</title>

   <style>

  
     
          </style>
</head>

<body>
    <% UserVO resultVO = (UserVO)session.getAttribute("resultVO"); %>

         <!-- Wrap -->
    <!-- <div class="wrap show" style="background-color: #fafafa !important;"> -->
    <div class="wrap show">

        <!-- Header -->
        <header class="recommend_header">

            <section>
                <h1><a class="" href="Main.jsp" title="여기어때">여기어때</a></h1>
                <button type="button" class="btn_menu nav_open ">메뉴</button>
                <ul class="gnb_pc">
                <% if(resultVO != null){ %>
                    <li><a href="MyPage.jsp" class="nuxt-link-exact-active nuxt-link-active">예약내역</a></li>
                    <%} else { %>
                    	<li><a href="#" class="nuxt-link-exact-active nuxt-link-active">예약내역</a></li>
                    <% } %>
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
                                "<li><a href='editcontent.jsp'>내정보</a></li>" +
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




    <div class="outer">
        <div class="inner-list">
          <div class="inner">
            <a href="ex01_board.html"><img class="imgs" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221020_189%2F1666232009262sSkLY_JPEG%2FIMG_6229_Original.jpg" alt=""></a>
          </div>
          <div class="inner">
            <a href="ex02_myPage1.html"><img class="imgs" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221020_241%2F16662320088510dTJo_JPEG%2FIMG_4963_Original.jpg" alt=""></a>
          </div>
          <div class="inner">
            <a href="ex03_myPage2.html"><img class="imgs" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221020_82%2F1666232007597CaN81_JPEG%2FIMG_4802_Original.jpg" alt=""></a>
          </div>
        </div>
      </div>
      
      <div class="button-list">
        <div class="button-left"></div>
        <div class="button-right"></div>
      </div>


     <div class="main_link">
        <ul class="main_link_items">
          <li><a href="StoreListService.do?type=school" menu-link="1"><span class="ico_01">&nbsp;</span><p>유치원</p></a></li>
          <li><a href="StoreListService.do?type=hotel" menu-link="2"><span class="ico_02">&nbsp;</span><p>호텔</p></a></li>
          <li><a href="StoreListService.do?type=hospital" menu-link="3"><span class="ico_03">&nbsp;</span><p>병원</p></a></li>
          <li><a href="StoreListService.do?type=salon" menu-link="6"><span class="ico_04">&nbsp;</span><p>미용실</p></a></li>
        </ul>
      </div>
<% 
StoreDAO storeDao = new StoreDAO();
ArrayList<StoreVO> schoolTop5List = storeDao.selectTop5School();
ArrayList<StoreVO> hotelTop5List = storeDao.selectTop5Hotel();
ArrayList<StoreVO> hospitalTop5List = storeDao.selectTop5Hospital();
ArrayList<StoreVO> salonTop5List = storeDao.selectTop5Salon();

%>
		
      <div class="top5_1">
        <h1 style="padding-bottom: 20px;">유치원 인기순위</h1>
      </div>
 <div id="slideShow1">
    <ul class="slides">
    	<% for(StoreVO s:schoolTop5List) {
    		double rate = storeDao.selectStoreRate(s.getStore_id());
    		String rateS = String.format("%.1f", rate);
    		if(((int)(rate + 0.5) / 10 ) * 10 >= rate){
    			rate = ((int)(rate + 0.5) / 10 ) * 10;
    		} else {
    			rate = (int)rate;
    		}
    		String stars = "";
    		String restStars = "";
    		String moveURL = "DetailPageService.do?store=" + s.getStore_id();
    		
    		for(double i = 0; i < rate; i++) {stars += "★";}
    		for(double i = 0; i < 5 - rate; i++) {restStars += "★";}
    		out.print("<li ><a href="+ moveURL +"><div class='top5_container'>"+
        "<div class='top5_img'>" +
            "<img src='"+ s.getStore_pic() +"' alt='"+ s.getStore_name() +"'></div>"+
        "<div class='top5_content'>"+
        "<strong class='top5_storename'>"+s.getStore_name()+"</strong><br>"+
        "<span class='star'>"+ stars +"<span>★★★★★</span></span><span class='star_rest'>"+ restStars +
        
        "<span class='top5_rate'>"+ rateS +"</span>"+
        "</div></div></a></li>");
    	} %>
    </ul>  
    <p class="controller">
      <span class="prev">&lang;</span>  
      <span class="next">&rang;</span>
    </p>
  </div>
      <div class="top5_1">
        <h1 style="padding-bottom: 20px;">호텔 인기순위</h1>
      </div>
 <div id="slideShow2">
    <ul class="slides">
    	<% for(StoreVO s:hotelTop5List) {
    		double rate = storeDao.selectStoreRate(s.getStore_id());
    		String rateS = String.format("%.1f", rate);
    		if(((int)(rate + 0.5) / 10 ) * 10 >= rate){
    			rate = ((int)(rate + 0.5) / 10 ) * 10;
    		} else {
    			rate = (int)rate;
    		}
    		//System.out.println(((num+5) / 10) * 10);
    		String stars = "";
    		String restStars = "";
    		String moveURL = "DetailPageService.do?store=" + s.getStore_id();
    		
    		for(double i = 0; i < rate; i++) {
    			stars += "★";
    		}
    		for(double i = 0; i < 5 - rate; i++) {
           		restStars += "★";
            }
    		out.print("<li ><a href="+ moveURL +"><div class='top5_container'>"+
        "<div class='top5_img'>" +
            "<img src='"+ s.getStore_pic() +"' alt='"+ s.getStore_name() +"'></div>"+
        "<div class='top5_content'>"+
        "<strong class='top5_storename'>"+s.getStore_name()+"</strong><br>"+
        "<span class='star'>"+ stars +"<span>★★★★★</span></span><span class='star_rest'>"+ restStars +
        
        /*"<input type='range' oninput='drawStar(this)' value='1' step='1' min='0' max='10'> */
        "<span class='top5_rate'>"+ rateS +"</span>"+
        /* "<span class='top5_rate'>(리뷰수)</span>"+ */
        "</div></div></a></li>");
    	} %>
    	<!-- <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif" alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li> -->
    </ul>  
    <p class="controller">
      <!-- &lang: 왼쪽 방향 화살표
      &rang: 오른쪽 방향 화살표 -->
      <span class="prev">&lang;</span>  
      <span class="next">&rang;</span>
    </p>
  </div>
      <div class="top5_1">
        <h1 style="padding-bottom: 20px;">병원 인기순위</h1>
      </div>
 <div id="slideShow3">
    <ul class="slides">
    	<% for(StoreVO s:hospitalTop5List) {
    		double rate = storeDao.selectStoreRate(s.getStore_id());
    		String rateS = String.format("%.1f", rate);
    		if(((int)(rate + 0.5) / 10 ) * 10 >= rate){
    			rate = ((int)(rate + 0.5) / 10 ) * 10;
    		} else {
    			rate = (int)rate;
    		}
    		//System.out.println(((num+5) / 10) * 10);
    		String stars = "";
    		String restStars = "";
    		String moveURL = "DetailPageService.do?store=" + s.getStore_id();
    		
    		for(double i = 0; i < rate; i++) {
    			stars += "★";
    		}
    		for(double i = 0; i < 5 - rate; i++) {
           		restStars += "★";
            }
    		out.print("<li ><a href="+ moveURL +"><div class='top5_container'>"+
        "<div class='top5_img'>" +
            "<img src='"+ s.getStore_pic() +"' alt='"+ s.getStore_name() +"'></div>"+
        "<div class='top5_content'>"+
        "<strong class='top5_storename'>"+s.getStore_name()+"</strong><br>"+
        "<span class='star'>"+ stars +"<span>★★★★★</span></span><span class='star_rest'>"+ restStars +
        
        /*"<input type='range' oninput='drawStar(this)' value='1' step='1' min='0' max='10'> */
        "<span class='top5_rate'>"+ rateS +"</span>"+
        /* "<span class='top5_rate'>(리뷰수)</span>"+ */
        "</div></div></a></li>");
    	} %>
    	<!-- <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif" alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li> -->
    </ul>  
    <p class="controller">
      <!-- &lang: 왼쪽 방향 화살표
      &rang: 오른쪽 방향 화살표 -->
      <span class="prev">&lang;</span>  
      <span class="next">&rang;</span>
    </p>
  </div>
      <div class="top5_1">
        <h1 style="padding-bottom: 20px;">미용 인기순위</h1>
      </div>
 <div id="slideShow4">
    <ul class="slides">
    	<% for(StoreVO s:salonTop5List) {
    		double rate = storeDao.selectStoreRate(s.getStore_id());
    		String rateS = String.format("%.1f", rate);
    		if(((int)(rate + 0.5) / 10 ) * 10 >= rate){
    			rate = ((int)(rate + 0.5) / 10 ) * 10;
    		} else {
    			rate = (int)rate;
    		}
    		//System.out.println(((num+5) / 10) * 10);
    		String stars = "";
    		String restStars = "";
    		String moveURL = "DetailPageService.do?store=" + s.getStore_id();
    		
    		for(double i = 0; i < rate; i++) {
    			stars += "★";
    		}
    		for(double i = 0; i < 5 - rate; i++) {
           		restStars += "★";
            }
    		out.print("<li ><a href="+ moveURL +"><div class='top5_container'>"+
        "<div class='top5_img'>" +
            "<img src='"+ s.getStore_pic() +"' alt='"+ s.getStore_name() +"'></div>"+
        "<div class='top5_content'>"+
        "<strong class='top5_storename'>"+s.getStore_name()+"</strong><br>"+
        "<span class='star'>"+ stars +"<span>★★★★★</span></span><span class='star_rest'>"+ restStars +
        
        /*"<input type='range' oninput='drawStar(this)' value='1' step='1' min='0' max='10'> */
        "<span class='top5_rate'>"+ rateS +"</span>"+
        /* "<span class='top5_rate'>(리뷰수)</span>"+ */
        "</div></div></a></li>");
    	} %>
    	<!-- <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li>
      <li><img src="assets/img/pic.jfif" alt=""></li>
      <li><img src="assets/img/pic.jfif"  alt=""></li> -->
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