class RewardsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_rewards, only: [:new, :create, :index]
  before_action :load_reward, only: [:edit, :update, :destroy]

  def new
    @reward = Reward.new
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

  def edit
  end

  def update
    if @reward.update_attributes(reward_params)
      redirect_to '/rewards', notice: "#{@reward.name} successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @reward.destroy
    redirect_to '/rewards', notice: "#{@reward.name} successfully deleted"
  end

  private

  def load_reward
    @reward = Reward.find(params[:id])
  end

  def load_rewards
    @rewards = Reward.all
  end

  def reward_params
    params.require(:reward).permit(:name, :award, :progress, :user_id)
  end
end
