const roomsShow = (() => {

  function init() {
    _bindFunctions()
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

  return {
    init: init
  }
})();
