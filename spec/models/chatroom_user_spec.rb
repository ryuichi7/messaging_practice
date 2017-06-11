require 'rails_helper'

RSpec.describe ChatroomUser, type: :model do
  it { is_expected.to validate_presence_of :user }
  it { is_expected.to validate_presence_of :chatroom }
  it { is_expected.to belong_to :chatroom }
  it { is_expected.to belong_to :user }
end
