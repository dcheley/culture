class TrackerMailer < ApplicationMailer
  def employee_activity_email(tracker)
    @tracker = tracker
    @new_hire = tracker.user
    @admin = @new_hire.administrator
    @employees = [@tracker.contact_one, @tracker.contact_two, @tracker.contact_three, @tracker.contact_four, @tracker.contact_five]

    @url = 'http://shape-culture.herokuapp.com'
    mail(
      to: @employees,
      subject: "#{@admin.organization} - New Hire"
    )
  end
end
