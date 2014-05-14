# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#start').on 'click', ->
    $.ajax
      async: false
      type: "POST"
      url: "/terms/start"
      success: ->
        location.reload()

  $('#stop').on 'click', ->
    $.ajax
      async: false
      type: "POST"
      url: "/terms/stop"
      success: ->
        location.reload()

