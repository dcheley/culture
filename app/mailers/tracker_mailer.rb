class TrackerMailer < ApplicationMailer
  def employee_activity_email(tracker)
    @tracker = tracker
    @user = tracker.user
    @admin = @user.administrator

    @url = 'http://shape-culture.herokuapp.com'
    mail(to: @user.email, subject: 'New Shape Activity')
  end
end
