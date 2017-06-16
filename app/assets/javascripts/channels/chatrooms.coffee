App.chatrooms = App.cable.subscriptions.create "ChatroomsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) -> # Called when there's incoming data on the websocket for this channel
    chatroomsIndex.addMessage(data)
    chatroomsIndex.scrollToMessageBottom()

  speak: (data) ->
    @perform 'speak', message: data
