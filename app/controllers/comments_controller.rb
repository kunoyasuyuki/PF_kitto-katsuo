class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
  end
  
  def create
   @comment = Comment.new(comment_params)
   if @comment.save
    ActionCable.server.broadcast 'comment_channel', content: @comment ,user: @comment.user
   end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, ticket_id: params[:ticket_id])
  end
end
