class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reward = Reward.find_by(user_id: @user.id)
    @activities = Activity.where(reward_id: @user.email)
  end
end
