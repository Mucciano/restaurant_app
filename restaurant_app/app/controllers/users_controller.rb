class UsersController < ApplicationController

    include SessionsHelper
    before_action :authenticate!, only: [:profile]


  def log_in

  end

  def profile
    @user = current_user
    @items = Item.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to log_in_path
  end


  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end


end
