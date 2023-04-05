/**
 * 
 */

 $( document ).ready(function() {
    $('.trigger').on('click', function() {
       $('.modal-wrapper').toggleClass('open');
      $('.wrap').toggleClass('blur-it');
                     console.log("크하헤헤");

      return false;


    });
  });




  $( document ).ready(function() {
	  console.log('document ready1')
    $('.m_header-banner-close').on('click', function() {
        $('.modal-wrapper').toggleClass('open');
        $('.wrap').toggleClass('blur-it');
                        console.log("호호헤");

        return true;
    });
  });


  
  $( document ).ready(function() {
	   console.log('document ready2')
    $('.btn_sub').on('click', function() {
        $('.modal-wrapper').toggleClass('open');
        $('.wrap').toggleClass('blur-it');
                console.log("헤헤");

        return true;
    });
  });
  
  
   $( document ).ready(function() {
	    console.log('document ready3')
    $('.btn_pay').on('click', function() {
       $('.modal-wrapper').toggleClass('open');
      $('.wrap').toggleClass('blur-it');
                     console.log("크하헤헤");

      return false;


    });
  });
  
  


  function closePop() {
    document.getElementById("zz").style.display = "none";
}