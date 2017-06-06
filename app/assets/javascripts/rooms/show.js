const roomsShow = (() => {

  function init() {
    _bindFunctions()
    scrollToMessageBottom()
  }

  function _bindFunctions() {
    $(document).on('keypress', '[data-behavior~=room_speaker]', _sendMessage)
  }

  function _sendMessage(e) {
    if (e.keyCode === 13) {
      App.room.speak({ content: e.target.value })
      event.target.value = ''
      event.preventDefault()
    }
  }

  function addMessage(data) {
    $('#messages').append(data.message)
  }

  function scrollToMessageBottom() {
    let $target = $('.current-chat-area')
    $target.animate({ scrollTop: $target.prop("scrollHeight") });
  }

  return {
    init: init,
    addMessage: addMessage,
    scrollToMessageBottom: scrollToMessageBottom
  }
})();
