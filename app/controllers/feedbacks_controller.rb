class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      redirect_to user_url(current_user), notice:"Feedback successfully sent"
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:first_takeaway, :second_takeaway,
    :third_takeaway, :fourth_takeaway, :fifth_takeaway)
  end
end
