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

  // $(document).on("click", ".edit-btn", function (e) {
  //   e.preventDefault();
  //   $(".edit").toggleClass("active");
  //   $("html").toggleClass("active");
  // });

  // $(document).on("click", ".add-item", function (e) {
  //   e.preventDefault();
  //   $(".add").toggleClass("active");
  //   $("html").toggleClass("active");
  // });

  // $(document).on("click", ".exit-block", function (e) {
  //   e.preventDefault();
  //   $(document).find(".modal").removeClass("active");
  //   $(document).find("html").removeClass("active");
  // });

  // $(document).on("click", ".bg-modal", function (e) {
  //   e.preventDefault();
  //   $(document).find(".modal").removeClass("active");
  //   $(document).find("html").removeClass("active");
  // });

  // $(document).keyup(function (e) {
  //   if (e.key === "Escape") {
  //     $(document).find(".modal").removeClass("active");
  //     $(document).find("html").removeClass("active");
  //   }
  // });


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
          equalTo: "#password"
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
  $(document).ready(function () {
    $(".checkbox-block input[type=checkbox]").on("change", function () {
      var checkboxValue = $(this).prop("checked");
      decideParentsValue($(this));
      $(this).closest("li").find(".children input[type=checkbox]").prop("checked", checkboxValue);
    });
    function decideParentsValue(me) {
      var shouldTraverseUp = false;
      var checkedCount = 0;
      var myValue = me.prop("checked");

      $.each($(me).closest(".children").children('li'), function () {
        var checkbox = $(this).children("input[type=checkbox]");
        if ($(checkbox).prop("checked")) {
          checkedCount = checkedCount + 1;
        }
      });
      if ((myValue == true && checkedCount == 1) || (myValue == false && checkedCount == 0)) {
        shouldTraverseUp = true;
      }
      if (shouldTraverseUp == true) {
        var inputCheckBox = $(me).closest(".children").siblings("input[type=checkbox]");
        inputCheckBox.prop("checked", me.prop("checked"));
        decideParentsValue(inputCheckBox);
      }
    }
  });
  $(document).on("click", ".arrow-fil", function (e) {
    e.preventDefault();
    $(this).toggleClass("active");
    $(this).closest('li').siblings('li').find('.arrow-fil').removeClass('active');
    $(this).closest('li').find('ul').toggleClass('active');
    $(this).closest('li').siblings('li').find('ul').removeClass('active');
  });
  $(document).ready(function () {
    $("#min_price,#max_price").on('change', function () {
      var min_price_range = parseInt($("#min_price").val());
      var max_price_range = parseInt($("#max_price").val());
      var maximum = 1000;
      if (min_price_range >= max_price_range) {
        var min_price_range = max_price_range - 50;
        $('#min_price').val(min_price_range);
      }
      if (min_price_range < 0) {
        var min_price_range = 0;
        var max_price_range = 50;
        $('#min_price').val(min_price_range);
        $('#max_price').val(max_price_range);
      }
      if (max_price_range > maximum) {
        var max_price_range = maximum - 10;
        $('#max_price').val(max_price_range);
      }
      $("#slider-range").slider({
        values: [min_price_range, max_price_range]
      });
    });

    $(function () {
      $("#slider-range").slider({
        range: true,
        orientation: "horizontal",
        min: 0,
        max: 1000,
        values: [100, 800],
        step: 1,
        slide: function (event, ui) {
          if (ui.values[0] + 1 >= ui.values[1]) {
            return false;
          }
          $("#min_price").val(ui.values[0]);
          $("#max_price").val(ui.values[1]);
          $("#min_price_hidden").val(ui.values[0]);
          $("#max_price_hidden").val(ui.values[1]);
        },

      });
      $("#min_price").val($("#slider-range").slider("values", 0));
      $("#max_price").val($("#slider-range").slider("values", 1));
    });
  });

  $(document).on("click", ".dropdown", function (e) {
    e.preventDefault();
    $(this).addClass("active");
    $("body").addClass("body-select")
  });

  $(document).on("click", ".body-select", function (e) {
    $(".dropdown").removeClass("active");
    $("body").removeClass("body-select");
  });

  $(document).on("click", ".dropdown .select-block .select-item", function (e) {
    e.preventDefault();
    var value = $(this).attr("data-slug");
    var id = $(this).attr("id");
    var text = $(this).find("a").text()
    var dropdown = $(this).closest(".dropdown");
    var activeSelect = $('.active-select a');

    dropdown.find(activeSelect).text(text);
    var select = dropdown.find("select");
    select.val(value).change();
  });
  $(document).on("click", "#filter", function (e) {
    e.preventDefault();
    $(document).find(".filtering").addClass("active");
    // $(".search").toggleClass("active");
    // $(".header .bg").toggleClass("active");
    $("html").addClass("active");
  });

  $(document).on("click", ".hamburger-2", function (e) {
    e.preventDefault();
    $(document).find(".nav-holder").addClass("active");
    $("html").addClass("active");
  });

  $(document).on("click", ".add-item", function (e) {
    e.preventDefault();
    $(document).find(".modal-add").addClass("active");
    $("html").addClass("active");
  });
  $(document).on("click", ".edit-btn", function (e) {
    e.preventDefault();
    $(document).find(".modal-edit").addClass("active");
    $("html").addClass("active");
  });
  $(document).on("click", ".close", function (e) {
    e.preventDefault();
    $(document).find(".filtering").removeClass("active");
    $(document).find(".nav-holder").removeClass("active");
    $(document).find(".modal").removeClass("active");
    $("html").removeClass("active");
  });

  $(document).on("click", ".bg", function (e) {
    e.preventDefault();
    $(document).find(".filtering").removeClass("active");
    $(document).find(".nav-holder").removeClass("active");
    $(document).find(".modal").removeClass("active");
    $("html").removeClass("active");
  });

  $('#search-icon').click(function (event) {
    var formElement = $('.search-part');
    $(formElement).addClass('active');
    $('.search-input').focus();
    event.stopPropagation();
  });

  $(document).click(function (event) {
    var formElement = $('.search-part');
    if (!$(formElement).is(event.target) && $(formElement).has(event.target).length === 0) {
      $(formElement).removeClass('active');
    }
  });

  $(document).keyup(function (e) {
    if (e.key === "Escape") {
      $(document).find(".search-part").removeClass("active");
      $(document).find(".filtering").removeClass("active");
      $(document).find(".nav-holder").removeClass("active");
      $(document).find(".modal").removeClass("active");
      $("html").removeClass("active");
    }
  });

  $(document).ready(function () {
    $("input").on("input", function () {
      if ($(this).val().length > 0) {
        $(this).siblings("label").addClass("active");
      } else {
        $(this).siblings("label").removeClass("active");
      }
    });
  });

  $(document).ready(function () {
    $("textarea").on("input", function () {
      if ($(this).val().length > 0) {
        $(this).siblings("label").addClass("active");
      } else {
        $(this).siblings("label").removeClass("active");
      }
    });
  });
  // $(document).on("click", ".bg", function (e) {
  //   e.preventDefault();
  //   $(".header nav").removeClass("active");
  //   $(document).find(".filtering").toggleClass("active");
  //   $(".header .bg").removeClass("active");
  //   // $("html").removeClass("active");
  //   $(".header .hamburger").toggleClass("active");
  // });
  // $(document).on("click", ".hamburger", function (e) {
  //   e.preventDefault();
  //   $(this).toggleClass("active");
  //   $(".header nav").toggleClass("active");
  //   $(".header .bg").toggleClass("active");
  //   // $("html").toggleClass("active");
  // });




  function initFileUploadForm() {
    // přidává třídu "dragover"
    $('#fileInput').on("dragenter", function (ev) {
      $('.fake-button').addClass('dragover');
    });
    $('#fileInput').on("dragover", function (ev) {
      $('.fake-button').addClass('dragover');
      ev.preventDefault();
    });
    $('#fileInput').on("dragleave", function (ev) {
      $('.fake-button').removeClass('dragover');
    });

    var filesProcessed = {};
    // funkce na drag and drop
    $('#fileInput').bind('drop', function (e) {
      e.preventDefault();
      // získání souboru který byl přidán
      var files = e.originalEvent.dataTransfer.files;
      // zjistí počet přidaných souborů
      var count = $(".thumbnail-container").length;
      // pokud je počet přidaných souborů vyšší než danné číslo, tak vypíše error
      if (files.length + count > 5) {
        $("#error").text("Můžete nahrát maximálně 5 souborů");
        return;
      }
      for (var i = 0; i < files.length; i++) {
        var file = files[i];
        // zkontroluje jestli se jedná o obrázek a jestli nebyl už přidán
        if (file.type.match(/image\/*/) && !filesProcessed[file.name]) {
          filesProcessed[file.name] = true;
          // přečte název souboru jako jeho url
          var reader = new FileReader();
          reader.onload = function (e) {
            // Create a thumbnail preview
            var id = 1;
            var thumbnail = $('<img>').attr('src', e.target.result).attr('alt', 'Thumbnail Preview').attr('id', '' + id);
            id++;
            // vytvoří se jméno osuboru
            var fileName = $('<div>').text(file.name).addClass('file-name');

            var container = $('<div>').addClass('thumbnail-container').append(thumbnail).append(fileName);
            // tlačítko na oddělání
            var removeButton = $('<button>').text('').addClass('remove-button');
            container.append(removeButton);

            // funkce na odstranění souboru
            removeButton.bind('click', function () {
              container.remove();
              var fileInput = $('#fileInput')[0];
              var files = fileInput.files;
              var remainingFiles = [];
              for (var i = 0; i < files.length; i++) {
                var file = files[i];
                if (file.name !== fileName.text()) {
                  s
                  remainingFiles.push(file);
                }
              }
              fileInput.files = remainingFiles;
            });
            $('#fileList').append(container);
          }
          reader.readAsDataURL(file);
        } else {
          $("#error").text("Pouze obrázky jsou povolené");
        }
      }
    });

    //funkce na kliknutí
    $("#fileInput").bind('change', function () {
      var files = this.files;
      var count = $(".thumbnail-container").length;
      //pokud je více než 5 souborů odstraní přebívající
      if (files.length + count > 5) {
        $("#error").text("Můžete nahrát maximálně 5 souborů");
        $('#fileInput').val('');
        // odstraní všechny soubory (nad 5)
        $(".thumbnail-container:gt(4)").remove();
      }
      for (var i = 0; i < files.length; i++) {
        var file = files[i];
        // zkontroluje jestli se jedná o obrázek a jestli nebyl už přidán
        if (file.type.match(/image\/*/) && !filesProcessed[file.name]) {
          // Set the flag for the current file
          filesProcessed[file.name] = true;
          // přečte název souboru jako jeho url
          var reader = new FileReader();
          reader.onload = function (e) {
            // Create a thumbnail preview
            var id = 1;
            var thumbnail = $('<img>').attr('src', e.target.result).attr('alt', 'Thumbnail Preview').attr('id', '' + id);
            id++;
            // vytvoří se jméno osuboru
            var fileName = $('<div>').text(file.name).addClass('file-name');

            // Create a container for the thumbnail and file name
            var container = $('<div>').addClass('thumbnail-container').append(thumbnail).append(fileName);
            // tlačítko na oddělání
            var removeButton = $('<button>').text('').addClass('remove-button');
            container.append(removeButton);
            // funkce na odstranění souboru
            removeButton.bind('click', function () {
              container.remove();
              var fileInput = $('#fileInput')[0];
              var files = fileInput.files;
              var remainingFiles = [];
              for (var i = 0; i < files.length; i++) {
                var file = files[i];
                if (file.name !== fileName.text()) {
                  remainingFiles.push(file);
                }
              }
              fileInput.files = remainingFiles;
            });
            $('#fileList').append(container);
          }
          reader.readAsDataURL(file);
        } else {
          $("#error").text("Pouze obrázky jsou povolené");
        }
      }
    });
  }
  $(document).ready(function () {
    initFileUploadForm();
  });
  $(document).ready(function () {
    $(".fake-button").click(function () {
      $("#fileInput").click();
    });
  });
});
