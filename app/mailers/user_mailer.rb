class UserMailer < ApplicationMailer
  def new_hire_email(user)
    @user = user
    @admin = user.administrator

    @url = 'http://shape-culture.herokuapp.com'
    mail( to: @user.email, subject: 'Welcome from Shape!')
  end
end
