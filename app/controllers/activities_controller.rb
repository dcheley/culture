class ActivitiesController < ApplicationController
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

  def activity_params
    params.require(:activity).permit(:name, :description, :status, :task_one,
    :task_two, :task_three, :task_four, :task_five, :reward_id)
  end
end
