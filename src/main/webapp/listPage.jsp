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
</head>
<body>




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

	<script>

        // 스크롤을 하면 따라 오게 하는 스크립트
        $(document).ready(function () {

            // 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
            var floatPosition = parseInt($("#floatMenu").css('top'));
            // 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

            $(window).scroll(function () {
                // 현재 스크롤 위치를 가져온다.
                var scrollTop = $(window).scrollTop();
                var newPosition = scrollTop + floatPosition + "px";

                /* 애니메이션 없이 바로 따라감
                 $("#floatMenu").css('top', newPosition);
                 */

                $("#floatMenu").stop().animate({
                    "top": newPosition
                }, 500);

            }).scroll();
        });

        // 기간을 선택할 수 있게 하는 스크립트
        $(function () {
            $('input[name="daterange"]').daterangepicker({
                opens: 'left'
            }, function (start, end, label) {
                console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
            });
        });

        // 인원 증가 스크립트
        $('.input-number-increment').click(function () {
            var $input = $(this).parents('.input-number-group').find('.input-number');
            var val = parseInt($input.val());
            $input.val(val + 1);
        });

        // 인원 감소 스크립트
        $('.input-number-decrement').click(function () {
            var $input = $(this).parents('.input-number-group').find('.input-number');
            var val = parseInt($input.val());
            if (val <= 1) {
                val = 1;
                $input.val(val);
            } else {
                $input.val(val - 1);
            }
        });

        // 가격 정하는 스크립트
        let rangeMin = 1;
        const range = document.querySelector(".range-selected");
        const rangeInput = document.querySelectorAll(".range-input input");
        const rangePrice = document.querySelectorAll(".range-price input");

        rangeInput.forEach((input) => {
            input.addEventListener("input", (e) => {
                let minRange = parseInt(rangeInput[0].value);
                let maxRange = parseInt(rangeInput[1].value);
                if (maxRange - minRange < rangeMin) {
                    if (e.target.className === "min") {
                        rangeInput[0].value = maxRange - rangeMin;
                    } else {
                        rangeInput[1].value = minRange + rangeMin;
                    }
                } else {
                    rangePrice[0].value = minRange;
                    rangePrice[1].value = maxRange;
                    range.style.left = (minRange / rangeInput[0].max) * 100 + "%";
                    range.style.right = 100 - (maxRange / rangeInput[1].max) * 100 + "%";
                }
            });
        });

        rangePrice.forEach((input) => {
            input.addEventListener("input", (e) => {
                let minPrice = rangePrice[0].value;
                let maxPrice = rangePrice[1].value;
                if (maxPrice - minPrice >= rangeMin && maxPrice <= rangeInput[1].max) {
                    if (e.target.className === "min") {
                        rangeInput[0].value = minPrice;
                        range.style.left = (minPrice / rangeInput[0].max) * 100 + "%";
                    } else {
                        rangeInput[1].value = maxPrice;
                        range.style.right = 100 - (maxPrice / rangeInput[1].max) * 100 + "%";
                    }
                }
            });
        });

    </script>
</body>
</html>