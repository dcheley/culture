class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_activity, only: [:new, :edit]

  def new
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def load_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :status, :task_one,
    :task_two, :task_three, :task_four, :task_five, :reward_id)
  end
end
