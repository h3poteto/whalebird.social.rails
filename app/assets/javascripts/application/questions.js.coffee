class @QuestionsController
  index: ->
    $("dt").click ()->
      $this = $(@)
      if $this.next("dd").css("display") == "block"
        $this.next("dd").hide()
      else
        $this.next("dd").show()
