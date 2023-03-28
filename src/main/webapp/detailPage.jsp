<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="assets/css/detailPage.css">

</head>
<body>
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
                    <li><img class="slideImg" src="assets/img/쿼카5.jpg" alt=""></li>
                    <li><img class="slideImg" src="assets/img/쿼카6.jpg" alt=""></li>
                    <li><img class="slideImg" src="assets/img/쿼카2.jpg" alt=""></li>
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
      <script src="assets/js/detailPage.js"></script>
    
</body>
</html>