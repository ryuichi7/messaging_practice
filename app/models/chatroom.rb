class Chatroom < ApplicationRecord
  has_many :chatroom_users
  has_many :users, through: :chatroom_users
  has_many :messages

  validates_presence_of :name
  validates :name, uniqueness: { case_sensitive: false }
end
