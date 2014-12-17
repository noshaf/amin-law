# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AminLaw::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'app32610714@heroku.com',
  :password       => 'ck23kzfd',
  :domain         => 'anlegalfirm.herokuapp.com',
  :enable_starttls_auto => true
}
