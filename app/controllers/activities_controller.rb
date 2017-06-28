class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_activity, only: [:edit, :update, :destroy]

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to '/activities', notice: "#{@activity.name} successfully created"
    else
      render :new
    end
  end

  def index
    @activities = Activity.all.order("name DESC")
  end

  def edit
  end

  def update
    if @activity.update_attributes(activity_params)
      redirect_to '/activities', notice: "#{@activity.name} successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to '/activities', notice: "#{@activity.name} successfully deleted"
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
