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

  $(document).on("click", ".add-item", function (e) {
    e.preventDefault();
    $(".modal-add").toggleClass("active");
  });
  $(document).on("click", ".modal-add .exit-block", function (e) {
    e.preventDefault();
    $(document).find(".modal-add").removeClass("active");
  });

  $(document).on("click", ".bg-modal", function (e) {
    e.preventDefault();
    $(document).find(".modal-add").removeClass("active");
  });

  $(document).keyup(function (e) {
    if (e.key === "Escape") {
      $(document).find(".modal-add").removeClass("active");
    }
  });

});
