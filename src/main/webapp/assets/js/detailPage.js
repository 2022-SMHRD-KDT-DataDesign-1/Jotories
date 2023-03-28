/**
 * 
 */
const slides = document.querySelector('.slides'); //전체 슬라이드 컨테이너
const slideImg = document.querySelectorAll('.slides li'); //모든 슬라이드들
let currentIdx = 0; //현재 슬라이드 index
const slideCount = slideImg.length; // 슬라이드 개수
// const prev = document.querySelector('.prev'); //이전 버튼
// const next = document.querySelector('.next'); //다음 버튼
const slideWidth = 5; //한개의 슬라이드 넓이
const slideMargin = 1; //슬라이드간의 margin 값

// makeClone()
// initfunction()

const makeClone = () => {
    let cloneSlide_first = slideImg[0].cloneNode(true);
    let cloneSlide_last = slideImg[-1].cloneNode(true);
    slides.append(cloneSlide_first);
    slides.insertBefore(cloneSlide_last, slides.firstElementChild);
}

const initfunction = () => {
    slides.style.width = (slideWidth) + 'rem';
    slides.style.left = -(slideWidth) + 'rem';
    // slides.style.transition = '${0.5}s ease-out';
}


$(document).ready(function(){
  
  $('span.prev').click(function(){
    console.log(currentIdx);
  if (currentIdx >= 0) {
    slides.style.left = -currentIdx * (slideWidth + slideMargin) + 'rem';
    // slides.style.left = -currentIdx * 1000 + 'rem';
    slides.style.transition = `${0.5}s ease-out`;
  }
  if (currentIdx === 0) {
    setTimeout(function () {
      slides.style.left = -(slideCount - 3) * (slideWidth) + 'rem';
    //   slides.style.left = -slideCount * 1000 + 'rem';
      slides.style.transition = `${0}s ease-out`;
    }, 500);
    currentIdx = slideCount;
}
currentIdx -= 1;
  })

  $('span.next').click(function(){
    if (currentIdx <= slideCount - 3) {
      //슬라이드이동
      slides.style.left = -(currentIdx + 2) * (slideWidth + slideMargin) + 'rem';
      slides.style.transition = `${0.5}s ease-out`; //이동 속도
    }
    if (currentIdx === slideCount - 3) {
      //마지막 슬라이드 일때
      setTimeout(function () {
        //0.5초동안 복사한 첫번째 이미지에서, 진짜 첫번째 위치로 이동
      //   slides.style.left = -(slideWidth + slideMargin) + 'rem';
        slides.style.left = 0 + 'rem';
        slides.style.transition = `${0}s ease-out`;
      }, 500);
      currentIdx = -1;
    }
    currentIdx += 1;


})
})

$(document).ready(function(){
  
  $('ul.tabs li').click(function(){
    var tab_id = $(this).attr('data-tab');
    var tab_lines = $(this).children('hr')

    $('ul.tabs li').removeClass('current');
    $('.tab-content').removeClass('current');
    $('ul.tabs hr').removeClass('current-line');


    $(this).addClass('current');
    $("#"+tab_id).addClass('current');
    $(this).children('hr').addClass('current-line');
  })

})


$(document).ready(function(){
    $('ul.slides img').click(function(){
    $('ul.slides img').removeClass('current-img');
  
    $(this).addClass('current-img');
    $('img#mainImg').attr('src',$(this).attr('src'));
})})
 
 