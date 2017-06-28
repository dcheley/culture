class RewardsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save
      redirect_to user_url(current_user), notice: 'Gift card chosen, view your current progress below'
    else
      flash[:alert] = "You've already chosen a gift card, click below to view your profile"
      render :new
    end
  end

  private

  def load_reward
    @reward = Reward.find(params[:id])
  end

  def reward_params
    params.require(:reward).permit(:name, :award, :progress, :user_id)
  end
end
