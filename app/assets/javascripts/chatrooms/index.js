const chatroomsIndex = (() => {

  function init() {
    _bindFunctions()
    scrollToMessageBottom()
  }

  function _bindFunctions() {
    $(document).on('keypress', '[data-behavior~=room_speaker]', _sendMessage)
  }

  function _sendMessage(e) {
    if (e.keyCode === 13) {
      App.chatrooms.speak(_buildObject(e))
      e.target.value = ''
      e.preventDefault()
    }
  }

  function _buildObject(e) {
    return {
      content: e.target.value,
      chatroom_id: $('#messages').data().chatroom
    }
  }

  function addMessage(data) {
    $('#messages').append(data.message)
  }

  function scrollToMessageBottom(seconds = 500) {
    let $target = $('.chatroomsIndex__messagesBody')
    $target.animate({ scrollTop: $target.prop("scrollHeight")}, seconds);
  }

  return {
    init: init,
    addMessage: addMessage,
    scrollToMessageBottom: scrollToMessageBottom
  }
})();
