class SearchesController < ApplicationController
  before_action :search_ticket, only: [:index, :search]
  
  def index
    @tickets = Ticket.all  # 全商品の情報を取得
    set_ticket_column  

  end

  def search
    @results = @p.result # 検索条件にマッチした商品の情報を取得
  end

 private
 
  def search_ticket
    @p = Ticket.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_ticket_column
   @ticket_name = Ticket.select("name").distinct  # 重複なくnameカラムのデータを取り出す
   @ticket_category_id = Ticket.select("category_id").distinct 
  end
  
end