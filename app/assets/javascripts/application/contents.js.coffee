class @ContentsController
  index: ->
    $(".main-board").width($(window).width())
    $(".main-board").height($(window).height()+ 20)

    $(".main-title").css("padding", $(window).height() * 0.4)
