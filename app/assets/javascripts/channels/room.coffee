App.room = App.cable.subscriptions.create channel: "RoomChannel", room: '',
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) -> # Called when there's incoming data on the websocket for this channel
    roomsShow.addMessage(data)
    roomsShow.scrollToMessageBottom()

  speak: (message) ->
    @perform 'speak', message: message
