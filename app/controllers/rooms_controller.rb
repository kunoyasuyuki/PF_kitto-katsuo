class RoomsController < ApplicationController
before_action :authenticate_user!

 def index 
 end

 def new
  @room = Room.new
 end

  def create
    @room = Room.new(room_params)
    if @room.save
      RoomUsers.create(user_id: current_user.id, room_id: @room.id)
      redirect_to  messages_path
    else
      render :new
    end
  end

  private
  def room_params
    params.require(:room).permit(:name,:ticket_id)
  end
end