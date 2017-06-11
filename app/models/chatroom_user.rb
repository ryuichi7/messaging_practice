class ChatroomUser < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  validates_presence_of :user, :chatroom
end
