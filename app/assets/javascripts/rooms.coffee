# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->

  disconnected: ->

  received: (data) -> # Called when there's incoming data on the websocket for this channel
    $('#messages').append data.message

  speak: (message) ->
    @perform 'speak', message: message
