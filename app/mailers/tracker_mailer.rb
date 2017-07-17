class TrackerMailer < ApplicationMailer
  def employee_activity_email(user, tracker)
    @user = user
    @tracker = tracker
    @url = 'http://shape-culture.herokuapp.com'
    mail(to: @user.email, subject: 'New Shape Activity')
  end
end
