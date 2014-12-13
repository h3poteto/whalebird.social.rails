class @QuestionsController
  index: ->
    $("dt").on "touchend", ()->
      $this = $(@)
      if $this.next("dd").css("display") == "block"
        $this.next("dd").hide()
      else
        $this.next("dd").show()
