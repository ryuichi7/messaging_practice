class ChatRoomsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    respond_to :js
  end
end
