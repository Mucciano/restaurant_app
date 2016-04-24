class PartiesController < ApplicationController
  include SessionsHelper

  def index
    @user = current_user
    @parties = Party.where user_id: @user.id
    @orders = Order.all

  end

  def new
    @party = Party.new
  end

  def create
    party = Party.create party_params.merge({user_id: current_user.id})
    redirect_to profile_path
  end

  def edit
    @party = Party.find params[:id]
  end

  def show
    @party = Party.find params[:id]
  end

  def update
    party = Party.find params[:id]
    party.update party_params.merge({user_id: current_user.id})
    redirect_to party_path(party.id)
  end

  private

  def party_params
    params.require(:party).permit(:reservation_name, :size, :table, :user_id)
  end
end
