class TrackersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_tracker, only: [:show, :edit, :update, :destroy]

  def new
    @tracker = Tracker.new
  end

  def create
    @tracker = Tracker.new(tracker_params)
    if @tracker.save
      redirect_to '/activities', notice: "Activity successfully assigned to #{@tracker.user_email}"
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
    @trackers = Tracker.all.order("name DESC")
  end

  def edit
  end

  def update
    @activity = Activity.find_by(id: @tracker.activity_id)
    if @tracker.update_attributes(tracker_params) && @tracker.status == 1
      current_user.reward.update_attributes(award: current_user.reward.award + 1)
      redirect_to "/users/#{current_user.id}", notice: "#{@activity.name} completed!"
    elsif @tracker.update_attributes(tracker_params) && @tracker.status != 1
      current_user.reward.update_attributes(award: current_user.reward.award - 1)
      redirect_to "/users/#{current_user.id}", notice: "#{@activity.name} marked incomplete"
    else
      render :edit
    end
  end

  def destroy
    # ???
  end

  private

  def load_tracker
    @tracker = Tracker.find(params[:id])
  end

  def activity_params
    params.require(:tracker).permit(:status, :user_id, :activity_id,
    :user_email, :feedback_id, :contact, :due_date)
  end
end
