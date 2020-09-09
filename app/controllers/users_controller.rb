class UsersController < ApplicationController
  
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
