

$(document).ready(function(){

     $(".ah-common-form").submit(function() { //Change
        var th = $(this);
        var empty = true;

        $('.ah-common-form  input[name="tel"]').each(function(o){
            if ($(this).val() == ""){empty = false;}
        });

        if (empty == false){
          alert("Заполните, пожалуйста, Ваш телефон");
        }else{
        $.ajax({
            type: "POST",
            url: "/mail.php", //Change
            data: th.serialize()
        }).done(function() {
            alert("Thank you!");
            setTimeout(function() {
                // Done Functions
                th.trigger("reset");
            }, 1000);
        });
        }
        return false;
    });


    $(".ah-common-form1").submit(function() { //Change
        var th = $(this);
        var empty = true;

        $('.ah-common-form1  input[name="tel"]').each(function(o){
            if ($(this).val() == ""){empty = false;}
        });

        if (empty == false){
          alert("Заполните, пожалуйста, Ваш телефон");
        }else{
        $.ajax({
            type: "POST",
            url: "/mail.php", //Change
            data: th.serialize()
        }).done(function() {
            alert("Thank you!");
            setTimeout(function() {
                // Done Functions
                th.trigger("reset");
            }, 1000);
        });
        }
        return false;
    });

    //Плавный скролл
    $('a[href^="#"]').click(function() {
        elementClick = $(this).attr("href");
        destination = $(elementClick).offset().top;
        // if($.browser.safari){
        //     $('body').animate({scrollTop: destination},3000);
        // }else{
            $('body').animate({scrollTop: destination},2000);
            $('html').animate( {scrollTop: destination},2000);
        // }
        return false;
    })

    $('.ah-popup-link1').magnificPopup({
      type: 'image'
      // other options
    });

    $('.popup-with-zoom-anim').magnificPopup({
        type: 'inline',

        fixedContentPos: false,
        fixedBgPos: true,

        overflowY: 'auto',

        closeBtnInside: true,
        preloader: false,
        
        midClick: true,
        removalDelay: 300,
        mainClass: 'my-mfp-zoom-in'
    });
    

    $(".phone").mask("+ 7 (999) 999 - 99 - 99?");

    $(".ah-slider").owlCarousel({
        loop:true,
        margin:30,
        nav:false,
        autoplay:true,
        smartSpeed:1000,
        autoplayTimeout:2000,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:2
            },
            1000:{
                items:3
            }
        }
    });

    $(".ah-slider1").owlCarousel({
        loop:true,
        margin:0,
        nav:false,
        autoplay:true,
        smartSpeed:2000,
        autoplayTimeout:3000,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:1
            },
            1000:{
                items:1
            }
        }
    });

 });


