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
            // var fileName = $('<div>').text(file.name).addClass('file-name');

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
            // var fileName = $('<div>').text(file.name).addClass('file-name');

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
