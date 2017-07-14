class TrackersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_tracker, only: [:show, :edit, :update, :destroy]
  before_action :load_tracked_activity, only: [:show, :edit, :update]

  def new
    @tracker = Tracker.new
    @activity = Activity.new
  end

  def create
    @tracker = Tracker.new(tracker_params)
    @activity = Activity.new
    if @tracker.save
      redirect_to '/trackers', notice: "Activity successfully assigned to #{@tracker.user_email}"
    else
      render :new
    end
  end

  def show
    if @tracker.feedback == nil
      @feedback = Feedback.new
    else
      @feedback = @tracker.feedback
    end
  end

  def index
    if Tracker.find_by(user_email: current_user.new_hire_email) != nil
      @trackers = Tracker.where(user_email: current_user.new_hire_email).order("updated_at DESC")
    end
    @activities = Activity.where(user_id: current_user.id).order("name DESC")
    @activity = Activity.new
    @activity.trackers.build
  end

  def edit
  end

  def update
    if current_user.admin != 1 && @tracker.update_attributes(tracker_params) && @tracker.status == 1
      current_user.reward.update_attributes(award: current_user.reward.award + 1)
      redirect_to "/users/#{current_user.id}", notice: "#{@activity.name} completed!"
    elsif current_user.admin != 1 && @tracker.update_attributes(tracker_params) && @tracker.status != 1
      current_user.reward.update_attributes(award: current_user.reward.award - 1)
      redirect_to "/users/#{current_user.id}", notice: "#{@activity.name} marked incomplete"
    elsif current_user.admin == 1 && @tracker.update_attributes(tracker_params)
      redirect_to "/trackers", notice: "#{@activity.name} successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @tracker.destroy
    redirect_to trackers_url, notice: "#{@tracker.user_email}'s activity successfully deleted"
  end

  private

  def load_tracker
    @tracker = Tracker.find(params[:id])
  end

  def load_tracked_activity
    @activity = Activity.find_by(id: @tracker.activity_id)
  end

  def tracker_params
    params.require(:tracker).permit(:status, :user_id, :activity_id,
    :user_email, :feedback_id, :contact, :due_date)
  end
end
