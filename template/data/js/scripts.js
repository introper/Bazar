jQuery(document).ready(function ($) {
  const swiper3 = new Swiper('.detail', {
    // Optional parameters
    slidesPerView: 1,
    spaceBetween: 10,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },

  });

  $(document).on("click", ".arrow", function (e) {
    e.preventDefault();
    $(this).toggleClass("active");
    $(this).closest('li').siblings('li').find('.arrow').removeClass('active');
    $(this).closest('li').find('ul').toggleClass('active');
    $(this).closest('li').siblings('li').find('ul').removeClass('active');
  });
  function fixedHeader() {
    let scrollTop = $(window).scrollTop();
    const header = $(document).find(".header");
    if (scrollTop > 0) {
      header.addClass("fixed");
    } else {
      header.removeClass("fixed");
    }
  }

  $(document).ready(fixedHeader);
  $(window).scroll(fixedHeader);

  $(document).on("click", ".edit-btn", function (e) {
    e.preventDefault();
    $(".edit").toggleClass("active");
    $("html").toggleClass("active");
  });

  $(document).on("click", ".add-item", function (e) {
    e.preventDefault();
    $(".add").toggleClass("active"); 
    $("html").toggleClass("active");
  });

  $(document).on("click", ".exit-block", function (e) {
    e.preventDefault();
    $(document).find(".modal").removeClass("active");
    $(document).find("html").removeClass("active");
  });

  $(document).on("click", ".bg-modal", function (e) {
    e.preventDefault();
    $(document).find(".modal").removeClass("active");
    $(document).find("html").removeClass("active");
  });

  $(document).keyup(function (e) {
    if (e.key === "Escape") {
      $(document).find(".modal").removeClass("active");
      $(document).find("html").removeClass("active");
    }
  });


  $().ready(function () {

    $.validator.addMethod("pwcheck", function (value) {
      return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) // consists of only these
        && /[a-z]/.test(value) // has a lowercase letter
        && /\d/.test(value) // has a digit
    });

    $("#registration-form").validate({
      rules: {

        firstname: "required",
        lastname: "required",
        email: {
          required: true,
          email: true
        },
        password: {
          required: true,
          minlength: 8,
          pwcheck: true
        },
        password2: {
          required: true,
          minlength: 8,
          equalTo: "#password2"
        }
      },
      messages: {
        firstname: "Vyplňte křesní jméno",
        lastname: "Vyplňte příjmení",
        email: "Zadejte platnou emailovou adresu",
        password: {
          required: "Vyplňte heslo",
          minlength: "Heslo musí obdsahovat minimálně 8 znaků",
          pwcheck: "Heslo musí obsahovat minimálně: jedno velké písmeno, jedno malé písmeno, jedno číslo"
        },
        password2: {
          required: "Vyplňte ověření hesla",
          minlength: "Heslo musí obdsahovat minimálně 8 znaků",
          equalTo: "Hesla se musí shodovat"
        },
      },

    })
  });

});
