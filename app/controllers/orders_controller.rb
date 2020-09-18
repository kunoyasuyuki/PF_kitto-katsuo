class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  
  def index
    @ticket = Ticket.find(params[:ticket_id])
    if user_signed_in? && @ticket.user_id != current_user.id
     else
      redirect_to root_path
    end
  end

  def new
    @order = Order.new
    if current_user.student_division_id == 2
      @order.price = 1000 
    else
      @order.price = 1500 
    end
  end

  def create
    # params[:order][:user_id] = current_user.id
    @order = Order.new(order_params)

    if @order.valid?
      pay_item
      @order.save
      redirect_to root_path
    else
      @ticket = Ticket.find(params[:tikcet_id])
      render :index
     end
   end

  def save
    # オーダー情報を保存し、「order」という変数にいれている。
    order = Order.create(user_id: user_id, ticket_id: ticket_id)
  end

  def pay_item
    @order = Order.new(order_params)
    if current_user.student_division_id == 2
      @order.price = 1000 
      @order.save
    else
      @order.price = 1500 
      @order.save
    end
    @ticket = Ticket.find(params[:ticket_id])
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @order.price, # 商品の値段
      card: params[:token], # カードトークン
      currency: 'jpy' # 通貨の種類(日本円)
    )
  end

  private

  def order_params
    params.permit(:ticket_id,:price,:token).merge(user_id: current_user.id)
  end

end
