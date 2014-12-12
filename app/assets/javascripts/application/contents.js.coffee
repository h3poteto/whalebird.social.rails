class @ContentsController
  index: ->
    $(".main-board").width($(window).width())
    $(".main-board").height($(window).height() - parseInt($(".main-board").css("margin-top")))

    $(".main-title").css("padding", $(window).height() * 0.4)
    $(window).resize () ->
      $(".main-board").width($(window).width())
      $(".main-board").height($(window).height() - parseInt($(".main-board").css("margin-top")))

      $(".main-title").css("padding", $(window).height() * 0.4)
