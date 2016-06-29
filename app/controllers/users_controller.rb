class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
    else 
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:jina, :pepe, :password, :password_confirmation)
  end
end

