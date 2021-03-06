class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_activity, only: [:show, :edit, :update]

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.id = Activity.last.id + 1
    @activity.admin_description = @activity.new_hire_description
    if @activity.save
      redirect_to home_url, notice: "#{@activity.name} successfully created"
    else
      render :new
    end
  end

  def show
    @tracker = Tracker.new
    @new_hire = current_user.employees.find_by(email: current_user.new_hire_email)
  end

  def edit
  end

  def update
    if @activity.update_attributes(activity_params) && current_user.admin == 1
      redirect_to home_url, notice: "#{@activity.name} successfully updated"
    else
      render :edit
    end
  end

  private

  def load_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :admin_description,
    :new_hire_description, :task_one, :task_two, :task_three, :task_four,
    :task_five, :task_six, :user_id, :content_id, :prize, :email_instructions)
  end
end
