class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  before_action :set_item, only: [:show, :edit]
  
  def index
    @items = Item.all.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
     redirect_to root_path
    else
      render :new
    end  
  end

  def edit
    if @item.user_id == current_user.id
   else
    redirect_to root_path
   end
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    if @item.update(item_params)
      redirect_to item_path(item_params)
    else
     render 'edit'
    end
  end

  def show
  end

  private

  def item_params
   params.require(:item).permit(:image, :name, :description, :category_id, :item_status_id, :shipping_cost_id, :prefecture_id,:shipping_date_id, :price).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end

