class FeedbacksController < ApplicationController
  def create
    @tracker = Tracker.find_by(user_email: current_user.email)
    @feedback = Feedback.new(feedback_params)
    respond_to do |format|
      if @feedback.save
        @tracker.update_attributes(feedback_id: @feedback.id)
        format.html { redirect_to activity_url(@tracker), notice:"Feedback sent" }
        format.json { render json: @tracker, status: :created, location: @tracker }
      else
        format.html { render tracker_url(@tracker) }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tracker = Tracker.find(params[:tracker_id])
    @feedback = @tracker.feedback
    respond_to do |format|
      if @feedback.update_attributes(feedback_params)
        format.html { redirect_to tracker_url(@tracker), notice:"Feedback updated" }
        format.json { render json: @tracker, status: :updated, location: @tracker }
      else
        format.html { render tracker_url(@tracker) }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:first_takeaway, :second_takeaway,
    :third_takeaway, :fourth_takeaway, :fifth_takeaway)
  end
end
