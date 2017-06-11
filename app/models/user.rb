class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username
  validates :username, :email, uniqueness: { case_sensitive: false }

  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
end
