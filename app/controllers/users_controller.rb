class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:mmmh]="You made it"
      redirect_to @user
    else 
      render 'new'
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end
  def edit
    @user= User.find(params[:id])
  end
  def update
    @user.update_attributes
    redirect_to @user
  end


  private
  def user_params
    params.require(:user).permit(:jina, :pepe, :password, :password_confirmation)
  end
end

