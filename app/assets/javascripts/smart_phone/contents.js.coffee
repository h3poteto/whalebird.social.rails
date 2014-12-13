class @ContentsController
  index: ->
    $(".main-board").width($(window).width())
    $(".main-board").height($(window).height())

    #$(".main-title").css("padding-top", $(window).height() * 0.4)
    $(window).resize () ->
      $(".main-board").width($(window).width())
      $(".main-board").height($(window).height())

      $(".main-title").css("padding-top", $(window).height() * 0.4)
