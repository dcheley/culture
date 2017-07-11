class UserMailer < ApplicationMailer
  default from: 'notifications@shape.com'

  def employee_email(user)
    @user = user
    @url = 'http://shape-culture.herokuapp.com'
    mail(to: @user.email, subject: 'Shape Notification')
  end
end
