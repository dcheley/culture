class TrackersController < ApplicationController
  before_action :authenticate_user!
  before_action :load_tracker, only: [:show, :edit, :update, :destroy]

  def create
    @tracker = Tracker.new(tracker_params)
    @activity = Activity.find_by(params[:activity_id])
    @user = @tracker.user
    respond_to do |format|
      if @tracker.save
        TrackerMailer.employee_activity_email(@tracker).deliver_later
        format.html { redirect_to(home_url, notice: "Activity successfully assigned to #{@tracker.user.name}") }
        format.json { render json: home_url, status: :created, location: home_url }
      else
        format.html { render 'activities/show' }
        format.json { render json: @tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    if @tracker.feedback == nil
      @feedback = Feedback.new
    else
      @feedback = @tracker.feedback
    end
  end

  def edit
    @new_hire = @tracker.user
  end

  def update
    @user = User.find_by(params[:user_id])
    respond_to do |format|
      if current_user.admin != 1 && @tracker.update_attributes(tracker_params) && @tracker.status == 1
        current_user.reward.update_attributes(award: current_user.reward.award + 1)
        format.html { redirect_to(user_url(@user), notice: "#{@tracker.activity.name} completed!") }
        format.json { render json: @user, status: :updated, location: @user }
      elsif current_user.admin != 1 && @tracker.update_attributes(tracker_params) && @tracker.status != 1
        current_user.reward.update_attributes(award: current_user.reward.award - 1)
        format.html { redirect_to user_url(@user), notice: "#{@tracker.activity.name} marked incomplete" }
        format.json { render json: @user, status: :updated, location: @user }
      elsif current_user.admin == 1 && @tracker.update_attributes(tracker_params)
        TrackerMailer.employee_activity_email(@tracker).deliver_later
        format.html { redirect_to(home_url, notice: "#{@tracker.activity.name} successfully updated") }
        format.json { render json: home_url, status: :updated, location: home_url }
      else
        format.html { render :edit }
        format.json { render json: @tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tracker.destroy
    redirect_to home_url, notice: "#{@tracker.user_email}'s activity successfully deleted"
  end

  private

  def load_tracker
    @tracker = Tracker.find(params[:id])
  end

  def tracker_params
    params.require(:tracker).permit(:status, :user_id, :activity_id,:user_email,
     :feedback_id, :contact_one, :contact_two, :contact_three, :contact_four,
     :contact_five, :due_date, :question_one, :question_two, :question_three,
     :question_four, :question_five)
  end
end
