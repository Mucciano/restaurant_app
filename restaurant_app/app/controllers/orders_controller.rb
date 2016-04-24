class OrdersController < ApplicationController
  # create
  include SessionsHelper

  def new
    @user = current_user
    @orders   = Order.new
    @item     = Item.all
    @parties  = Party.where user_id: @user.id
  end

  def create
    new_order = Order.create order_params
    redirect_to profile_path
  end

  # read
  def show
    @order = Order.find params[:id]
  end

  def index
    @order = Order.all
  end

  # update
  def edit
    @order = Order.find params[:id]
    @user = current_user
    @item     = Item.all
    @parties = Party.where user_id: @user.id
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    redirect_to profile_path
  end

  # destroy
  def destroy
    Order.destroy params[:id]
    redirect_to profile_path
  end

  private

  def order_params
    params.require(:order).permit(:party_id, :item_id)
  end

end
