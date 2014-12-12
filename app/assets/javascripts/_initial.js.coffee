#= require underscore.string
$ ->
  $body = $("body")
  controller = _.str.classify($body.data("controller") + "-controller")
  action = $body.data("action")
  if window[controller]
    activeController = new window[controller]
    if activeController && $.isFunction(activeController[action])
      activeController[action]()
