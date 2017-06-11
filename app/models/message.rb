class Message < ApplicationRecord
  validates_presence_of :content, :chatroom, :user

  belongs_to :user
  belongs_to :chatroom
end
