module Messages
  class Create
    def self.call(params)
      message = create_message(params)
      MessageBroadcastJob.perform_later(message)
    end

    private

    def self.create_message(params)
      Message.create!(params.merge(user_id: 2, chatroom_id: 1))
    end
  end
end
