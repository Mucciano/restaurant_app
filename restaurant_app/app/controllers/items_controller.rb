class ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end

  def create
    item = Item.create item_params
    redirect_to profile_path
  end

  def edit
    @item = Item.find params[:id]
  end

  def show
    @item = Item.find params[:id]
  end

  def update
    item = Item.find params[:id]
    item.update item_params
    redirect_to profile_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :dietary_rest)
  end
end
