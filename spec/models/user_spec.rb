require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_presence_of :password }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_uniqueness_of(:username).case_insensitive }

  it { is_expected.to have_many :chatroom_users }
  it { is_expected.to have_many(:chatrooms).through :chatroom_users }
end
