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
    $('.m_header-banner-close').on('click', function() {
        $('.modal-wrapper').toggleClass('open');
        $('.wrap').toggleClass('blur-it');
                        console.log("호호헤");

        return true;
    });
  });


  
  $( document ).ready(function() {
    $('.btn_sub').on('click', function() {
        $('.modal-wrapper').toggleClass('open');
        $('.wrap').toggleClass('blur-it');
                console.log("헤헤");

        return true;
    });
  });
  
  
   $( document ).ready(function() {
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