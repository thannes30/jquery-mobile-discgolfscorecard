class UsersController < ApplicationController

  def index
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
