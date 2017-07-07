class FeedbacksController < ApplicationController
  def create
    @activity = Activity.find_by(user_id: current_user.email)
    @feedback = Feedback.new(feedback_params)
    respond_to do |format|
      if @feedback.save
        @activity.update_attributes(feedback_id: @feedback.id)
        format.html { redirect_to activity_url(@activity), notice:"Feedback sent" }
        format.json { render json: @activity, status: :created, location: @activity }
      else
        format.html { render activity_url(@activity) }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @activity = Activity.find(params[:activity_id])
    @feedback = @activity.feedback
    respond_to do |format|
      if @feedback.update_attributes(feedback_params)
        format.html { redirect_to activity_url(@activity), notice:"Feedback updated" }
        format.json { render json: @activity, status: :updated, location: @activity }
      else
        format.html { render activity_url(@activity) }
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
