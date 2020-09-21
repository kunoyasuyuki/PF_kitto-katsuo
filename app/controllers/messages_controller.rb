class MessagesController < ApplicationController
before_action :authenticate_user!

  def index
    @messages = Message.where(room_id: params[:room_id])
    # @room = Room.find(params[:room_id])
    # @messages = @room.messages.includes(:user)
  end

  def create
    # @room = Room.find(params[:room_id])
    # @message = @room.messages.new(message_params)
    @message = Message.new(user_id: params[:user_id], room_id: params[:room_id] , content:params[:content]) 
    if @message.save
      redirect_to user_room_messages_path(current_user.id)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end

  private

  # def message_params
  #   params.require(:message).permit(:content).merge(user_id: current_user.id)
  # end

end
