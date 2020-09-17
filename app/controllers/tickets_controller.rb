class TicketsController < ApplicationController

  before_action :set_item, only: [:edit, :show, :update, :destroy]
  before_action :search_ticket, only: [:index, :search]

  def index
      @tickets = Ticket.includes(:user).order('created_at DESC')
      @tickets = Ticket.all 
      set_ticket_column  
  end


  def search
    @results = @p.result # 検索条件にマッチした商品の情報を取得
  end

  def new
    @ticket = Ticket.new
    @categories = Category.all
  end

  
  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to '/'
    else
      render 'tickets/new'
    end
  end

  def show
    @comments = Comment.all 
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to ticket_path(@ticket)
    else
      render 'edit'
    end
  end

  def destroy
    if @ticket.destroy
      redirect_to root_path
    else
      redirect_to ticket_path(@ticket.id)
    end
  end
            
  private

  def ticket_params
    params.require(:ticket).permit(:name,:image, :introduction,:category_id,:price).merge(user_id: current_user.id)
  end
  
  def set_item
     @ticket = Ticket.find(params[:id])
  end
  
  
  def update_params
      params.require(:ticket).permit(:name,:image, :introduction, :category_id)[:image_url, :id]
  end

  
  def search_ticket
    @p = Ticket.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_ticket_column
   @ticket_name = Ticket.select("name").distinct  # 重複なくnameカラムのデータを取り出す
   @ticket_category_id = Ticket.select("category_id").distinct 
  end
  
end
