class TrackerMailer < ApplicationMailer
  def employee_activity_email(tracker)
    @tracker = tracker
    @new_hire = tracker.user
    @admin = @new_hire.administrator
    @employees = [@tracker.contact_one, @tracker.contact_two]

    @url = 'http://shape-culture.herokuapp.com'
    mail(
      to: @employees,
      subject: 'New Shape Activity'
    )
  end
end
