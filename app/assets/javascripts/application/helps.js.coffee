class @HelpsController
  index: ->
    originalPos = $(".sidebar").offset().top - parseInt($(".page").css("margin-top"))
    $(window).scroll ()->
      scrollPos = $(this).scrollTop()
      if scrollPos > originalPos
        if !$(".sidebar").hasClass("fixed")
          $(".sidebar").addClass("fixed")
      else
        if $(".sidebar").hasClass("fixed")
          $(".sidebar").removeClass("fixed")
