class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reward = Reward.where(user_id: @user.id)
  end
end
