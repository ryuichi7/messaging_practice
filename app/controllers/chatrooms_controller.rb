class ChatroomsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def index
  end

  def show
    @messages = Chatroom.find(params[:id]).messages
  end
end
