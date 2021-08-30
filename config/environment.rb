# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.mailgun.org'
  :port => '587',
  :authentication => :plain,
  :user_name => Rails.application.credentials.mailgun[:username],
  :password => Rails.application.credentials.mailgun[:password],
  :domain => 'http://roshan-photo-app.herokuapp.com',
}
ActionMailer::Base.delivery_method = :smtp
