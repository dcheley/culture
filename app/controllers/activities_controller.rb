class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_activity, only: [:show, :edit, :update, :destroy]

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.id = Activity.last.id + 1
    if @activity.save
      redirect_to '/trackers', notice: "#{@activity.name} successfully created"
    else
      render :new
    end
  end

  def show
    @tracker = Tracker.new
  end

  def edit
  end

  def update
    if @activity.update_attributes(activity_params) && current_user.admin == 1
      redirect_to '/trackers', notice: "#{@activity.name} successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to '/trackers', notice: "#{@activity.name} successfully deleted"
  end

  private

  def load_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :task_one, :task_two,
    :task_three, :task_four, :task_five, :user_id, :content_id, :prize)
  end
end
