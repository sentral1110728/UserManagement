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


  private
  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end
end
