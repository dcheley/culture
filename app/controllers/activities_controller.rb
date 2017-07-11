class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :load_activity, only: [:show, :edit, :update, :destroy]

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

  def show
    if @activity.feedback == nil
      @feedback = Feedback.new
    else
      @feedback = @activity.feedback
    end
  end

  def index
    @activities = Activity.all.order("name DESC")
  end

  def edit
  end

  def update
    if @activity.update_attributes(activity_params) && current_user.admin == 1
      redirect_to '/activities', notice: "#{@activity.name} successfully updated"
    elsif @activity.update_attributes(activity_params) && @activity.status == 1
      current_user.reward.update_attributes(award: current_user.reward.award + @activity.prize)
      redirect_to "/users/#{current_user.id}", notice: "#{@activity.name} completed! You've been awarded #{@activity.prize}"
    elsif @activity.update_attributes(activity_params) && @activity.status != 1
      current_user.reward.update_attributes(award: current_user.reward.award - @activity.prize)
      redirect_to "/users/#{current_user.id}", notice: "#{@activity.name} marked incomplete"
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
    :task_two, :task_three, :task_four, :task_five, :user_id, :feedback_id,
    :prize, :contact, :due_date)
  end
end
