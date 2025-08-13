class OrdersController < ApplicationController
  before_action :set_order, only: [:index, :create]
  require 'payjp'
  def index
    gon.public_key = ENV["PAYJP_PUBLIC_KEY"]
    @order = OrderAddress.new
  end

  def create
    @order = OrderAddress.new(order_params)
    if @order.valid?
      pay_order
      @order.save
      return redirect_to root_path
    else
      gon.public_key = ENV["PAYJP_PUBLIC_KEY"]
      render 'index', status: :unprocessable_entity
    end
  end

  private
  def set_order
    @item = Item.find(params[:item_id])
  end

  def order_params
    params.require(:order_address).permit(:postal_code, :prefecture_id, :city, :house_number, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def pay_order
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price,        # 商品の値段
      card: order_params[:token], # カードトークン
      currency: 'jpy'             # 通貨の種類（日本円）
    )
  end
end
