class ChatroomsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def index
    @messages = Message.all.order(created_at: :asc)
  end

  def show
    @messages = get_messages
  end

  private

  def get_messages
    Message.where(
      chatroom_id: params[:id]
    ).order(created_at: :asc)
  end
end
