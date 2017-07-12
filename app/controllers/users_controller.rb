class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to activities_url, notice: 'New hire registered, assign activities below'
    else
      render :home
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reward = @user.reward
    @activities = @user.activities
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
