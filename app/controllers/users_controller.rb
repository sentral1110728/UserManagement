class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :asc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to action: :index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to action: :index
    else
      binding.pry
      redirect_to action: :index
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
