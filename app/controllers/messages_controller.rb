class MessagesController < ApplicationController
before_action :authenticate_user!

  def index
    @messages = Message.where(room_id: params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])
    # @message = Message.new(user_id: params[:user_id], room_id: params[:room_id] , content:params[:content]) 
    @message = Message.new(user_id: current_user.id, room_id: params[:room_id] , content:params[:content]) 
    if @message.save
      redirect_to user_room_messages_path(current_user.id)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end

end
