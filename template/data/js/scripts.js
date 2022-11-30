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
});
