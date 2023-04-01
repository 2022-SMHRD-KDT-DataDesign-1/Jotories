    // 닉네임 수정하는 구간
    // 수정 버튼을 눌렀을 때 텍스트, 수정완료, 수정취소가 나오게 하는 구간
    let nick_con = document.getElementById("btns-wrap__edit-btn");
    nick_con.addEventListener('click', () => {
        let nick_con2 = document.getElementById("clicks");

        if (nick_con2.style.display == 'none') {
            nick_con2.style.display = 'block';
            nick_con.style.display = 'none';
        } else {
            nick_con2.style.display = 'none';
            nick_con.style.display = 'block';
        }
    })


    // 예약자 이름 수정하는 구간
    // 수정 버튼을 눌렀을 때 텍스트, 수정완료, 수정취소가 나오게 하는 구간
    let reser_con = document.getElementById("btns-wrap__edit-btn1");
    reser_con.addEventListener('click', () => {
        console.log("gggg");
        let reser_con2 = document.getElementById("clicks1");

        if (reser_con2.style.display == 'none') {
            reser_con2.style.display = 'block';
            reser_con.style.display = 'none';
        } else {
            reser_con2.style.display = 'none';
            reser_con.style.display = 'block';
        }
    })

    // 연락처 수정하는 구간
    // 수정 버튼을 눌렀을 때 텍스트, 수정완료, 수정취소가 나오게 하는 구간
    let phone_num = document.getElementById("btns-wrap__edit-btn2");
    phone_num.addEventListener('click', () => {
        console.log("gggg");
        let phone_num2 = document.getElementById("clicks2");

        if (phone_num2.style.display == 'none') {
            phone_num2.style.display = 'block';
            phone_num.style.display = 'none';
        } else {
            phone_num2.style.display = 'none';
            phone_num.style.display = 'block';
        }
    })

    // 수정완료 버튼을 눌렀을 때 원래대로 돌아가는 구간
	let allB = document.getElementsByClassName("btns-wrap__submit-btn")[0];
	allB.addEventListener('click', () => {
	    let nick_con2 = document.getElementById("clicks");
	    let reser_con2 = document.getElementById("clicks1");
	    let phone_num2 = document.getElementById("clicks2");
	
	    document.getElementsByClassName("teext")[0].value = '';
	    document.getElementsByClassName("teext")[1].value = '';
	    document.getElementById("cellPhone").value = '';
	
	    nick_con.style.display = 'block';
	    nick_con2.style.display = 'none';
	
	    reser_con.style.display = 'block';
	    reser_con2.style.display = 'none';
	
	    phone_num.style.display = 'block';
	    phone_num2.style.display = 'none';
	})

	// 수정취소 버튼을 눌렀을 때 원래대로 돌아가는 구간
	let nick_con3 = document.getElementsByClassName("btns-wrap__cancel-btn")[0];
	nick_con3.addEventListener('click', () => {
	    let nick_con2 = document.getElementById("clicks");
	    let reser_con2 = document.getElementById("clicks1");
	    let phone_num2 = document.getElementById("clicks2");
	
	    document.getElementsByClassName("teext")[0].value = '';
	    document.getElementsByClassName("teext")[1].value = '';
	    document.getElementById("cellPhone").value = '';
	
	    nick_con.style.display = 'block';
	    nick_con2.style.display = 'none';
	
	    reser_con.style.display = 'block';
	    reser_con2.style.display = 'none';
	
	    phone_num.style.display = 'block';
	    phone_num2.style.display = 'none';
	})
    
    // 연락처 
function autoHypenPhone(str){
            str = str.replace(/[^0-9]/g, '');
            var tmp = '';
            if( str.length < 4){
                return str;
            }else if(str.length < 7){
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3);
                return tmp;
            }else if(str.length < 11){
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 3);
                tmp += '-';
                tmp += str.substr(6);
                return tmp;
            }else{              
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 4);
                tmp += '-';
                tmp += str.substr(7);
                return tmp;
            }
            return str;
        }

var cellPhone = document.getElementById('cellPhone');
cellPhone.onkeyup = function(event){
        event = event || window.event;
        var _val = this.value.trim();
        this.value = autoHypenPhone(_val) ;
}