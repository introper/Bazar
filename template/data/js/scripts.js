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
    // Bind a "dragover" event handler to the file input field
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
    // Bind a "drop" event handler to the file input field
    var filesProcessed = {};

    $('#fileInput').bind('drop', function (e) {
      // Get the files that were dropped
      var files = e.originalEvent.dataTransfer.files;
      // Loop through the files
      for (var i = 0; i < files.length; i++) {
        // Get the current file
        var file = files[i];
        // Check if the file is an image and if it has not been processed yet
        if (file.type.match(/image\/*/) && !filesProcessed[file.name]) {
          // Set the flag for the current file
          filesProcessed[file.name] = true;
          // Read the file as a data URL
          var reader = new FileReader();
          reader.onload = function (e) {
            // Create a thumbnail preview
            var thumbnail = $('<img>').attr('src', e.target.result).attr('alt', 'Thumbnail Preview');
            // Create a file name label
            var fileName = $('<div>').text(file.name).addClass('file-name');
            // Create a container for the thumbnail and file name
            var container = $('<div>').addClass('thumbnail-container').append(thumbnail).append(fileName);
            // Create a remove button for each uploaded file
            var removeButton = $('<button>').text('').addClass('remove-button');
            // Append the remove button to the container
            container.append(removeButton);

            // Bind a "click" event handler to the remove button
            removeButton.bind('click', function () {
              // Remove the container from the file list
              container.remove();
              // Get the file input field
              var fileInput = $('#fileInput')[0];
              // Get the selected files
              var files = fileInput.files;
              // Create a new array to store the remaining files
              var remainingFiles = [];
              // Loop through the selected files
              for (var i = 0; i < files.length; i++) {
                // Get the current file
                var file = files[i];
                // Check if the current file is not the one that was removed
                if (file.name !== fileName.text()) {
                  // Add the current file to the array of remaining files
                  remainingFiles.push(file);
                }
              }
              // Update the file input field with the remaining files
              fileInput.files = remainingFiles;
            });
            // Append the container to the file list
            $('#fileList').append(container);
          }
          reader.readAsDataURL(file);
        }
      }
    });

    $("#fileInput").bind('change', function () {
      // Get the files that were selected
      var files = this.files;
      // Loop through the files

      var count = $(".thumbnail-container").length;
      // Check if the number of files exceeds the maximum allowed
      if (files.length + count > 5) {
        // The number of files exceeds the maximum allowed, so display an error message
        $("#error").text("Error: You can only upload a maximum of 5 files");
        // Clear the file input field
        $('#fileInput').val('');
        // remove all files above 5
        $(".thumbnail-container:gt(4)").remove();
      }

      for (var i = 0; i < files.length; i++) {
        // Get the current file
        var file = files[i];
        // Check if the file is an image and if it has not been processed yet
        if (file.type.match(/image\/*/) && !filesProcessed[file.name]) {
          // Set the flag for the current file
          filesProcessed[file.name] = true;
          // Read the file as a data URL
          var reader = new FileReader();
          reader.onload = function (e) {
            // Create a thumbnail preview
            var thumbnail = $('<img>').attr('src', e.target.result).attr('alt', 'Thumbnail Preview');
            // Create a file name label
            var fileName = $('<div>').text(file.name).addClass('file-name');
            // Create a container for the thumbnail and file name
            var container = $('<div>').addClass('thumbnail-container').append(thumbnail).append(fileName);
            // Create a remove button for each uploaded file
            var removeButton = $('<button>').text('').addClass('remove-button');
            // Append the remove button to the container
            container.append(removeButton);

            // Bind a "click" event handler to the remove button
            removeButton.bind('click', function () {
              // Remove the container from the file list
              container.remove();
              // Get the file input field
              var fileInput = $('#fileInput')[0];
              // Get the selected files
              var files = fileInput.files;
              // Create a new array to store the remaining files
              var remainingFiles = [];
              // Loop through the selected files
              for (var i = 0; i < files.length; i++) {
                // Get the current file
                var file = files[i];
                // Check if the current file is not the one that was removed
                if (file.name !== fileName.text()) {
                  // Add the current file to the array of remaining files
                  remainingFiles.push(file);
                }
              }
              // Update the file input field with the remaining files
              fileInput.files = remainingFiles;
            });
            // Append the container to the file list
            $('#fileList').append(container);
          }
          reader.readAsDataURL(file);
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
