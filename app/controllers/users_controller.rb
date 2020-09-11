class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    unless @user.id == current_user.id
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end



  def edit
  end 

  def update
    current_user.update(user_params)
    redirect_to root_path
  end
   
  def destroy
   @user = User.find(params[:id]) 
   @user.destroy
   flash[:success] = '退会が完了しました'
   redirect_to :root
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :family_name, :last_name, :family_name_kana, :last_name_kana, :birthday, :student_division_id,)
  end
end
