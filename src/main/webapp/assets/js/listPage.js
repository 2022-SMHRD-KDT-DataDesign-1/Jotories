/**
 * 
 */

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