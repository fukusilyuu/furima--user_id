class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  before_action :set_edit_destroy, only: [:edit, :destroy]

  def index
    @items = Item.includes(:user).order('created_at DESC')
    @q = Item.ransack(params[:q])
    @items = @q.result
    
  end

  def new
    @item = Item.new
   
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
    unless @item.order.nil?
      redirect_to root_path
    end
  end

  def update
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def search
    return nil if params[:keyword] == ""
    item = Item.where(['name LIKE ?', "%#{:keyword}%"])
    render json:{ keyword: item }
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :price, :explanation, :genre_id, :quality_id, :payment_id, :prefecture_id, :days_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_edit_destroy
    if current_user.id != @item.user.id
      redirect_to root_path
    end
  end
end
