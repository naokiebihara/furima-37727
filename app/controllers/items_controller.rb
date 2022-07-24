class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  
  
  def index
   # @items = Item.includes(:user).order('created_at DESC')
  end
end
