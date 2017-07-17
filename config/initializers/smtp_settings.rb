ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => "587",
    :domain => "gmail.com",
    :user_name => Rails.application.secrets.GMAIL_USERNAME,
    :password => Rails.application.secrets.GMAIL_PASSWORD,
    :authentication => :plain,
    :enable_starttls_auto => true
}
