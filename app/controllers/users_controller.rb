class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    @users = User.all
  end
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reward = @user.reward
    @activities = @user.activities
  end
end
