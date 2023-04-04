/**
 * 
 */

        /*
  div사이즈 동적으로 구하기
*/
const outer = document.querySelector('.outer');
const innerList = document.querySelector('.inner-list');
const inners = document.querySelectorAll('.inner');
let currentIndex = 0; // 현재 슬라이드 화면 인덱스

inners.forEach((inner) => {
    inner.style.width = `${outer.clientWidth}px`; // inner의 width를 모두 outer의 width로 만들기
 })

innerList.style.width = `${outer.clientWidth * inners.length}px`; // innerList의 width를 inner의 width * inner의 개수로 만들기

/*
  버튼에 이벤트 등록하기
*/
const buttonLeft = document.querySelector('.button-left');
const buttonRight = document.querySelector('.button-right');

buttonLeft.addEventListener('click', () => {
  currentIndex--;
  currentIndex = currentIndex < 0 ? 0 : currentIndex; // index값이 0보다 작아질 경우 0으로 변경
  innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
  clearInterval(interval); // 기존 동작되던 interval 제거
  interval = getInterval(); // 새로운 interval 등록
});

buttonRight.addEventListener('click', () => {
  currentIndex++;
  currentIndex = currentIndex >= inners.length ? inners.length - 1 : currentIndex; // index값이 inner의 총 개수보다 많아질 경우 마지막 인덱스값으로 변경
  innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`; // index만큼 margin을 주어 옆으로 밀기
  clearInterval(interval); // 기존 동작되던 interval 제거
  interval = getInterval(); // 새로운 interval 등록
});

/*
  주기적으로 화면 넘기기
*/
const getInterval = () => {
  return setInterval(() => {
    currentIndex++;
    currentIndex = currentIndex >= inners.length ? 0 : currentIndex;
    innerList.style.marginLeft = `-${outer.clientWidth * currentIndex}px`;
  }, 3000);
}

let interval = getInterval(); // interval 등록






// 슬라이드 배너 부분


const slides = document.querySelectorAll('.slides'); //전체 슬라이드 컨테이너
const slideImg = document.querySelectorAll('.slides li'); //모든 슬라이드들
let currentIdx = [0, 0, 0, 0]; //현재 슬라이드 index
const slideCount = 3; // 슬라이드 개수
const prev = document.querySelectorAll('.prev'); //이전 버튼
const next = document.querySelectorAll('.next'); //다음 버튼
const slideWidth = 1800; //한개의 슬라이드 넓이
const slideMargin = 10; //슬라이드간의 margin 값

//전체 슬라이드 컨테이너 넓이 설정

slides[0].style.width = slideWidth + 'px';

function moveSlide0(num) {
  slides[0].style.left = -num * 400 + 'px';
  currentIdx[1] = num;
}

prev[0].addEventListener('click', function () {
  /*첫 번째 슬라이드로 표시 됐을때는 
  이전 버튼 눌러도 아무런 반응 없게 하기 위해 
  currentIdx !==0일때만 moveSlide 함수 불러옴 */

  if (currentIdx[0] !== 0) moveSlide0(currentIdx[0] - 1);
});

next[0].addEventListener('click', function () {
  /* 마지막 슬라이드로 표시 됐을때는 
  다음 버튼 눌러도 아무런 반응 없게 하기 위해
  currentIdx !==slideCount - 1 일때만 
  moveSlide 함수 불러옴 */
  if (currentIdx[0] !== slideCount - 1) {
    moveSlide0(currentIdx[0] + 1);
  }
});


slides[1].style.width = (slideWidth)+ 'px';

function moveSlide1(num) {
  slides[1].style.left = -num * 400 + 'px';
  currentIdx[1] = num;
}

prev[1].addEventListener('click', function () {
  /*첫 번째 슬라이드로 표시 됐을때는 
  이전 버튼 눌러도 아무런 반응 없게 하기 위해 
  currentIdx !==0일때만 moveSlide 함수 불러옴 */

  if (currentIdx[1] !== 0) moveSlide1(currentIdx[1] - 1);
});

next[1].addEventListener('click', function () {
  /* 마지막 슬라이드로 표시 됐을때는 
  다음 버튼 눌러도 아무런 반응 없게 하기 위해
  currentIdx !==slideCount - 1 일때만 
  moveSlide 함수 불러옴 */
  if (currentIdx[1] !== slideCount - 1) {
    moveSlide1(currentIdx[1] + 1);
  }
});


slides[2].style.width = (slideWidth)+ 'px';

function moveSlide2(num) {
  slides[2].style.left = -num * 400 + 'px';
  currentIdx[2] = num;
}

prev[2].addEventListener('click', function () {
  /*첫 번째 슬라이드로 표시 됐을때는 
  이전 버튼 눌러도 아무런 반응 없게 하기 위해 
  currentIdx !==0일때만 moveSlide 함수 불러옴 */

  if (currentIdx[2] !== 0) moveSlide2(currentIdx[2] - 1);
});

next[2].addEventListener('click', function () {
  /* 마지막 슬라이드로 표시 됐을때는 
  다음 버튼 눌러도 아무런 반응 없게 하기 위해
  currentIdx !==slideCount - 1 일때만 
  moveSlide 함수 불러옴 */
  if (currentIdx[2] !== slideCount - 1) {
    moveSlide2(currentIdx[2] + 1);
  }
});

slides[3].style.width = (slideWidth)+ 'px';

function moveSlide3(num) {
  slides[3].style.left = -num * 400 + 'px';
  currentIdx[3] = num;
}

prev[3].addEventListener('click', function () {
  /*첫 번째 슬라이드로 표시 됐을때는 
  이전 버튼 눌러도 아무런 반응 없게 하기 위해 
  currentIdx !==0일때만 moveSlide 함수 불러옴 */

  if (currentIdx[3] !== 0) moveSlide3(currentIdx[3] - 1);
});

next[3].addEventListener('click', function () {
  /* 마지막 슬라이드로 표시 됐을때는 
  다음 버튼 눌러도 아무런 반응 없게 하기 위해
  currentIdx !==slideCount - 1 일때만 
  moveSlide 함수 불러옴 */
  if (currentIdx[3] !== slideCount - 1) {
    moveSlide3(currentIdx[3] + 1);
  }
});


const drawStar = (target) => {
    document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
    console.log(`${target.value * 10}%`);
}

// 링크 제어
$(function(){
   $('header .nav_open').click(function(){ // 메뉴 오픈
      nav_open();
   });
   $('header .srch_open').click(function(){ // 검색 오픈
      srch_open();
   });
   $('.pop_guest_reserve_open').click(function(){ // 비회원 예약내역 조회
      pop_layer_w.call(this, 'pop_guest_reserve');return false;
   });

   $('.pop_mem_reserve_open, .mobile_reserve').click(function(){ // 회원 예약내역 조회
      pop_layer_w.call(this, 'pop_mem_reserve');return false;
   });

   $('.pop_login_open').click(function(){ // 1:1문의, 모바일 포인트/쿠폰함 클릭시 로그인
      pop_layer_w.call(this, 'pop_login');return false;
   });
   $('.pop_mem_reserve_open2').click(function(){ // 더보기 옆 아이콘 예약내역 조회
      pop_layer_w('pop_mem_reserve');
   });
   /*$('.pop_logout_open').click(function(){ // 로그아웃
      pop_twobtn('ell','로그아웃 하시겠습니까?','취소','로그아웃','close_layer()',"logoutPro()"); return false;
   });*/
   $('.pop_login_open').click(function(){
      pop_layer_w('pop_login');return false;
   });


});
