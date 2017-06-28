class RewardsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_rewards, only: [:new, :index]

  def new
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save && @reward.user_id != nil
      redirect_to user_url(current_user), notice: 'Gift card chosen, view your current progress below'
    elsif @reward.save != true && @reward.user_id != nil
      flash[:alert] = "You've already chosen a gift card, click below to view your profile"
      render :new
    elsif @reward.save && @reward.user_id == nil
      redirect_to '/rewards', notice: "Reward successfully created"
    else
      render :new
    end
  end

  def index
  end

  private

  def load_rewards
    @reward = Reward.all
  end

  def reward_params
    params.require(:reward).permit(:name, :award, :progress, :user_id)
  end
end
