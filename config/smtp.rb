SMTP_SETTINGS = {
  :address        => "smtp.sendgrid.net",
  :port           => "587",
  :authentication => :plain,
  :user_name      => ENV.fetch('SENDGRID_USERNAME'),
  :password       => ENV.fetch('SENDGRID_PASSWORD'),
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
