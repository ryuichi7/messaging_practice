class ChatChannel < ApplicationCable::Channel
  def subscribed
    current_user.chatrooms.each do |chatroom|
      stream_from "chat:#{chatroom.id}"
    end
    logger.add_tags
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    binding.pry
    Messages::Create.call(data['message'])
  end
end
