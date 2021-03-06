require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to have_many :chatroom_users }
  it { is_expected.to have_many(:users).through :chatroom_users }
end
